## Misurazioni di glucosio

Il file `misure.txt` contiene una sequenza non ordinata di misurazioni della concentrazione di glucosio nel sangue. Ogni riga ha il formato:

```text
identificatore_soggetto valore_glucosio
```

Il numero di misurazioni non è noto a priori. Per ogni soggetto sono presenti più misurazioni, e il loro numero può variare tra soggetti.

## Requisiti

1. Definire una `struct Soggetto` contenente l'identificatore e l'elenco delle misurazioni. Usare un `vector` per l'elenco delle misurazioni.
2. Definire una funzione che legga il file e memorizzi i dati in un elenco dinamico di soggetti.
3. Definire una funzione di stampa nel formato:

   ```text
   Id: 51 Glucosio: 100, 82, 70, 85, 79,
   ```

4. Definire una funzione che ordini **in-place** le misurazioni di ciascun soggetto.
5. Definire una funzione che crei due elenchi di soggetti:
   - **inclusi**: valore mediano del glucosio strettamente compreso tra `70` e `100`;
   - **esclusi**: valore mediano fuori da tali limiti.

   La mediana di un elenco ordinato è l'elemento centrale per una lunghezza dispari, oppure la media dei due elementi centrali per una lunghezza pari. Se non si implementa l'ordinamento, è ammesso usare la media al posto della mediana.
6. Definire una funzione che ordini un elenco di soggetti per identificatore.

## Main

1. Leggere `misure.txt` in un `vector` di soggetti.
2. Creare gli elenchi di inclusi ed esclusi.
3. Ordinare e stampare l'elenco degli esclusi: per identificatore e per misurazioni.

## Limitazioni

- Per i `vector` si possono usare solo `size`, `resize` e `push_back`.
- Implementare da zero ricerca e ordinamento; non usare `std::sort` né `std::swap`.

## Soluzione

```cpp
#include <fstream>
#include <iostream>
#include <vector>

struct Soggetto {
    int id;
    std::vector<double> misure;
};

int cercaSoggetto(const std::vector<Soggetto>& v, int id) {
    for (size_t i = 0; i < v.size(); ++i)
        if (v[i].id == id) return static_cast<int>(i);
    return -1;
}

bool leggiMisure(const char* nomeFile, std::vector<Soggetto>& soggetti) {
    std::ifstream file(nomeFile);
    if (!file) return false;
    int id; double valore;
    while (file >> id >> valore) {
        int i = cercaSoggetto(soggetti, id);
        if (i == -1) { Soggetto s; s.id = id; soggetti.push_back(s); i = soggetti.size() - 1; }
        soggetti[i].misure.push_back(valore);
    }
    return true;
}

void stampa(const std::vector<Soggetto>& v) {
    for (size_t i = 0; i < v.size(); ++i) {
        std::cout << "Id: " << v[i].id << " Glucosio: ";
        for (size_t j = 0; j < v[i].misure.size(); ++j) std::cout << v[i].misure[j] << ", ";
        std::cout << '\n';
    }
}

void ordinaMisure(Soggetto& s) {
    for (size_t i = 0; i < s.misure.size(); ++i)
        for (size_t j = 0; j + 1 < s.misure.size() - i; ++j)
            if (s.misure[j] > s.misure[j + 1]) {
                double temp = s.misure[j]; s.misure[j] = s.misure[j + 1]; s.misure[j + 1] = temp;
            }
}

double mediana(const Soggetto& s) {
    size_t n = s.misure.size();
    if (n % 2 != 0) return s.misure[n / 2];
    return (s.misure[n / 2 - 1] + s.misure[n / 2]) / 2.0;
}

void separa(std::vector<Soggetto>& tutti, std::vector<Soggetto>& inclusi,
            std::vector<Soggetto>& esclusi) {
    for (size_t i = 0; i < tutti.size(); ++i) {
        ordinaMisure(tutti[i]);
        if (mediana(tutti[i]) > 70 && mediana(tutti[i]) < 100) inclusi.push_back(tutti[i]);
        else esclusi.push_back(tutti[i]);
    }
}

void ordinaPerId(std::vector<Soggetto>& v) {
    for (size_t i = 0; i < v.size(); ++i)
        for (size_t j = 0; j + 1 < v.size() - i; ++j)
            if (v[j].id > v[j + 1].id) { Soggetto temp = v[j]; v[j] = v[j + 1]; v[j + 1] = temp; }
}

int main() {
    std::vector<Soggetto> tutti, inclusi, esclusi;
    if (!leggiMisure("misure.txt", tutti)) return 1;
    separa(tutti, inclusi, esclusi);
    ordinaPerId(esclusi);
    stampa(esclusi);
}
```
