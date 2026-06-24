# Inventario di un negozio di informatica

Realizzare un programma C che gestisca l'inventario dei prodotti di un negozio di informatica.

Ogni prodotto è descritto da:

- `id`: codice intero univoco del prodotto;
- `nome`: nome del prodotto, massimo 30 caratteri validi;
- `prezzo`: prezzo di vendita in euro, con al massimo due decimali;
- `quantita`: numero di pezzi disponibili in magazzino.

È possibile memorizzare al massimo 500 prodotti in un array. I nomi delle informazioni devono essere esattamente quelli indicati e nello stesso ordine.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`, salvo quando richiesto esplicitamente.

Sviluppare le seguenti funzioni:

1. Modificare il nome di un prodotto con un nuovo nome. La funzione restituisce `1` se la sostituzione riesce, `0` se il prodotto non è presente oppure se il nuovo nome è troppo lungo.
2. Applicare uno sconto a un prodotto individuato dal nome e aggiornare il prezzo. Lo sconto è un valore reale compreso tra 0 e 1, estremi esclusi. Il nuovo prezzo è: `prezzo - prezzo * sconto`. Possono esistere più prodotti con lo stesso nome.
3. Modificare la quantità di un prodotto individuato dall'`id`, incrementandola o decrementandola con un valore fornito.
4. Cercare, a partire da una posizione iniziale, la posizione di un prodotto individuato dal nome. La funzione restituisce `0` se il nome non viene trovato, `1` altrimenti.
5. Aggiungere prodotti all'inventario, anche a partire da una posizione diversa dalla prima.

Per velocizzare la sperimentazione è possibile inizializzare l'array con un pre-riempimento in fase di dichiarazione.

Il `main` deve testare tutte le funzioni, con inizializzazioni e stampe necessarie a verificarne il comportamento. Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <string.h>

#define MAX_PRODOTTI 500
#define MAX_NOME 30

typedef struct {
    int id;
    char nome[MAX_NOME + 1];
    float prezzo;
    int quantita;
} Prodotto;

int cambiaNome(Prodotto v[], int n, int id, const char *nuovoNome) {
    if (strlen(nuovoNome) > MAX_NOME) return 0;
    for (int i = 0; i < n; i++) if (v[i].id == id) {
        strcpy(v[i].nome, nuovoNome); return 1;
    }
    return 0;
}

int applicaSconto(Prodotto v[], int n, const char *nome, float sconto) {
    int modificati = 0;
    if (sconto <= 0 || sconto >= 1) return 0;
    for (int i = 0; i < n; i++) if (strcmp(v[i].nome, nome) == 0) {
        v[i].prezzo *= 1 - sconto; modificati++;
    }
    return modificati;
}

int modificaQuantita(Prodotto v[], int n, int id, int variazione) {
    for (int i = 0; i < n; i++) if (v[i].id == id && v[i].quantita + variazione >= 0) {
        v[i].quantita += variazione; return 1;
    }
    return 0;
}

int cercaDa(const Prodotto v[], int n, const char *nome, int inizio, int *posizione) {
    for (int i = inizio; i < n; i++) if (strcmp(v[i].nome, nome) == 0) {
        *posizione = i; return 1;
    }
    return 0;
}

int aggiungi(Prodotto v[], int *n, int posizione, Prodotto nuovi[], int quanti) {
    if (posizione < 0 || posizione > *n || *n + quanti > MAX_PRODOTTI) return 0;
    for (int i = *n - 1; i >= posizione; i--) v[i + quanti] = v[i];
    for (int i = 0; i < quanti; i++) v[posizione + i] = nuovi[i];
    *n += quanti; return 1;
}

int main(void) {
    Prodotto inventario[MAX_PRODOTTI] = {{1, "mouse", 19.90f, 12}, {2, "tastiera", 45.00f, 8}};
    int n = 2, posizione;
    applicaSconto(inventario, n, "mouse", .10f);
    cambiaNome(inventario, n, 2, "tastiera-meccanica");
    if (cercaDa(inventario, n, "mouse", 0, &posizione)) printf("Trovato in %d\\n", posizione);
    return 0;
}
```
