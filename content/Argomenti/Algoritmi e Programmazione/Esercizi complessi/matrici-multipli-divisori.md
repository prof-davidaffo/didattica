# Matrici: elementi corrispondenti multipli o divisori

Realizzare un programma C che, date due matrici di interi `matr1` e `matr2` di dimensioni `m × n` (massimo 30 righe e 15 colonne), determini la percentuale di elementi di `matr1` il cui elemento corrispondente in `matr2` è un multiplo oppure un divisore intero.

Due elementi sono corrispondenti quando occupano le stesse coordinate di riga e colonna nelle due matrici.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`, salvo quando richiesto esplicitamente.

Sviluppare almeno le seguenti funzioni:

1. Riempire due matrici, richiamando la stessa funzione per entrambe.
2. Calcolare quanti elementi corrispondenti, multipli o divisori, sono presenti nelle due matrici.
3. Stampare ordinatamente le due matrici affiancate.

Usare `srand(2)` per inizializzare la sequenza pseudocasuale.

Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <stdlib.h>

#define MAX_RIGHE 30
#define MAX_COLONNE 15

void riempiCasuale(int m[][MAX_COLONNE], int righe, int colonne) {
    for (int i = 0; i < righe; i++)
        for (int j = 0; j < colonne; j++) m[i][j] = 1 + rand() % 100;
}

int contaMultipliODivisori(const int a[][MAX_COLONNE], const int b[][MAX_COLONNE],
                           int righe, int colonne) {
    int conta = 0;
    for (int i = 0; i < righe; i++)
        for (int j = 0; j < colonne; j++)
            if (a[i][j] % b[i][j] == 0 || b[i][j] % a[i][j] == 0) conta++;
    return conta;
}

void stampaAffiancate(const int a[][MAX_COLONNE], const int b[][MAX_COLONNE], int r, int c) {
    for (int i = 0; i < r; i++) {
        for (int j = 0; j < c; j++) printf("%4d", a[i][j]);
        printf("     ");
        for (int j = 0; j < c; j++) printf("%4d", b[i][j]);
        putchar('\n');
    }
}

int main(void) {
    int matr1[MAX_RIGHE][MAX_COLONNE], matr2[MAX_RIGHE][MAX_COLONNE], m = 3, n = 4;
    srand(2); riempiCasuale(matr1, m, n); riempiCasuale(matr2, m, n);
    printf("Percentuale: %.2f%%\n", 100.0 * contaMultipliODivisori(matr1, matr2, m, n) / (m * n));
    stampaAffiancate(matr1, matr2, m, n);
    return 0;
}
```
