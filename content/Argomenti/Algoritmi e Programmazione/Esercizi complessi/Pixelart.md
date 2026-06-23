## PixelArt

La PixelArt rappresenta disegni su matrici di dimensione variabile attraverso file di testo. Ogni sequenza è composta da coppie `N C`, dove `N` indica il numero di pixel adiacenti e `C` il simbolo da ripetere.

Realizzare un programma per gestire una versione semplificata di PixelArt, che usa caratteri anziché colori.

I file `drawing1.txt` e `drawing2.txt` contengono:

- nell'intestazione, il numero di righe e colonne dell'immagine (la matrice è quadrata);
- una sequenza di coppie `numero - simbolo` che codifica l'immagine.

La sequenza riempie la matrice per righe consecutive. Le righe del file non coincidono necessariamente con quelle della matrice: se una sequenza supera lo spazio residuo della riga corrente, prosegue dalla prima colonna della riga successiva.

Il simbolo `-` nel codice deve essere memorizzato come spazio (`' '`) nella matrice.

## Requisiti

1. Definire una `struct pixels` che rappresenti una coppia `numero` (`int`) e `simbolo` (`char`).
2. Memorizzare l'immagine in una matrice bidimensionale di `char`.
3. Memorizzare la sequenza di coppie in una struttura dati opportuna (array dinamico o `vector`).
4. Definire `init_table`, che inizializzi a spazio ogni elemento della matrice già allocata.
5. Definire `print_table`, che stampi la matrice.
6. Definire `fill_table`, che riceva matrice e sequenza di coppie e riempia l'immagine. La funzione deve verificare la consistenza dei dati, ad esempio che il totale dei pixel codificati coincida con il numero di elementi della matrice.

Per semplificare il riempimento si può effettuare una scansione lineare della matrice:

```cpp
row = i / width;
col = i % width;
```

## Main

Per ciascuno dei file forniti:

1. leggere l'intestazione e allocare la matrice di `char` delle dimensioni corrispondenti;
2. inizializzare la matrice con `init_table`;
3. leggere e memorizzare la sequenza di codici;
4. riempire la matrice con `fill_table`;
5. stampare l'immagine con `print_table`.

Gestire eventuali errori nella sequenza di codici.

## Soluzione

```cpp
#include <fstream>
#include <iostream>
#include <vector>

struct pixels { int numero; char simbolo; };

void init_table(std::vector<std::vector<char> >& tabella) {
    for (size_t r = 0; r < tabella.size(); ++r)
        for (size_t c = 0; c < tabella[r].size(); ++c) tabella[r][c] = ' ';
}

void print_table(const std::vector<std::vector<char> >& tabella) {
    for (size_t r = 0; r < tabella.size(); ++r) {
        for (size_t c = 0; c < tabella[r].size(); ++c) std::cout << tabella[r][c];
        std::cout << '\n';
    }
}

bool fill_table(std::vector<std::vector<char> >& tabella, const std::vector<pixels>& codici) {
    if (tabella.empty() || tabella[0].empty()) return false;
    int colonne = tabella[0].size(), posizione = 0;
    int capacita = tabella.size() * colonne;
    for (size_t k = 0; k < codici.size(); ++k) {
        if (codici[k].numero < 0 || posizione + codici[k].numero > capacita) return false;
        char simbolo = codici[k].simbolo == '-' ? ' ' : codici[k].simbolo;
        for (int n = 0; n < codici[k].numero; ++n, ++posizione)
            tabella[posizione / colonne][posizione % colonne] = simbolo;
    }
    return posizione == capacita;
}

bool leggiDisegno(const char* nomeFile) {
    std::ifstream file(nomeFile);
    int righe, colonne;
    if (!file || !(file >> righe >> colonne) || righe <= 0 || colonne <= 0) return false;
    std::vector<std::vector<char> > tabella(righe, std::vector<char>(colonne));
    std::vector<pixels> codici;
    pixels p;
    while (file >> p.numero >> p.simbolo) codici.push_back(p);
    init_table(tabella);
    if (!fill_table(tabella, codici)) { std::cerr << "Codifica non valida in " << nomeFile << '\n'; return false; }
    print_table(tabella);
    return true;
}

int main() {
    bool ok1 = leggiDisegno("drawing1.txt");
    bool ok2 = leggiDisegno("drawing2.txt");
    return ok1 && ok2 ? 0 : 1;
}
```
