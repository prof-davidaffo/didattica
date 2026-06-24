# Monitoraggio dei server

Realizzare un programma C per monitorare i server di un piccolo datacenter aziendale.

Ogni server è definito da:

- `hostName`: nome del server, massimo 25 caratteri validi;
- `caricoCPU`: percentuale di utilizzo della CPU, compresa tra 0 e 1 inclusi, con un decimale;
- `ramLibera`: memoria libera espressa in GB, con due decimali;
- `IDServer`: codice intero univoco del server.

È possibile monitorare al massimo 10 server in un array. I nomi delle informazioni devono essere esattamente quelli indicati e nello stesso ordine.

Usare funzioni adeguate e il passaggio di parametri per favorire il riuso del codice. Le funzioni non devono effettuare stampe con `printf`, salvo quando richiesto esplicitamente.

Sviluppare le seguenti funzioni:

1. Ottimizzare il consumo di RAM di un server individuato da `hostName`, modificando `ramLibera` di una percentuale fornita. Esempio: con `ramLibera = 4,5 GB` e ottimizzazione del 10%, il valore finale è `4,05 GB`.
2. Modificare il `caricoCPU` di un server individuato da `IDServer`, sostituendo il valore precedente con quello fornito.
3. Verificare l'eventuale sovraccarico di un server individuato da `hostName`, controllando se `caricoCPU` supera l'85%. La funzione restituisce `1` se il nome non viene trovato e `0` se viene trovato.
4. Modificare il nome di un server con un nuovo nome, a partire da una posizione fornita. La funzione restituisce `0` se la sostituzione riesce e `1` in caso contrario, ad esempio se il server non è presente o il nuovo nome è troppo lungo. In presenza di più nomi uguali, modificare solo la prima occorrenza.
5. Aggiungere server al monitoraggio, anche a partire da una posizione diversa dalla prima.

Per sperimentare e testare più rapidamente le funzioni, è possibile inizializzare l'array con un pre-riempimento in fase di dichiarazione.

Il `main` deve testare tutte le funzioni, con inizializzazioni e stampe necessarie a verificarne il comportamento. Lasciare commentate eventuali righe di codice usate temporaneamente durante lo sviluppo.

## Soluzione in C

```c
#include <stdio.h>
#include <string.h>

#define MAX_SERVER 10
#define MAX_HOST 25

typedef struct {
    char hostName[MAX_HOST + 1];
    float caricoCPU;
    float ramLibera;
    int IDServer;
} Server;

int ottimizzaRAM(Server v[], int n, const char *host, float percentuale) {
    if (percentuale <= 0 || percentuale >= 1) return 0;
    for (int i = 0; i < n; i++) if (strcmp(v[i].hostName, host) == 0) {
        v[i].ramLibera *= 1 - percentuale; return 1;
    }
    return 0;
}

int modificaCPU(Server v[], int n, int id, float carico) {
    if (carico < 0 || carico > 1) return 0;
    for (int i = 0; i < n; i++) if (v[i].IDServer == id) {
        v[i].caricoCPU = carico; return 1;
    }
    return 0;
}

/* Restituisce 1 se il server esiste; sovraccarico viene impostato a 0 o 1. */
int verificaSovraccarico(const Server v[], int n, const char *host, int *sovraccarico) {
    for (int i = 0; i < n; i++) if (strcmp(v[i].hostName, host) == 0) {
        *sovraccarico = v[i].caricoCPU > .85f; return 1;
    }
    return 0;
}

int cambiaNome(Server v[], int n, int inizio, const char *vecchio, const char *nuovo) {
    if (strlen(nuovo) > MAX_HOST) return 1;
    for (int i = inizio; i < n; i++) if (strcmp(v[i].hostName, vecchio) == 0) {
        strcpy(v[i].hostName, nuovo); return 0;
    }
    return 1;
}

int aggiungi(Server v[], int *n, int posizione, Server nuovi[], int quanti) {
    if (posizione < 0 || posizione > *n || *n + quanti > MAX_SERVER) return 0;
    for (int i = *n - 1; i >= posizione; i--) v[i + quanti] = v[i];
    for (int i = 0; i < quanti; i++) v[posizione + i] = nuovi[i];
    *n += quanti; return 1;
}

int main(void) {
    Server server[MAX_SERVER] = {{"web-01", .90f, 4.5f, 1}, {"db-01", .50f, 8.0f, 2}};
    int sovraccarico;
    ottimizzaRAM(server, 2, "web-01", .10f);
    if (verificaSovraccarico(server, 2, "web-01", &sovraccarico))
        printf("Sovraccarico: %d\\n", sovraccarico);
    return 0;
}
```
