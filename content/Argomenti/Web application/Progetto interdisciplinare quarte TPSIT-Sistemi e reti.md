# Progetto interdisciplinare
## Analizzatore intelligente di configurazioni IP
---
## contesto
Il progetto coinvolge due classi quarte:
- **TPSIT** → sviluppo software (webapp client-side in JavaScript)
- **Sistemi e Reti** → definizione del modello tecnico di rete e delle regole di validazione
L’obiettivo è realizzare uno strumento che analizzi configurazioni IP e ne valuti la correttezza.
---
## obiettivo del progetto
Realizzare una **webapp client-side (solo HTML, CSS, JavaScript)** che:
- analizzi una configurazione IP
- calcoli i parametri di rete
- individui errori e criticità
- spieghi i problemi in modo tecnico
- confronti due host e stabilisca se possono comunicare
---
## prodotto finale richiesto
Una webapp funzionante che includa:
### 1) Analisi singolo host
Input:
- indirizzo IP
- subnet (CIDR o netmask)
- gateway
Output:
- network address
- broadcast address
- intervallo host
- numero host disponibili
- errori e warning
- spiegazione tecnica
---
### 2) Confronto tra due host
La webapp deve stabilire:
- se i due host sono nella stessa subnet
- se possono comunicare direttamente
- se serve un gateway
- se la comunicazione è logicamente possibile
Con spiegazione del risultato.
---
### 3) Report finale
Per ogni analisi:
- riepilogo configurazione
- elenco errori (con categoria e gravità)
- spiegazione
- suggerimenti di correzione
- giudizio complessivo
---
## vincoli tecnici obbligatori (TPSIT)
### Architettura
Il codice deve essere strutturato in modo modulare:
- separazione tra dati, logica e interfaccia
- nessun codice monolitico
---
### Programmazione funzionale (OBBLIGATORIA)
Devono essere utilizzati:
- `map`
- `filter`
- `reduce`
- funzioni di ordine superiore
- almeno una **closure significativa**
Esempio richiesto:
- pipeline di validazione basata su array di funzioni
---
### Motore di validazione
Le regole NON devono essere scritte con `if` annidati, ma come:
- insieme di funzioni indipendenti
- applicate in sequenza
Ogni validatore deve restituire:
- `null` (nessun errore)
- oppure un oggetto strutturato
---
### Struttura degli errori
Ogni errore deve includere:
- codice
- categoria (syntax, logical, design, communication)
- gravità (error, warning, info)
- messaggio
- spiegazione
- suggerimento
---
## compiti della classe TPSIT
- progettazione della struttura dati
- implementazione delle funzioni di calcolo IP
- sviluppo del motore di validazione
- implementazione del confronto tra host
- sviluppo interfaccia utente
- gestione input/output
- organizzazione modulare del codice
---
## compiti della classe Sistemi e Reti
La classe NON sviluppa codice, ma definisce il modello tecnico.
Deve produrre:
### 1) Regole di validazione
Per ogni regola:
- nome
- descrizione tecnica
- condizione di errore
- gravità
- spiegazione
- suggerimento
---
### 2) Casi di test
Almeno:
- 5 configurazioni corrette
- 5 con errori
- 5 casi di confronto tra host
---
### 3) Spiegazioni tecniche
Testi che la webapp utilizzerà per spiegare:
- subnetting
- gateway
- comunicazione tra host
---
## esempi di regole richieste
Minimo obbligatorio:
- IP non valido
- CIDR non valido
- netmask non valida
- IP = network address
- IP = broadcast address
- gateway non valido
- gateway fuori subnet
- gateway uguale all’host
- host in subnet diverse (per confronto)
---
## funzionalità opzionali (bonus)
- uso di netmask alternativa
- classificazione degli errori
- casi di test selezionabili
- salvataggio configurazioni
- visualizzazione percorso comunicazione
- esportazione JSON
---
## consegna finale
Ogni gruppo deve presentare:
- webapp funzionante
- breve documentazione (1 pagina)
- spiegazione del lavoro svolto
- dimostrazione di un caso corretto e uno errato
---
## vincolo fondamentale
> La webapp NON deve limitarsi a dire se una configurazione è corretta, ma deve spiegare il perché.
---
## obiettivo didattico
- applicare il subnetting in modo concreto
- sviluppare software strutturato
- usare programmazione funzionale in un contesto reale
- integrare competenze tra discipline diverse