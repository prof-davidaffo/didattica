La normalizzazione è un processo fondamentale nella progettazione di database relazionali. L'obiettivo principale è organizzare i dati in modo che siano efficienti, evitando ridondanze e garantendo l'integrità dei dati. La normalizzazione suddivide le tabelle più grandi in tabelle più piccole e stabilisce relazioni tra di esse per ridurre la duplicazione dei dati.
### Principali Forme Normali

Il processo di normalizzazione avviene in diverse fasi, ognuna delle quali porta il database a una "forma normale". Ecco le principali forme normali:

1. **Prima Forma Normale (1NF):**
   - **Criterio**: Una tabella è in 1NF se tutti i suoi attributi contengono solo valori atomici, ovvero non divisibili. Inoltre, ogni riga della tabella deve essere univocamente identificabile da una chiave primaria.
   - **Obiettivo**: Eliminare i gruppi di ripetizione all'interno delle righe. Ogni colonna deve contenere un singolo valore, non un elenco di valori.
   - **Esempio**: Supponiamo di avere una tabella "Ordini" con una colonna "Prodotti" che contiene una lista di prodotti (e.g., "Prodotto1, Prodotto2"). Per portare questa tabella in 1NF, si dovrebbe dividere la riga in più righe, ciascuna con un singolo prodotto.

2. **Seconda Forma Normale (2NF):**
   - **Criterio**: Una tabella è in 2NF se soddisfa i requisiti della 1NF e tutti gli attributi non chiave dipendono funzionalmente dall'intera chiave primaria, non da una parte di essa (questo è rilevante per chiavi primarie composte).
   - **Obiettivo**: Eliminare la dipendenza parziale dagli attributi chiave. Ogni attributo non chiave deve dipendere dall'intera chiave primaria.
   - **Esempio**: Se una tabella "Ordini" ha una chiave primaria composta da "ID_Ordine" e "ID_Prodotto", ma la colonna "NomeCliente" dipende solo da "ID_Ordine", allora bisogna creare una nuova tabella per separare le dipendenze, spostando "NomeCliente" in una tabella separata con "ID_Ordine" come chiave primaria.

3. **Terza Forma Normale (3NF):**
   - **Criterio**: Una tabella è in 3NF se soddisfa i requisiti della 2NF e nessun attributo non chiave dipende da un altro attributo non chiave (ossia, non ci devono essere dipendenze transitive).
   - **Obiettivo**: Eliminare le dipendenze transitive, dove un attributo non chiave dipende da un altro attributo non chiave.
   - **Esempio**: Se nella tabella "Clienti" c'è una colonna "Città" e una colonna "CAP", dove "CAP" dipende da "Città" e non dalla chiave primaria, bisognerebbe creare una tabella separata per le città e i loro CAP.

### Forme Normali Avanzate

4. **Boyce-Codd Normal Form (BCNF):**
   - **Criterio**: Una tabella è in BCNF se ogni determinante è una chiave candidata. Questa è una versione più rigorosa della 3NF.
   - **Obiettivo**: Risolvere alcune anomalie residue non gestite dalla 3NF.

5. **Quarta Forma Normale (4NF):**
   - **Criterio**: Una tabella è in 4NF se soddisfa i requisiti della BCNF e non contiene dipendenze multivalore. 
   - **Obiettivo**: Evitare che un attributo dipenda da una combinazione di altri attributi.

6. **Quinta Forma Normale (5NF):**
   - **Criterio**: Una tabella è in 5NF se ogni join in quella tabella può essere suddiviso in join più piccoli senza perdere dati.
   - **Obiettivo**: Assicurare che non ci siano informazioni ridondanti o dipendenze più complesse che non possono essere espresse come semplici relazioni.

### Vantaggi della Normalizzazione
- **Riduzione della ridondanza**: Evita di memorizzare le stesse informazioni in più luoghi, il che riduce le dimensioni del database e i costi di manutenzione.
- **Eliminazione delle anomalie**: Prevenire anomalie di inserimento, aggiornamento e cancellazione.
- **Integrità dei dati**: Migliora l'integrità e la coerenza dei dati, poiché ogni informazione viene memorizzata una sola volta.

### Svantaggi della Normalizzazione
- **Prestazioni**: In alcuni casi, un database completamente normalizzato può comportare più join nelle query, il che può ridurre le prestazioni. Per questo motivo, in alcuni contesti si utilizza una denormalizzazione controllata.
- **Complessità**: La struttura del database può diventare più complessa e più difficile da comprendere, specialmente quando si lavora con forme normali più avanzate.

### Quando Considerare la Denormalizzazione
In alcune situazioni, può essere utile denormalizzare (intenzionalmente aggiungere ridondanza) per migliorare le prestazioni delle query. Questo è comune nei data warehouse, dove la velocità di lettura è spesso più importante della riduzione della ridondanza.