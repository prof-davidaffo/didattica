# Stringhe duplicate in un vettore

Realizzare un programma C che memorizzi `nStr` stringhe, lunghe al massimo 25 caratteri alfanumerici validi, in un vettore `arStr` di dimensione massima `MAXARSTR`.

Le stringhe devono essere lette da tastiera. Il programma deve individuare e contare le stringhe duplicate nell'array; ogni occorrenza successiva alla prima deve essere modificata aggiungendo il suffisso `-Copia`.

Esempio: se la terza e la sesta stringa sono entrambe `ciao`, la sesta deve diventare `ciao-Copia`.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`, salvo quando richiesto esplicitamente.

Sviluppare almeno le seguenti funzioni:

1. Riempire un vettore di stringhe.
2. Calcolare quante stringhe duplicate sono presenti in `arStr` e modificare le occorrenze successive alla prima aggiungendo `-Copia`.
3. Cercare una stringa nel vettore `arStr`. La funzione restituisce `0` se la stringa non è presente e `1` se è presente almeno una volta.

Per sperimentare più rapidamente le funzioni 2 e 3, è possibile inizializzare l'array con un pre-riempimento in fase di dichiarazione.

Il `main` deve testare le funzioni. Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <string.h>

#define MAXARSTR 50
#define LUNGHEZZA 25

void riempi(char v[][LUNGHEZZA + 7], int n) {
    for (int i = 0; i < n; i++) scanf("%25s", v[i]);
}

int esiste(const char v[][LUNGHEZZA + 7], int n, const char *s) {
    for (int i = 0; i < n; i++) if (strcmp(v[i], s) == 0) return 1;
    return 0;
}

int marcaDuplicate(char v[][LUNGHEZZA + 7], int n) {
    int duplicate = 0;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < i; j++)
            if (strcmp(v[i], v[j]) == 0) {
                strcat(v[i], "-Copia");
                duplicate++;
                break;
            }
    return duplicate;
}

int main(void) {
    char arStr[MAXARSTR][LUNGHEZZA + 7] = {"ciao", "sole", "ciao", "mare", "sole"};
    int nStr = 5;
    printf("Duplicate: %d\\n", marcaDuplicate(arStr, nStr));
    for (int i = 0; i < nStr; i++) printf("%s\\n", arStr[i]);
    return 0;
}
```
