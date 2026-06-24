# Registro elettronico settimanale

Realizzare un programma C che elabori i dati relativi alle firme nel registro elettronico di una classe durante una settimana.

Ogni giorno è caratterizzato da:

- giorno, mese e anno, in formato numerico;
- descrizione del giorno della settimana, in formato stringa (`lunedi`, `martedi`, ...);
- un array di sei elementi, associati alle ore della mattina, in cui `1` indica che la firma è presente e `0` che non è presente.

Il programma deve caricare i giorni di scuola di una settimana, di lunghezza variabile, e stampare nel `main`:

- il totale delle ore non firmate nell'intera settimana e il rapporto rispetto al totale delle ore previste;
- le informazioni di un giorno letto da tastiera (`lunedi`, `martedi`, ...) se presente nel registro.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`; devono invece restituire i dati necessari.

Sviluppare almeno le seguenti funzioni:

1. Riempire il registro, con un massimo di 5 giorni ma anche meno.
2. Calcolare quante ore non sono state firmate durante la settimana e la loro percentuale rispetto al totale previsto per la settimana inserita.
3. Fornire i dati del registro relativi a un giorno richiesto, se presente.

Per sperimentare più rapidamente le funzioni 2 e 3, è possibile inizializzare l'array di strutture con un pre-riempimento in fase di dichiarazione.

Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <string.h>

#define MAX_GIORNI 5
#define ORE_GIORNALIERE 6

typedef struct {
    int giorno, mese, anno;
    char settimana[10];
    int firme[ORE_GIORNALIERE];
} Giorno;

void riempiRegistro(Giorno v[], int *n) {
    do scanf("%d", n); while (*n < 0 || *n > MAX_GIORNI);
    for (int i = 0; i < *n; i++) {
        scanf("%d%d%d%9s", &v[i].giorno, &v[i].mese, &v[i].anno, v[i].settimana);
        for (int j = 0; j < ORE_GIORNALIERE; j++) scanf("%d", &v[i].firme[j]);
    }
}

int oreNonFirmate(const Giorno v[], int n, float *percentuale) {
    int nonFirmate = 0;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < ORE_GIORNALIERE; j++) if (v[i].firme[j] == 0) nonFirmate++;
    *percentuale = n == 0 ? 0 : 100.0f * nonFirmate / (n * ORE_GIORNALIERE);
    return nonFirmate;
}

int datiGiorno(const Giorno v[], int n, const char *nome, Giorno *risultato) {
    for (int i = 0; i < n; i++) if (strcmp(v[i].settimana, nome) == 0) {
        *risultato = v[i]; return 1;
    }
    return 0;
}

int main(void) {
    Giorno registro[MAX_GIORNI] = {{23, 6, 2026, "lunedi", {1, 1, 0, 1, 1, 0}}};
    float percentuale;
    int nonFirmate = oreNonFirmate(registro, 1, &percentuale);
    printf("Non firmate: %d (%.1f%%)\\n", nonFirmate, percentuale);
    return 0;
}
```
