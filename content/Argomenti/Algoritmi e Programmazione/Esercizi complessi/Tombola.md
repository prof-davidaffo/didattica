## Tombola

Realizzare un programma che simuli il gioco della tombola. Il file `cartella.txt` contiene i numeri e la struttura di una cartella.

Durante il gioco vengono estratti numeri da 1 a 90 senza ripetizioni. Se un numero estratto è presente nella cartella, viene segnato.

Le vincite, ciascuna valida una sola volta, sono:

- ambo: 2 numeri segnati sulla stessa riga;
- terno: 3 numeri segnati sulla stessa riga;
- quaterna: 4 numeri segnati sulla stessa riga;
- cinquina: 5 numeri segnati sulla stessa riga;
- tombola: tutti i numeri della cartella segnati.

Il gioco prosegue dopo ogni vincita per verificare la successiva.

Si suggerisce di usare:

- una matrice `int` `3x5` per la cartella, con `0` nelle caselle vuote;
- una matrice `bool` `3x5` per indicare i numeri segnati;
- un array `bool` di 90 elementi per i numeri estratti.

## Requisiti

1. `initCartella`: inizializza la cartella dai dati del file.
2. `stampaCartella`: stampa la cartella, indicando con un segno (ad esempio `X`) i numeri estratti presenti.
3. `trovaNumero`: verifica se il numero ricevuto è nella cartella e, se presente, imposta a `true` l'elemento corrispondente di `segnati`.
4. `estraiNumero`: estrae pseudo-casualmente un numero tramite `rand()`; verifica che non sia già stato estratto e aggiorna l'array `estratti`.

   ```cpp
   int x = 1 + rand() % MAXN; // MAXN = 90
   ```

5. `contaTrovatiRiga`: restituisce il numero di elementi segnati nella riga ricevuta.
6. `contaTrovatiCartella`: restituisce il numero totale di elementi segnati nella cartella.
7. `controllaPremi`: ricevuti cartella, matrice dei trovati e le variabili necessarie ai risultati, verifica ambo, terno, quaterna, cinquina e tombola.
8. Testare opportunamente le funzioni nel `main`, lasciando visibile il codice dei test.

## Limitazioni

- Implementare da zero le funzioni di ricerca e le altre funzioni necessarie.
- Non usare funzioni di libreria per la ricerca.

## Soluzione

```cpp
#include <cstdlib>
#include <ctime>
#include <fstream>
#include <iostream>

const int RIGHE = 3, COLONNE = 5, MAXN = 90;

bool initCartella(const char* nomeFile, int cartella[RIGHE][COLONNE]) {
    std::ifstream file(nomeFile);
    if (!file) return false;
    for (int r = 0; r < RIGHE; ++r)
        for (int c = 0; c < COLONNE; ++c)
            if (!(file >> cartella[r][c])) return false;
    return true;
}

void stampaCartella(int cartella[RIGHE][COLONNE], bool segnati[RIGHE][COLONNE]) {
    for (int r = 0; r < RIGHE; ++r) {
        for (int c = 0; c < COLONNE; ++c)
            if (cartella[r][c] == 0) std::cout << "   ";
            else if (segnati[r][c]) std::cout << " X ";
            else std::cout << ' ' << cartella[r][c] << ' ';
        std::cout << '\n';
    }
}

bool trovaNumero(int cartella[RIGHE][COLONNE], bool segnati[RIGHE][COLONNE], int numero) {
    for (int r = 0; r < RIGHE; ++r)
        for (int c = 0; c < COLONNE; ++c)
            if (cartella[r][c] == numero) { segnati[r][c] = true; return true; }
    return false;
}

int estraiNumero(bool estratti[MAXN]) {
    int x;
    do x = 1 + rand() % MAXN; while (estratti[x - 1]);
    estratti[x - 1] = true;
    return x;
}

int contaTrovatiRiga(bool segnati[RIGHE][COLONNE], int riga) {
    int totale = 0;
    for (int c = 0; c < COLONNE; ++c) if (segnati[riga][c]) ++totale;
    return totale;
}

int contaTrovatiCartella(bool segnati[RIGHE][COLONNE]) {
    int totale = 0;
    for (int r = 0; r < RIGHE; ++r) totale += contaTrovatiRiga(segnati, r);
    return totale;
}

void controllaPremi(bool segnati[RIGHE][COLONNE], int numeriCartella,
                   bool& ambo, bool& terno, bool& quaterna, bool& cinquina, bool& tombola) {
    for (int r = 0; r < RIGHE; ++r) {
        int n = contaTrovatiRiga(segnati, r);
        if (n >= 2) ambo = true;
        if (n >= 3) terno = true;
        if (n >= 4) quaterna = true;
        if (n >= 5) cinquina = true;
    }
    if (contaTrovatiCartella(segnati) == numeriCartella) tombola = true;
}

int main() {
    int cartella[RIGHE][COLONNE]; bool segnati[RIGHE][COLONNE] = {}, estratti[MAXN] = {};
    if (!initCartella("cartella.txt", cartella)) return 1;
    int numeriCartella = 0;
    for (int r = 0; r < RIGHE; ++r) for (int c = 0; c < COLONNE; ++c) if (cartella[r][c] != 0) ++numeriCartella;
    bool ambo = false, terno = false, quaterna = false, cinquina = false, tombola = false;
    srand(static_cast<unsigned>(time(0)));
    while (!tombola) {
        int n = estraiNumero(estratti);
        trovaNumero(cartella, segnati, n);
        bool primaAmbo = ambo, primaTerno = terno, primaQuaterna = quaterna, primaCinquina = cinquina;
        controllaPremi(segnati, numeriCartella, ambo, terno, quaterna, cinquina, tombola);
        if (ambo && !primaAmbo) std::cout << "Ambo con il numero " << n << '\n';
        if (terno && !primaTerno) std::cout << "Terno con il numero " << n << '\n';
        if (quaterna && !primaQuaterna) std::cout << "Quaterna con il numero " << n << '\n';
        if (cinquina && !primaCinquina) std::cout << "Cinquina con il numero " << n << '\n';
    }
    std::cout << "Tombola!\n"; stampaCartella(cartella, segnati);
}
```
