## Il Mondo Digitale e il Ruolo dei Programmi

Ogni dispositivo elettronico che utilizziamo, dai computer agli smartphone, dai forni a microonde ai sistemi di navigazione, funziona grazie a **programmi informatici**. Un programma è un insieme di istruzioni che indica a un dispositivo cosa fare e come farlo.

Quando apriamo un'app di messaggistica, un software elabora il nostro messaggio e lo invia al destinatario. Quando giochiamo a un videogioco, un programma controlla la grafica, il punteggio e le interazioni tra i personaggi. Ogni azione che compiamo in un dispositivo digitale è gestita da uno o più programmi.

## Che cos'è un Programma?

Un **programma** è un insieme di istruzioni che un computer esegue per svolgere un determinato compito. Esso è il risultato della traduzione di un algoritmo in un linguaggio di programmazione.

### Differenza tra Algoritmo e Programma

- Un **algoritmo** è una sequenza di passi logici per risolvere un problema.
- Un **programma** è l'implementazione di un algoritmo in un linguaggio comprensibile dal computer.

### Esempi di Programmi nella Vita Quotidiana

I programmi informatici sono ovunque:

- **App di messaggistica**: WhatsApp, Telegram.
- **Giochi**: Minecraft, FIFA.
- **Software di gestione**: Word, Excel.
- **Sistemi operativi**: Windows, Linux, macOS.

Ogni programma è costruito seguendo una logica precisa, basata su algoritmi.

## Che cos'è un Algoritmo?

Un **algoritmo** è una sequenza di passi ben definiti e ordinati che permette di risolvere un problema o eseguire un compito. Possiamo pensarlo come una **ricetta di cucina**: ogni passaggio deve essere seguito nell'ordine corretto per ottenere il risultato desiderato.

### Esempio: Algoritmo di una Ricetta di Cucina

Immaginiamo di voler preparare una **torta al cioccolato**. Per farlo, seguiamo un procedimento preciso:

1. **Ingredienti necessari** (input):
    
    - 200g di farina
    - 100g di zucchero
    - 50g di cacao in polvere
    - 2 uova
    - 100ml di latte
    - 1 bustina di lievito
2. **Procedimento** (sequenza di istruzioni):
    
    - Prendere una ciotola grande.
    - Versare la farina, lo zucchero e il cacao nella ciotola.
    - Aggiungere le uova e mescolare.
    - Versare il latte lentamente e continuare a mescolare.
    - Aggiungere il lievito e amalgamare il tutto.
    - Versare il composto in una teglia da forno.
    - Cuocere in forno preriscaldato a 180°C per 30 minuti.
3. **Risultato** (output): una torta soffice e gustosa pronta da mangiare!
    

Questa ricetta segue lo schema di un algoritmo:

- Ha un **input** (gli ingredienti).
- Segue una **sequenza logica** di operazioni (la preparazione).
- Ha un **output** ben definito (la torta pronta).
- Se si segue ogni passaggio correttamente, il risultato sarà sempre lo stesso.

## Il Processo: Dal Problema al Programma

Per sviluppare un algoritmo efficace che diventi un programma funzionante, è necessario seguire un processo ben definito.

### 1. Problema

Identificare il problema da risolvere è il primo passo. È necessario capire esattamente cosa si vuole ottenere.

**Esempio:** Vogliamo creare un programma che calcoli la media di tre numeri inseriti dall'utente.

### 2. Analisi

In questa fase si analizzano i dati in ingresso e il risultato atteso. Bisogna stabilire quali informazioni sono necessarie per risolvere il problema.

**Esempio:**

- **Input**: Tre numeri.
- **Elaborazione**: Sommare i numeri e dividere il risultato per tre.
- **Output**: La media dei tre numeri.

### 3. Sviluppo dell'Algoritmo

A questo punto si scrive l'algoritmo che descrive passo dopo passo come risolvere il problema.

**Esempio in pseudocodice:**

```
Inizio
   Leggi numero1, numero2, numero3
   Somma ← numero1 + numero2 + numero3
   Media ← Somma / 3
   Scrivi Media
Fine
```

### 4. Simulazione

Prima di scrivere il codice, si può testare l'algoritmo manualmente per verificare che funzioni correttamente.

**Esempio:** Se inseriamo i numeri `5, 10, 15`, l'algoritmo esegue:

- `Somma = 5 + 10 + 15 = 30`
- `Media = 30 / 3 = 10` L'output sarà `10`, quindi l'algoritmo funziona.

### 5. Codifica

Ora si traduce l'algoritmo in un linguaggio di programmazione, ad esempio in Python:

```python
numero1 = float(input("Inserisci il primo numero: "))
numero2 = float(input("Inserisci il secondo numero: "))
numero3 = float(input("Inserisci il terzo numero: "))

somma = numero1 + numero2 + numero3
media = somma / 3

print("La media è:", media)
```

### 6. Programma Funzionante

Il risultato finale è un programma eseguibile che accetta tre numeri in input, calcola la media e la stampa.
## Variabili

Immagina di avere un **cassetto** in cui puoi mettere un oggetto. Quel cassetto ha un’etichetta con un nome, che mi deve dare idea di quale oggetto ci possa trovare dentro.

Puoi aprire il cassetto, mettere un oggetto dentro, cambiarlo ecc...

---

## Operazioni di base sulle variabili

### 1. Assegnazione di un valore

Metti un oggetto dentro il cassetto.

```cpp
string cassetto = "maglietta";  // Il cassetto ora contiene una maglietta
```

🔹 **Esempio pratico:** Apri il cassetto e metti dentro una **maglietta**.

Se poi vuoi cambiarlo:

```cpp
cassetto = "pantaloni";  // Ora il cassetto contiene pantaloni
```

🔹 **Hai tolto la maglietta e messo dei pantaloni al suo posto.**

---

### 2. Incremento (o decremento) di una variabile

Se il cassetto contiene qualcosa che può essere **aumentato o diminuito** (ad esempio, un numero di monete), possiamo modificarlo.

```cpp
int monete = 5;
monete = monete + 1;  // Ora il cassetto contiene 6 monete
monete = monete - 1;  // Ora il cassetto contiene 5 monete di nuovo
```

🔹 **Hai messo una moneta in più nel cassetto, poi ne hai tolta una.**

---

### 3. Modifica del valore di una variabile

Se vuoi cambiare cosa c'è dentro un cassetto, basta sostituire l’oggetto.

```cpp
string cassetto = "maglietta";
cassetto = "giacca";  // Ora il cassetto contiene una giacca
```

🔹 **Hai tolto la maglietta e ci hai messo una giacca.**

---
### 4. Assegnazione del valore di una variabile a un’altra

Prendi il contenuto di un cassetto e lo copi in un altro.

```cpp
string cassetto1 = "calzini";
string cassetto2 = cassetto1;  // Ora il secondo cassetto contiene anch'esso "calzini"
```

🔹 **Hai aperto un secondo cassetto e ci hai messo dentro gli stessi calzini che erano nel primo (entrambi ora contengono gli stessi calzini, magia).**

Se ora cambi il contenuto di `cassetto1`,  quello di `cassetto2` non cambia:

```cpp
cassetto1 = "cintura";  
// cassetto2 contiene ancora "calzini", perché abbiamo cambiato solo il primo cassetto.
```

---

### 5. Scambio di valore tra due variabili
#todo Funziona molto meglio l'esempio con due bicchieri, uno di acqua e uno di cola, viene evidente che per scambiarli ho bisogno del terzo bicchiere.

Hai due cassetti e vuoi scambiare il loro contenuto.

```cpp
string cassetto1 = "guanti";
string cassetto2 = "sciarpa";
string temp = cassetto1;  // Usiamo un cassetto temporaneo per salvare "guanti"
cassetto1 = cassetto2;    // Ora cassetto1 contiene "sciarpa"
cassetto2 = temp;         // Ora cassetto2 contiene "guanti"
```

🔹 **Hai preso i guanti dal primo cassetto, li hai messi in un cassetto di passaggio, poi hai messo la sciarpa nel primo cassetto e infine i guanti nel secondo.**

Oppure, senza usare un cassetto temporaneo (solo con numeri):

```cpp
int a = 5, b = 10;
a = a + b;  // a = 15
b = a - b;  // b = 5
a = a - b;  // a = 10
```

🔹 **Hai scambiato i numeri senza usare un cassetto di passaggio.**

