# Confronto tra due vettori di stringhe

Realizzare un programma C che memorizzi due insiemi di stringhe, `arStrA` e `arStrB`.

Le stringhe hanno lunghezza massima di 30 caratteri alfanumerici validi e vengono lette da tastiera. I vettori hanno dimensioni massime differenti, rispettivamente `MAXA` e `MAXB`; il numero di stringhe effettivamente memorizzate è `narStrA` e `narStrB`.

Il programma deve cercare e contare quante stringhe di `arStrB` sono presenti in `arStrA`, quindi concatenare le due stringhe identiche, quando possibile.

Esempio: se la terza stringa di `arStrA` è `ciao` e la quinta di `arStrB` è anch'essa `ciao`, la terza stringa di `arStrA` deve diventare `ciaociao`.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`, salvo quando richiesto esplicitamente.

Sviluppare almeno le seguenti funzioni:

1. Riempire un vettore di stringhe; la funzione deve essere richiamata due volte nel `main` con parametri diversi.
2. Calcolare quante stringhe di `arStrB` sono presenti in `arStrA` e, quando trovate identiche, concatenarle alla relativa stringa di `arStrA`.
3. Trovare la prima posizione di una stringa fornita sia in `arStrA` sia in `arStrB`. La funzione restituisce `0` se la stringa non è presente in entrambi gli array e `1` se è presente in entrambi.

Per sperimentare più rapidamente le funzioni 2 e 3, è possibile inizializzare i due array con un pre-riempimento in fase di dichiarazione.

Il `main` deve testare le funzioni. Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <string.h>

#define MAXA 30
#define MAXB 30
#define LUNGHEZZA 30

void riempi(char v[][2 * LUNGHEZZA + 1], int n) {
    for (int i = 0; i < n; i++) scanf("%30s", v[i]);
}

int concatenaComuni(char a[][2 * LUNGHEZZA + 1], int na,
                    const char b[][2 * LUNGHEZZA + 1], int nb) {
    int trovate = 0;
    for (int j = 0; j < nb; j++)
        for (int i = 0; i < na; i++)
            if (strcmp(a[i], b[j]) == 0) {
                strcat(a[i], b[j]);
                trovate++;
                break;
            }
    return trovate;
}

int primaPosizioneInEntrambi(const char a[][2 * LUNGHEZZA + 1], int na,
                             const char b[][2 * LUNGHEZZA + 1], int nb,
                             const char *s, int *posA, int *posB) {
    *posA = *posB = -1;
    for (int i = 0; i < na; i++) if (strcmp(a[i], s) == 0) { *posA = i; break; }
    for (int i = 0; i < nb; i++) if (strcmp(b[i], s) == 0) { *posB = i; break; }
    return *posA != -1 && *posB != -1;
}

int main(void) {
    char a[MAXA][2 * LUNGHEZZA + 1] = {"uno", "ciao", "tre"};
    char b[MAXB][2 * LUNGHEZZA + 1] = {"due", "ciao"};
    printf("Corrispondenze: %d\n", concatenaComuni(a, 3, b, 2));
    for (int i = 0; i < 3; i++) printf("%s\n", a[i]);
    return 0;
}
```
