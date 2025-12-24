## Creazione della Pivot Table
Apri il file **Car Inventory**.
Questo file contiene una tabella di dati “normale”: ogni riga rappresenta **una singola auto**, ogni colonna una **caratteristica dell’auto** (marca, modello, colore, chilometraggio, prezzo, costo).
Prima di fare qualsiasi cosa, fermati un attimo a **guardare i dati**:
* non ci sono formule
* non ci sono totali
* sono solo dati grezzi, uno per riga
L’obiettivo della pivot table è **non modificare questi dati**, ma usarli per rispondere a domande.
Clicca su **una qualunque cella** all’interno della tabella.
Non selezionare tutto manualmente.
Inserisci una **Pivot Table** scegliendo di crearla in **un nuovo foglio**.
Excel propone automaticamente l’intervallo corretto: lascialo così e conferma.
Hai appena creato una pivot table **vuota**.

---
## Primo contatto con la Pivot Table
Ora ti trovi in un nuovo foglio.
A sinistra vedi una tabella vuota:
qui compariranno i risultati dell’analisi.
A destra vedi:
* l’elenco dei campi (Make, Model, Color, Price, Cost, ecc.)
* quattro aree: **Filtri, Righe, Colonne, Valori**
Per ora **non cercare di capire i numeri**.
L’unica cosa importante da capire è questa:
-  **la pivot table funziona trascinando i campi**
- ogni trascinamento cambia il modo in cui i dati vengono organizzati
Non puoi “rompere” nulla: se non ti piace il risultato, puoi sempre cambiare.

---
## Analisi per Make (marca)
Trascina il campo **Make** nell’area **Righe**.
Guarda subito la tabella che compare, senza aggiungere altro.
Excel ha fatto questo:
* ha preso tutte le righe
* ha messo insieme quelle con la **stessa marca**
* ha creato un elenco delle marche presenti
Non hai filtrato nulla.
Non hai cancellato nulla.
Hai solo chiesto:

> “Mostrami i dati raggruppati per marca”.

Fermati un attimo e leggi i nomi delle marche.

---
## Analisi per Make e Model
Senza togliere **Make**, trascina anche **Model** nell’area **Righe**, sotto Make.
Ora osserva bene cosa succede.
Ogni marca contiene al suo interno i modelli corrispondenti.
Si è creata una **gerarchia**:
* prima la marca
* sotto, i modelli
Usa i pulsanti di espansione e compressione:
* comprimi tutto
* poi riespandi
Questo serve a passare da:
* una visione generale
  a
* una visione più dettagliata
senza cambiare dati.
---
## Aggiunta dei Color nelle Colonne
Ora trascina **Color** nell’area **Colonne**.
La struttura cambia di nuovo.
Prima avevi solo righe.
Ora hai:
* righe (marca e modello)
* colonne (colori)
La pivot table sta **incrociando le informazioni**.
Non cercare ancora di interpretare i numeri.
Guarda solo **come è organizzata la tabella** rispetto a prima.

---
## Conteggio dei veicoli
Trascina il campo **Make** nell’area **Valori**.
Excel imposta automaticamente un **conteggio**.
Questo succede perché:
* Make è un testo
* Excel può solo contare quante volte compare
I numeri che vedi significano:
> quante auto ci sono per ogni combinazione di marca, modello e colore

Espandi e comprimi i gruppi per leggere meglio.

---
## Semplificazione della vista
Ora togli **Model** dall’area Righe.
Osserva come la tabella diventa più semplice.
Questo è un concetto importante:
* nelle pivot table **aggiungere e togliere campi è normale**
* non stai “annullando” il lavoro
* stai solo cambiando la domanda
La pivot table non è una cosa fissa: è uno strumento di esplorazione.
---
## Analisi del Profitto per Make
Ora cambiamo obiettivo.
Vogliamo capire **quanto potremmo guadagnare** per marca.
Lascia **Make** nelle Righe.
Rimuovi **Color** se è ancora presente.
Trascina **Price** nell’area Valori.
Excel mostra la **somma dei prezzi** per ogni marca:
* quanto potresti incassare vendendo tutte le auto di quella marca
Ora trascina anche **Cost** nell’area Valori.
Ora vedi:
* quanto incasseresti
* quanto hai speso
---
## Creazione di un Campo Calcolato (Profit)
Il profitto **non esiste nei dati originali**.
Deve essere calcolato.
Inserisci un **Calculated Field** chiamato `Profit`.
Scrivi una formula che:
* prende Price
* sottrae Cost
Conferma.
Osserva cosa succede:
* compare una nuova colonna
* il profitto è calcolato automaticamente per ogni marca
Non hai scritto formule nel foglio.
Il calcolo avviene **dentro la pivot table**.

---
## Ordinamento dei risultati
Clicca con il tasto destro su un valore della colonna **Profit**.
Ordina dal valore più grande al più piccolo.
Ora la pivot table ti sta aiutando a rispondere a una domanda precisa:

> “Quali marche mi fanno guadagnare di più?”

L’ordinamento serve a **leggere meglio**, non a cambiare i dati.

---
## Cambiare tipo di calcolo (Average)
Ora guarda il campo **Cost**.
Attualmente stai vedendo la **somma** dei costi.
Apri le impostazioni del campo Cost nei Valori.
Cambia il tipo di calcolo da **Sum** a **Average**.
Osserva la differenza.
Prima rispondevi a:
> “Quanto ho speso in totale?”

Ora rispondi a:
> “Quanto ho speso in media per ogni auto?”

Stessi dati, domanda diversa.

---
## Analisi delle percentuali per Color
Ora vogliamo capire **la distribuzione dei colori**.
Rimuovi **Make** dalla pivot table.
Trascina **Color** nell’area Righe.
Trascina **Color** anche nei Valori per ottenere il conteggio.
Ordina dal valore più grande al più piccolo.
Leggi i numeri:
* quanti veicoli per ogni colore
---
## Visualizzazione in percentuale
Clicca con il tasto destro su uno dei valori.
Scegli l’opzione per mostrare i valori come **percentuale del totale**.
Ora non stai più leggendo “quante auto”, ma:

> “che percentuale dell’inventario ha questo colore?”

Questo è spesso più utile dei numeri assoluti.

---
## Creazione di un Pivot Chart
Con la pivot table selezionata, inserisci un **Pivot Chart**.
Scegli un grafico a colonne.
Osserva:
* il grafico mostra le stesse informazioni
* è collegato direttamente alla pivot table
Prova a cambiare la pivot table.
Guarda come il grafico si aggiorna da solo.

---
## Aggiornamento differito
Attiva **Defer Layout Update**.
Ora trascina alcuni campi:
* la tabella non si aggiorna subito
Premi **Update** solo alla fine.
Questo serve quando:
* i dati sono molti
* i calcoli richiedono tempo
---
## Conclusione
Una pivot table non serve a trovare **una risposta giusta**.
Serve a **fare domande diverse agli stessi dati**.
Ogni volta che sposti un campo:
* stai cambiando punto di vista
* stai facendo una domanda diversa
Il modo migliore per imparare è:
* spostare
* osservare
* capire cosa cambia
