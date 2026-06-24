# Trasformazione di matrici di numeri reali

Realizzare un programma C che, date due matrici di `float`, `matr1` e `matr2`, contenenti valori compresi tra `-100,1` e `200,3` inclusi, ne trasformi il contenuto.

Le matrici hanno dimensioni operative `m × n`, con un massimo di 15 righe e 8 colonne.

La trasformazione deve:

- diminuire tutti i valori minori di zero;
- sottrarre 20 ai valori positivi, senza scendere sotto lo zero.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`, salvo quando richiesto esplicitamente.

Sviluppare almeno le seguenti funzioni:

1. Riempire casualmente una matrice.
2. Trasformare una matrice secondo la richiesta.
3. Stampare ordinatamente il contenuto di una matrice.

Usare `srand(1)` per inizializzare la sequenza pseudocasuale.

Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <stdlib.h>

#define MAX_RIGHE 15
#define MAX_COLONNE 8

void riempiCasuale(float m[][MAX_COLONNE], int righe, int colonne) {
    for (int i = 0; i < righe; i++)
        for (int j = 0; j < colonne; j++)
            m[i][j] = -100.1f + (3004.0f * rand() / RAND_MAX) / 10.0f;
}

void trasforma(float m[][MAX_COLONNE], int righe, int colonne) {
    for (int i = 0; i < righe; i++)
        for (int j = 0; j < colonne; j++)
            if (m[i][j] < 0) m[i][j]--;          /* diminuisce di 1 */
            else { m[i][j] -= 20; if (m[i][j] < 0) m[i][j] = 0; }
}

void stampa(const float m[][MAX_COLONNE], int righe, int colonne) {
    for (int i = 0; i < righe; i++) {
        for (int j = 0; j < colonne; j++) printf("%8.2f ", m[i][j]);
        putchar('\n');
    }
}

int main(void) {
    float matr1[MAX_RIGHE][MAX_COLONNE], matr2[MAX_RIGHE][MAX_COLONNE];
    int m = 3, n = 4;
    srand(1);
    riempiCasuale(matr1, m, n); riempiCasuale(matr2, m, n);
    trasforma(matr1, m, n); trasforma(matr2, m, n);
    stampa(matr1, m, n);
    return 0;
}
```
