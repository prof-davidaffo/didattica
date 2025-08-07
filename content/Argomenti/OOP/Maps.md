[Map and HashMap in Java - Full Tutorial](https://www.youtube.com/watch?v=H62Jfv1DJlU)
## Che cos’è una Map in Java?
In Java, una **Map** è una struttura dati che associa una **chiave** (key) a un **valore** (value).
- Ogni chiave è **unica** (non puoi avere due chiavi uguali).
- Ogni chiave può avere associato **un solo valore**.
- È molto utile per cercare velocemente un valore conoscendo la sua chiave.
L’interfaccia principale è `java.util.Map`, e le implementazioni più usate sono:
- `HashMap` – Non mantiene l’ordine degli elementi.
- `LinkedHashMap` – Mantiene l’ordine di inserimento.
- `TreeMap` – Ordina le chiavi in modo naturale (o con un comparatore).
## Metodi fondamentali di `HashMap<K, V>`
| **Metodo**                                       | **Descrizione**                                                                                                |
| ------------------------------------------------ | -------------------------------------------------------------------------------------------------------------- |
| `V put(K key, V value)`                          | Inserisce o aggiorna l’associazione chiave → valore. Restituisce il valore precedente (o `null` se non c’era). |
| `V get(Object key)`                              | Restituisce il valore associato alla chiave, oppure `null` se la chiave non esiste.                            |
| `V remove(Object key)`                           | Rimuove l’entry associata alla chiave. Restituisce il valore rimosso o `null` se non c’era.                    |
| `boolean containsKey(Object key)`                | Ritorna `true` se la mappa contiene la chiave indicata.                                                        |
| `boolean containsValue(Object value)`            | Ritorna `true` se la mappa contiene almeno una chiave associata a quel valore.                                 |
| `int size()`                                     | Numero di coppie chiave-valore presenti.                                                                       |
| `boolean isEmpty()`                              | Ritorna `true` se la mappa è vuota.                                                                            |
| `void clear()`                                   | Rimuove tutte le coppie.                                                                                       |
| `Set<K> keySet()`                                | Ritorna un `Set` con tutte le chiavi presenti nella mappa.                                                     |
| `Collection<V> values()`                         | Ritorna una collezione con tutti i valori.                                                                     |
| `Set<Map.Entry<K, V>> entrySet()`                | Ritorna un set di entry (coppie chiave-valore) che puoi iterare.                                               |
| `V putIfAbsent(K key, V value)`                  | Inserisce la coppia solo se la chiave non è già presente.                                                      |
| `V replace(K key, V value)`                      | Sostituisce il valore associato alla chiave solo se la chiave è presente.                                      |
| `boolean replace(K key, V oldValue, V newValue)` | Sostituisce il valore solo se la chiave è presente e mappata al valore vecchio.                                |
## Esempio: inventario prodotti

Immagina di avere un piccolo sistema di gestione di un inventario dove ogni prodotto ha un **codice univoco** (ad esempio il codice a barre o un SKU) e un oggetto `Product` che contiene i dettagli del prodotto.  
In questo caso, la `Map` associa **codice prodotto → prodotto**.

Ecco un esempio:

```java
import java.util.HashMap;
import java.util.Map;

// Classe che rappresenta un prodotto
class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    @Override
    public String toString() {
        return name + " - Prezzo: " + price + "€ - Quantità: " + quantity;
    }
}

public class InventoryExample {
    public static void main(String[] args) {
        // Mappa: codice prodotto -> oggetto Product
        Map<String, Product> inventory = new HashMap<>();

        // Inseriamo dei prodotti
        inventory.put("A123", new Product("Mouse Wireless", 19.99, 50));
        inventory.put("B456", new Product("Tastiera Meccanica", 79.90, 20));
        inventory.put("C789", new Product("Monitor 24 pollici", 149.00, 15));

        // Recuperiamo un prodotto conoscendo il codice
        Product p = inventory.get("B456");
        if (p != null) {
            System.out.println("Prodotto trovato: " + p);
        }

        // Controlliamo se un codice è presente
        if (inventory.containsKey("C789")) {
            System.out.println("Il prodotto C789 è disponibile.");
        }

        // Iteriamo su tutti i prodotti
        System.out.println("\nInventario completo:");
        for (Map.Entry<String, Product> entry : inventory.entrySet()) {
            String code = entry.getKey();
            Product prod = entry.getValue();
            System.out.println(code + " => " + prod);
        }

        // Rimuoviamo un prodotto esaurito
        inventory.remove("A123");
        System.out.println("\nInventario dopo la rimozione:");
        for (Map.Entry<String, Product> entry : inventory.entrySet()) {
            System.out.println(entry.getKey() + " => " + entry.getValue());
        }
    }
}
```

- La **chiave** (`String`) è un identificativo univoco di prodotto.
- Il **valore** è un oggetto che contiene più informazioni.
- È un uso tipico delle `Map`: lookup rapido di un'entità a partire dal suo identificativo.
## 📝 Esercizio – Gestione di un catalogo di libri con HashMap
### 🎯 Obiettivo
Imparare a:
* Dichiarare e usare una `HashMap`
* Inserire, cercare e rimuovere elementi
* Iterare su chiavi e valori
---
### 📚 Descrizione consegna
Scrivi un programma Java che gestisca un catalogo di libri. Ogni libro è identificato da un codice ISBN (String) univoco. Ogni ISBN è associato al titolo del libro.
Il programma deve:
1. Creare una `HashMap<String, String>` dove:
   * **chiave**: ISBN del libro
   * **valore**: titolo del libro
2. Inserire almeno **5 libri** nella mappa.
3. Stampare il contenuto del catalogo (tutte le coppie ISBN → Titolo).
4. Chiedere all’utente di inserire un ISBN da tastiera e:
   * Se l’ISBN esiste, stampare il titolo corrispondente.
   * Se non esiste, stampare un messaggio di errore.
5. Rimuovere un libro dato il suo ISBN.
6. Stampare di nuovo l’elenco aggiornato dei libri.