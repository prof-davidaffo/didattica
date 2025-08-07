# Fila A
## Codice
```c
#include <stdio.h>
#include <string.h>

#define MAX_ITEMS 100

typedef struct {
    int id;
    char name[50];
    int quantity;
    float price;
} Item;

Item inventory[MAX_ITEMS];
int itemCount = 0;

void addItem(int id, char *name, int quantity, float price) {
    if (itemCount >= MAX_ITEMS) {
        printf("Inventory full.\n");
        return;
    }
    inventory[itemCount].id = id;
    strcpy(inventory[itemCount].name, name);
    inventory[itemCount].quantity = quantity;
    inventory[itemCount].price = price;
    itemCount++;
}

void listInventory() {
    for (int i = 0; i < itemCount; i++) {
        printf("ID: %d, Name: %s, Quantity: %d, Price: $%.2f\n", inventory[i].id, inventory[i].name, inventory[i].quantity, inventory[i].price);
    }
}

void addStockById(int id, int quantityToAdd) {
    for (int i = 0; i < itemCount; i++) {
        if (inventory[i].id == id) {
            inventory[i].quantity += quantityToAdd;
            return;
        }
    }
    printf("Item not found.\n");
}

void findMostExpensiveItem() {
    // bubble sort
    for (int i = 0; i < itemCount - 1; i++) {
        for (int j = 0; j < itemCount - i - 1; j++) {
            if (inventory[j].price > inventory[j + 1].price) {
                // Scambio di elementi
                Item temp = inventory[j];
                inventory[j] = inventory[j + 1];
                inventory[j + 1] = temp;
            }
        }
    }
    
    // Dopo l'ordinamento, l'ultimo elemento sarà il più costoso
    if (itemCount > 0) {
        printf("Il prodotto più costoso è: %s, Prezzo: $%.2f\n", inventory[itemCount - 1].name, inventory[itemCount - 1].price);
    } else {
        printf("L'inventario è vuoto.\n");
    }
}

void checkInventoryIntegrity() {
    int supposedItemCount = 0;
    for (int i = 0; i < MAX_ITEMS; i++) {
        if (inventory[i].id != 0) supposedItemCount++;
    }
    
    if (supposedItemCount == itemCount) {
        printf("L'integrità dell'inventario sembra corretta.\n");
    } else {
        printf("Potrebbero esserci degli errori nell'inventario.\n");
    }
}


void removeStockById(int id, int quantityToRemove) {
    for (int i = 0; i < itemCount; i++) {
        if (inventory[i].id == id) {
            if (inventory[i].quantity >= quantityToRemove) {
                inventory[i].quantity -= quantityToRemove;
                return;
            } else {
                printf("Not enough stock to remove.\n");
                return;
            }
        }
    }
    printf("Item not found.\n");
}

void discountAllItems() {
    for (int i = 0; i < itemCount; i++) {
        inventory[i].price = inventory[i].price * 0.9;
    }
}

int main() {
    addItem(1, "Item1", 20, 10.99);
    addItem(2, "Item2", 30, 15.49);
    addItem(3, "Item3", 45, 20.30);
    addItem(4, "Item4", 5, 4.59);
    addStockById(1, 10);
    removeStockById(2, 5);
    discountAllItems();
    listInventory();
    findMostExpensiveItem();
    return 0;
}
```
## Refactoring
```c
#include <stdio.h>
#include <string.h>

#define MAX_ITEMS 100
#define DISCOUNT_RATE 0.9

typedef struct {
    int id;
    char name[50];
    int quantity;
    float price;
} Item;

Item inventory[MAX_ITEMS];
int itemCount = 0;

void addItem(int id, char *name, int quantity, float price) {
    if (itemCount >= MAX_ITEMS) {
        printf("Inventory full.\n");
        return;
    }
    inventory[itemCount].id = id;
    strcpy(inventory[itemCount].name, name);
    inventory[itemCount].quantity = quantity;
    inventory[itemCount].price = price;
    itemCount++;
}

void listInventory() {
    for (int i = 0; i < itemCount; i++) {
        printf("ID: %d, Name: %s, Quantity: %d, Price: $%.2f\n", inventory[i].id, inventory[i].name, inventory[i].quantity, inventory[i].price);
    }
}

Item* findItemById(int id) {
    for (int i = 0; i < itemCount; i++) {
        if (inventory[i].id == id) {
            return &inventory[i];
        }
    }
    return NULL;
}

void addStockById(int id, int quantityToAdd) {
    Item* item = findItemById(id);
    if (item != NULL) {
        item->quantity += quantityToAdd;
    } else {
        printf("Item not found.\n");
    }
}

void removeStockById(int id, int quantityToRemove) {
    Item* item = findItemById(id);
    if (item != NULL) {
        if (item->quantity >= quantityToRemove) {
            item->quantity -= quantityToRemove;
        } else {
            printf("Not enough stock to remove.\n");
        }
    } else {
        printf("Item not found.\n");
    }
}

void discountAllItems() {
    for (int i = 0; i < itemCount; i++) {
        inventory[i].price *= DISCOUNT_RATE;
    }
}

void findMostExpensiveItem() {
    if (itemCount == 0) {
        printf("L'inventario è vuoto.\n");
        return;
    }

    Item* mostExpensiveItem = &inventory[0];
    for (int i = 1; i < itemCount; i++) {
        if (inventory[i].price > mostExpensiveItem->price) {
            mostExpensiveItem = &inventory[i];
        }
    }

    printf("Il prodotto più costoso è: %s, Prezzo: $%.2f\n", mostExpensiveItem->name, mostExpensiveItem->price);
}

int main() {
    addItem(1, "Item1", 20, 10.99);
    addItem(2, "Item2", 30, 15.49);
    addItem(3, "Item3", 45, 20.30);
    addItem(4, "Item4", 5, 4.59);
    addStockById(1, 10);
    removeStockById(2, 5);
    discountAllItems();
    listInventory();
    findMostExpensiveItem();
    return 0;
}
```
Per fare il refactoring del codice del magazzino che hai fornito, seguirò alcuni passaggi per migliorare la qualità del codice riducendo i code smells identificati, come la duplicazione del codice e l'uso di numeri magici. Ecco un approccio passo dopo passo:

### 1. Rimozione della Duplicazione del Codice

Il codice contiene diverse funzioni che iterano sull'array `inventory` per trovare un elemento basato su un certo criterio, come `addStockById` e `removeStockById`. Queste operazioni possono essere astratte in una funzione di utilità.

#### Funzione di Utilità per Trovare un Item

```c
Item* findItemById(int id) {
    for (int i = 0; i < itemCount; i++) {
        if (inventory[i].id == id) {
            return &inventory[i];
        }
    }
    return NULL; // Ritorna NULL se l'item non viene trovato
}
```

Utilizziamo questa funzione nelle operazioni `addStockById` e `removeStockById` per ridurre la duplicazione del codice:

```c
void addStockById(int id, int quantityToAdd) {
    Item* item = findItemById(id);
    if (item != NULL) {
        item->quantity += quantityToAdd;
    } else {
        printf("Item not found.\n");
    }
}

void removeStockById(int id, int quantityToRemove) {
    Item* item = findItemById(id);
    if (item != NULL) {
        if (item->quantity >= quantityToRemove) {
            item->quantity -= quantityToRemove;
        } else {
            printf("Not enough stock to remove.\n");
        }
    } else {
        printf("Item not found.\n");
    }
}
```

### 2. Eliminazione dei Numeri Magici

I numeri magici nel codice originale, come il `0.9` nella funzione `discountAllItems`, rendono il codice meno leggibile e più difficile da mantenere. È consigliabile sostituirli con costanti nominate.

```c
#define DISCOUNT_RATE 0.9

void discountAllItems() {
    for (int i = 0; i < itemCount; i++) {
        inventory[i].price *= DISCOUNT_RATE;
    }
}
```

### 3. Miglioramento dell'Algoritmo di Ordinamento

Nella funzione `findMostExpensiveItem`, l'uso del bubble sort per ordinare l'intero inventario solo per trovare l'elemento più costoso è inefficiente. Possiamo invece trovare l'elemento più costoso in un solo passaggio, senza ordinare l'array.

```c
void findMostExpensiveItem() {
    if (itemCount == 0) {
        printf("L'inventario è vuoto.\n");
        return;
    }

    Item* mostExpensiveItem = &inventory[0];
    for (int i = 1; i < itemCount; i++) {
        if (inventory[i].price > mostExpensiveItem->price) {
            mostExpensiveItem = &inventory[i];
        }
    }

    printf("Il prodotto più costoso è: %s, Prezzo: $%.2f\n", mostExpensiveItem->name, mostExpensiveItem->price);
}
```

Questi passaggi di refactoring mirano a migliorare la leggibilità, la manutenibilità e l'efficienza del codice. Sostituendo la duplicazione del codice con funzioni di utilità, eliminando i numeri magici e ottimizzando algoritmi inefficienti, rendiamo il codice più chiaro e facile da modificare in futuro.
# Fila B
## Codice
```c
#include <stdio.h>
#include <string.h>

#define MAX_ROOMS 50

typedef struct {
    int roomNumber;
    char guestName[100];
    int nights;
    float pricePerNight;
} HotelRoom;

HotelRoom hotelRooms[MAX_ROOMS];
int roomCount = 0;

void bookRoom(int roomNumber, char *guestName, int nights, float pricePerNight) {
    if (roomCount >= MAX_ROOMS) {
        printf("Hotel is fully booked.\n");
        return;
    }
    hotelRooms[roomCount].roomNumber = roomNumber;
    strcpy(hotelRooms[roomCount].guestName, guestName);
    hotelRooms[roomCount].nights = nights;
    hotelRooms[roomCount].pricePerNight = pricePerNight;
    roomCount++;
}

void listBookings() {
    for (int i = 0; i < roomCount; i++) {
        printf("Room Number: %d, Guest: %s, Nights: %d, Price per Night: $%.2f\n",
               hotelRooms[i].roomNumber, hotelRooms[i].guestName, hotelRooms[i].nights, hotelRooms[i].pricePerNight);
    }
}

void addDaysToReservation(int roomNumber, int daysToAdd) {
    for (int i = 0; i < roomCount; i++) {
        if (hotelRooms[i].roomNumber == roomNumber) {
            hotelRooms[i].nights += daysToAdd;
            printf("Reservation extended for Room %d by %d days.\n", roomNumber, daysToAdd);
            return;
        }
    }
    printf("Room not found.\n");
}

void removeDaysFromReservation(int roomNumber, int daysToRemove) {
    for (int i = 0; i < roomCount; i++) {
        if (hotelRooms[i].roomNumber == roomNumber) {
            if (hotelRooms[i].nights >= daysToRemove) {
                hotelRooms[i].nights -= daysToRemove;
                printf("Reservation reduced for Room %d by %d days.\n", roomNumber, daysToRemove);
                return;
            } else {
                printf("Cannot reduce reservation by %d days, not enough booked days.\n", daysToRemove);
                return;
            }
        }
    }
    printf("Room not found.\n");
}

void findHighestRevenueRoom() {
    // Utilizzo di un semplice algoritmo di ordinamento
    for (int i = 0; i < roomCount - 1; i++) {
        for (int j = 0; j < roomCount - i - 1; j++) {
            if ((hotelRooms[j].pricePerNight * hotelRooms[j].nights) > (hotelRooms[j + 1].pricePerNight * hotelRooms[j + 1].nights)) {
                // Scambio di elementi
                HotelRoom temp = hotelRooms[j];
                hotelRooms[j] = hotelRooms[j + 1];
                hotelRooms[j + 1] = temp;
            }
        }
    }
    
    // L'ultimo elemento dopo l'ordinamento genererà il maggior reddito
    if (roomCount > 0) {
        printf("La camera con il maggiore reddito è: %d, Totale reddito: $%.2f\n",
               hotelRooms[roomCount - 1].roomNumber, hotelRooms[roomCount - 1].nights * hotelRooms[roomCount - 1].pricePerNight);
    } else {
        printf("Nessuna prenotazione effettuata.\n");
    }
}

void checkHotelOccupancy() {
    int supposedRoomCount = 0;
    for (int i = 0; i < MAX_ROOMS; i++) {
        if (hotelRooms[i].roomNumber != 0) supposedRoomCount++;
    }
    
    if (supposedRoomCount == roomCount) {
        printf("L'occupazione dell'albergo sembra corretta.\n");
    } else {
        printf("Potrebbero esserci degli errori nelle prenotazioni.\n");
    }
}

void applyDiscount() {
    for (int i = 0; i < roomCount; i++) {
        hotelRooms[i].pricePerNight = hotelRooms[i].pricePerNight * 0.85; // 15% discount
    }
}

int main() {
    bookRoom(101, "John Doe", 3, 100.0);
    bookRoom(102, "Jane Smith", 2, 80.5);
    bookRoom(103, "Jim Brown", 5, 120.0);
    addDaysToReservation(101, 2);
    removeDaysFromReservation(103, 1);
    applyDiscount();
    listBookings();
    findHighestRevenueRoom();
    return 0;
}

```
## Refactoring
```c
#include <stdio.h>
#include <string.h>

#define MAX_ROOMS 50
#define DISCOUNT_RATE 0.85 // Sostituzione del numero magico per il tasso di sconto

typedef struct {
    int roomNumber;
    char guestName[100];
    int nights;
    float pricePerNight;
} HotelRoom;

HotelRoom hotelRooms[MAX_ROOMS];
int roomCount = 0;

// Funzione generica per cercare una stanza per numero e ritornare l'indice nell'array
int findRoomIndex(int roomNumber) {
    for (int i = 0; i < roomCount; i++) {
        if (hotelRooms[i].roomNumber == roomNumber) {
            return i;
        }
    }
    return -1; // Indica che la stanza non è stata trovata
}

void bookRoom(int roomNumber, char *guestName, int nights, float pricePerNight) {
    if (roomCount >= MAX_ROOMS) {
        printf("Hotel is fully booked.\n");
        return;
    }
    hotelRooms[roomCount] = (HotelRoom){roomNumber, "", nights, pricePerNight};
    strcpy(hotelRooms[roomCount].guestName, guestName);
    roomCount++;
}

void listBookings() {
    for (int i = 0; i < roomCount; i++) {
        printf("Room Number: %d, Guest: %s, Nights: %d, Price per Night: $%.2f\n",
               hotelRooms[i].roomNumber, hotelRooms[i].guestName, hotelRooms[i].nights, hotelRooms[i].pricePerNight);
    }
}

void modifyStay(int roomNumber, int nightsChange) {
    int index = findRoomIndex(roomNumber);
    if (index == -1) {
        printf("Room not found.\n");
        return;
    }
    
    // Aggiornamento delle notti con controllo per evitare valori negativi
    if (nightsChange < 0 && hotelRooms[index].nights < -nightsChange) {
        printf("Cannot reduce nights below zero.\n");
    } else {
        hotelRooms[index].nights += nightsChange;
        if (nightsChange > 0) {
            printf("Stay extended for Room %d.\n", roomNumber);
        } else {
            printf("Stay reduced for Room %d.\n", roomNumber);
        }
    }
}

void applyDiscount() {
    for (int i = 0; i < roomCount; i++) {
        hotelRooms[i].pricePerNight *= DISCOUNT_RATE;
    }
}

int main() {
    bookRoom(101, "John Doe", 3, 100.0);
    bookRoom(102, "Jane Smith", 2, 80.5);
    bookRoom(103, "Jim Brown", 5, 120.0);
    modifyStay(101, 2); // Estende il soggiorno
    modifyStay(102, -1); // Riduce il soggiorno
    applyDiscount(); // Applica uno sconto a tutte le camere
    listBookings();
    return 0;
}

```
Per rifattorizzare il codice dell'albergo che ho proposto in precedenza, seguiremo un processo simile a quello del magazzino per affrontare i code smells identificati, come la duplicazione del codice e l'uso di numeri magici. Ecco come possiamo procedere:

### 1. Rimozione della Duplicazione del Codice

Nel codice dell'albergo, le funzioni `addDaysToReservation` e `removeDaysFromReservation` presentano una logica simile per cercare una prenotazione basata sul numero della stanza. Possiamo astrarre questa ricerca in una funzione di utilità.

#### Funzione di Utilità per Trovare una Prenotazione

```c
HotelRoom* findRoomByNumber(int roomNumber) {
    for (int i = 0; i < roomCount; i++) {
        if (hotelRooms[i].roomNumber == roomNumber) {
            return &hotelRooms[i];
        }
    }
    return NULL; // Ritorna NULL se la stanza non viene trovata
}
```

Riusiamo questa funzione in `addDaysToReservation` e `removeDaysFromReservation` per ridurre la duplicazione del codice:

```c
void modifyReservationDays(int roomNumber, int days, char operation) {
    HotelRoom* room = findRoomByNumber(roomNumber);
    if (room != NULL) {
        if (operation == 'a') {
            room->nights += days;
        } else if (operation == 'r' && room->nights >= days) {
            room->nights -= days;
        } else {
            printf("Cannot modify reservation as requested.\n");
        }
    } else {
        printf("Room not found.\n");
    }
}
```

### 2. Eliminazione dei Numeri Magici

Similmente al caso del magazzino, definire costanti per i numeri magici nel codice dell'albergo, come il tasso di sconto nella funzione `applyDiscount`, migliora la leggibilità e la manutenibilità.

```c
#define DISCOUNT_RATE 0.85

void applyDiscount() {
    for (int i = 0; i < roomCount; i++) {
        hotelRooms[i].pricePerNight *= DISCOUNT_RATE;
    }
}
```

### 3. Ottimizzazione delle Funzioni di Ricerca e Report

Come nel caso del magazzino, l'algoritmo per trovare la stanza che genera il maggior reddito può essere semplificato evitando il sorting dell'intero array.

```c
void findHighestRevenueRoom() {
    if (roomCount == 0) {
        printf("Nessuna prenotazione effettuata.\n");
        return;
    }

    HotelRoom* highestRevenueRoom = &hotelRooms[0];
    float highestRevenue = highestRevenueRoom->nights * highestRevenueRoom->pricePerNight;
    
    for (int i = 1; i < roomCount; i++) {
        float currentRevenue = hotelRooms[i].nights * hotelRooms[i].pricePerNight;
        if (currentRevenue > highestRevenue) {
            highestRevenueRoom = &hotelRooms[i];
            highestRevenue = currentRevenue;
        }
    }

    printf("La camera con il maggiore reddito è: %d, Totale reddito: $%.2f\n",
           highestRevenueRoom->roomNumber, highestRevenue);
}
```

### 4. Astrazione e Riutilizzo del Codice

L'astrazione della logica di modifica delle prenotazioni (come mostrato nella funzione `modifyReservationDays`) e l'utilizzo di costanti per i valori hard-coded migliorano significativamente il codice. Questi cambiamenti non solo rendono il codice più pulito e più facile da leggere ma anche facilitano la manutenzione e l'aggiunta di nuove funzionalità in futuro.

Questo approccio di refactoring mira a risolvere i code smells identificati migliorando la qualità generale del codice attraverso la riduzione della duplicazione, l'eliminazione dei numeri magici, e l'ottimizzazione di algoritmi inefficienti. Con queste modifiche, il codice diventa più modulare, più leggibile e più facile da estendere o modificare.