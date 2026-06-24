# Presenze degli istruttori in palestra

Realizzare un programma C che elabori al massimo 50 presenze di istruttori in una palestra.

Ogni presenza è caratterizzata da:

- giorno, mese, anno, ora di inizio e ora di fine, tutti in formato numerico intero; si assume che l'ora di inizio sia sempre minore dell'ora di fine;
- cognome dell'istruttore presente;
- specialità di cui si occupa.

Il programma deve caricare i dati dei giorni di attività della palestra e stampare nel `main`:

- il totale delle ore caricate per un dato giorno e il loro rapporto rispetto al totale delle presenze di tutti gli istruttori caricati;
- le informazioni sulle presenze di uno specifico istruttore letto da tastiera, se presenti nei dati caricati.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`; devono invece restituire i dati necessari.

Sviluppare almeno le seguenti funzioni:

1. Riempire il vettore delle presenze, fino a un massimo di 50 elementi.
2. Calcolare quante ore sono state caricate per una data (`giorno`, `mese`, `anno`) e la loro percentuale rispetto al totale delle ore di presenza caricate.
3. Fornire le informazioni sulle presenze di uno specifico istruttore, se presente nei dati caricati.

Per sperimentare più rapidamente le funzioni 2 e 3, è possibile inizializzare l'array di strutture con un pre-riempimento in fase di dichiarazione.

Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <string.h>

#define MAX_PRESENZE 50
#define MAX_TESTO 30

typedef struct {
    int giorno, mese, anno;
    int oraInizio, oraFine;
    char cognome[MAX_TESTO + 1];
    char specialita[MAX_TESTO + 1];
} Presenza;

void riempiPresenze(Presenza v[], int *n) {
    do scanf("%d", n); while (*n < 0 || *n > MAX_PRESENZE);
    for (int i = 0; i < *n; i++)
        scanf("%d%d%d%d%d%30s%30s", &v[i].giorno, &v[i].mese, &v[i].anno,
              &v[i].oraInizio, &v[i].oraFine, v[i].cognome, v[i].specialita);
}

int orePerData(const Presenza v[], int n, int giorno, int mese, int anno,
               float *percentuale) {
    int oreData = 0, oreTotali = 0;
    for (int i = 0; i < n; i++) {
        int durata = v[i].oraFine - v[i].oraInizio;
        oreTotali += durata;
        if (v[i].giorno == giorno && v[i].mese == mese && v[i].anno == anno) oreData += durata;
    }
    *percentuale = oreTotali == 0 ? 0 : 100.0f * oreData / oreTotali;
    return oreData;
}

int presenzeIstruttore(const Presenza v[], int n, const char *cognome,
                       Presenza risultato[], int capienza) {
    int trovate = 0;
    for (int i = 0; i < n; i++) if (strcmp(v[i].cognome, cognome) == 0) {
        if (trovate < capienza) risultato[trovate] = v[i];
        trovate++;
    }
    return trovate;
}

int main(void) {
    Presenza presenze[MAX_PRESENZE] = {
        {23, 6, 2026, 9, 13, "Rossi", "cardio"},
        {23, 6, 2026, 14, 17, "Bianchi", "yoga"}
    };
    float percentuale;
    int ore = orePerData(presenze, 2, 23, 6, 2026, &percentuale);
    printf("Ore: %d (%.1f%%)\\n", ore, percentuale);
    return 0;
}
```
