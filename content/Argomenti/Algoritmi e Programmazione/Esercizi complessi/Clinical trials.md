## Clinical trials

Il file `data.txt` contiene un elenco di sperimentazioni cliniche, una per riga. Per ogni trial sono presenti:

- identificatore intero progressivo e univoco;
- patologia (`CP`, `MS`, `amputees`, `stroke`, `SLA`);
- centro clinico;
- numero intero di soggetti arruolati;
- data di inizio, compresa tra `1/1/2024` e `31/12/2025`.

Il numero di trial non è noto a priori; le righe non sono ordinate e ciascun trial compare una sola volta.

## Requisiti

1. Definire una `struct data` con giorno, mese e anno.
2. Definire una `struct trial` con tutti i dati del file, includendo una `struct data` per la data di inizio.
3. Definire una funzione che legga il file e memorizzi i trial in una struttura dinamica (consigliato `vector`).
4. Definire una funzione di stampa che mostri identificatore, patologia, centro clinico e numero di soggetti arruolati.
5. Definire una funzione che, dati la struttura e una patologia, restituisca l'indice del trial di quella patologia con il maggior numero di soggetti arruolati.
6. Dividere l'intervallo temporale in tre batch:
   - B1: dal `1/1/2024` al `30/6/2024`;
   - B2: dal `1/7/2024` al `31/12/2024`;
   - B3: dal `1/1/2025` al `31/12/2025`.

   Definire una funzione che, data una `struct data`, restituisca il batch di appartenenza oppure `-1` se la data è fuori intervallo.
7. Definire una funzione che, dati la struttura e un batch, restituisca il numero di trial previsti in quel batch.
8. Definire una funzione che ordini la struttura per numero di soggetti arruolati in ordine decrescente.

## Main

1. Leggere `data.txt` e memorizzare i trial.
2. Stampare i dati inseriti.
3. Per ciascuna delle cinque patologie, stampare il trial con più soggetti arruolati.
4. Stampare il numero di trial nei batch B1, B2 e B3.
5. Ordinare i trial per numero di soggetti arruolati e stamparli nuovamente.

## Soluzione

```cpp
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

struct data { int giorno, mese, anno; };
struct trial {
    int id, soggetti;
    std::string patologia, centro;
    data inizio;
};

bool leggiTrial(const std::string& nomeFile, std::vector<trial>& v) {
    std::ifstream file(nomeFile);
    if (!file) return false;
    trial t; char barra1, barra2;
    while (file >> t.id >> t.patologia >> t.centro >> t.soggetti
                >> t.inizio.giorno >> barra1 >> t.inizio.mese >> barra2 >> t.inizio.anno)
        v.push_back(t);
    return true;
}

void stampa(const std::vector<trial>& v) {
    for (size_t i = 0; i < v.size(); ++i)
        std::cout << v[i].id << "  " << v[i].patologia << "  " << v[i].centro
                  << "  " << v[i].soggetti << '\n';
}

int indiceMassimoPatologia(const std::vector<trial>& v, const std::string& patologia) {
    int indice = -1;
    for (size_t i = 0; i < v.size(); ++i)
        if (v[i].patologia == patologia &&
            (indice == -1 || v[i].soggetti > v[indice].soggetti))
            indice = static_cast<int>(i);
    return indice;
}

int batch(data d) {
    if (d.anno == 2024 && d.mese >= 1 && d.mese <= 6) return 1;
    if (d.anno == 2024 && d.mese >= 7 && d.mese <= 12) return 2;
    if (d.anno == 2025 && d.mese >= 1 && d.mese <= 12) return 3;
    return -1;
}

int contaBatch(const std::vector<trial>& v, int b) {
    int totale = 0;
    for (size_t i = 0; i < v.size(); ++i)
        if (batch(v[i].inizio) == b) ++totale;
    return totale;
}

void ordinaPerSoggetti(std::vector<trial>& v) {
    for (size_t i = 0; i < v.size(); ++i)
        for (size_t j = 0; j + 1 < v.size() - i; ++j)
            if (v[j].soggetti < v[j + 1].soggetti) {
                trial temp = v[j]; v[j] = v[j + 1]; v[j + 1] = temp;
            }
}

int main() {
    std::vector<trial> trial; 
    if (!leggiTrial("data.txt", trial)) return 1;
    stampa(trial);
    const std::string patologie[] = {"CP", "MS", "amputees", "stroke", "SLA"};
    for (int i = 0; i < 5; ++i) {
        int indice = indiceMassimoPatologia(trial, patologie[i]);
        if (indice != -1) std::cout << "Massimo " << patologie[i] << ": " << trial[indice].id << '\n';
    }
    for (int b = 1; b <= 3; ++b) std::cout << "B" << b << ": " << contaBatch(trial, b) << '\n';
    ordinaPerSoggetti(trial);
    stampa(trial);
}
```
