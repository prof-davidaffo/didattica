## Creazione della Pivot Table

Apri il file **Car Inventory**.

Trovi una tabella classica: ogni riga è un'auto, ogni colonna ne descrive una caratteristica — marca, modello, colore, chilometraggio, prezzo, costo.

Prima di toccare qualsiasi cosa, prenditi un momento per guardare com'è fatto il file. Non ci sono formule, non ci sono totali, niente righe di riepilogo. Sono solo dati grezzi, uno per riga. L'obiettivo della pivot table è lavorare su questi dati senza mai modificarli — solo osservarli da angolazioni diverse.

Clicca su **una qualunque cella** della tabella, poi vai su **Inserisci → Tabella pivot**. Google Fogli ti chiederà dove crearla: scegli **Nuovo foglio** e conferma. L'intervallo viene rilevato automaticamente — lascialo così.

Hai appena creato una pivot table vuota.

> **📌 Differenze tra piattaforme — Creazione**
> 
> - **Excel**: _Inserisci → Tabella pivot_. Stessa logica, finestra di dialogo leggermente più elaborata.
> - **LibreOffice Calc**: _Dati → Tabella pivot → Inserisci o modifica_. L'interfaccia è più schematica: si apre una finestra dove trascini i campi nelle aree, invece di un pannello laterale.

---

## Primo contatto con la Pivot Table

Ti ritrovi in un foglio nuovo. A sinistra c'è la tabella — per ora vuota, ma è lì che compariranno i risultati. A destra hai il pannello con:

- l'elenco dei campi (Make, Model, Color, Price, Cost, ecc.)
- quattro aree dove puoi spostarli: **Filtri, Righe, Colonne, Valori**

La cosa fondamentale da capire, ancora prima di qualunque numero, è questa: **la pivot table funziona trascinando i campi nelle aree**, oppure usando il tasto **Aggiungi** accanto a ciascuna sezione. Ogni spostamento cambia il modo in cui i dati vengono organizzati e presentati. Non puoi rompere nulla — se il risultato non ti convince, sposti il campo e riparti.

> **📌 Differenze tra piattaforme — Pannello campi**
> 
> - **Excel**: il pannello si chiama _Campi tabella pivot_ ed è a destra. Il funzionamento è identico.
> - **LibreOffice Calc**: non c'è un pannello laterale persistente. Per modificare la pivot devi fare doppio clic su di essa per riaprire la finestra di dialogo, poi trascini i campi nelle aree e premi OK per applicare. È meno immediato, ma la logica è la stessa.

---

## Analisi per Make (marca)

Trascina **Make** nell'area **Righe**, oppure clicca **Aggiungi** accanto a Righe e selezionalo dall'elenco.

Osserva subito la tabella, senza aggiungere altro: Google Fogli ha raggruppato tutte le righe con la stessa marca e ha restituito un elenco ordinato. Nessun filtro, nessuna cancellazione. Hai solo detto:

> _"Mostrami i dati raggruppati per marca."_

Fermati un attimo e leggi i nomi che compaiono.

---

## Analisi per Make e Model

Con **Make** ancora nelle Righe, aggiungi anche **Model** — sempre in Righe, sotto Make — trascinandolo o selezionandolo da **Aggiungi**.

La tabella cambia: ogni marca si apre e mostra al suo interno i modelli corrispondenti. Si è creata una **gerarchia** — prima la marca, poi i modelli. Usa i piccoli pulsanti di espansione e compressione per passare da una visione d'insieme a una più dettagliata, senza toccare nient'altro.

---

## Aggiunta dei Color nelle Colonne

Porta **Color** nell'area **Colonne**, trascinandolo o usando **Aggiungi**.

La struttura si arricchisce: prima avevi solo righe, ora la tabella incrocia marca e modello (in verticale) con i colori (in orizzontale). Per adesso non preoccuparti dei numeri — guarda solo come è cambiata l'organizzazione visiva rispetto a prima.

---

## Conteggio dei veicoli

Porta **Make** nell'area **Valori**, trascinandolo o usando **Aggiungi**.

Google Fogli imposta automaticamente un conteggio (`COUNTA`). Il motivo è semplice: Make è un testo, e su un testo l'unica operazione che ha senso è contare quante volte compare. I numeri che vedi rispondono alla domanda:

> _"Quante auto ci sono per ogni combinazione di marca, modello e colore?"_

Prova a espandere e comprimere i gruppi per leggere meglio i risultati.

> **📌 Differenze tra piattaforme — Funzione di conteggio automatica**
> 
> - **Excel** e **LibreOffice**: il conteggio automatico su un campo testo si chiama `CONTA` o `COUNT` — il risultato è identico, cambia solo l'etichetta visualizzata.

---

## Semplificazione della vista

Rimuovi **Model** dalle Righe cliccando la **X** accanto al campo nel pannello.

La tabella si semplifica di colpo. Questo è un aspetto importante delle pivot table: aggiungere e togliere campi è normalissimo. Non stai annullando il lavoro — stai solo facendo una domanda diversa. La pivot non è una cosa fissa; è uno strumento per esplorare.

---

## Analisi del Profitto per Make

Cambiamo obiettivo: vogliamo capire quanto si potrebbe guadagnare per ogni marca.

Tieni **Make** nelle Righe, rimuovi **Color** dalle Colonne se è ancora presente, poi porta **Price** nei Valori e **Cost** nei Valori — trascinandoli o usando **Aggiungi**. Assicurati che entrambi usino la funzione **SUM**.

Ora hai affiancati: quanto incasseresti vendendo tutte le auto di una marca, e quanto hai già speso per acquistarle.

---

## Creazione di un Campo Calcolato (Profit)

Il profitto non esiste tra i dati originali: va calcolato dentro la pivot table.

In Google Fogli, clicca **Aggiungi** accanto a Valori e seleziona **Campo calcolato** in fondo alla lista. Si apre un campo dove puoi scrivere la formula:

```
= Price - Cost
```

Accanto a _Riepiloga in base a_, seleziona **Personalizzato**, poi clicca **Aggiungi**.

Nella tabella compare una nuova colonna con il profitto per ogni marca, calcolato in automatico. Nessuna formula scritta nel foglio — il calcolo vive interamente dentro la pivot table.

> **📌 Differenze tra piattaforme — Campo calcolato**
> 
> - **Excel**: scheda contestuale _Analizza_ → _Campi, elementi e set_ → _Campo calcolato_. Si apre una finestra: dai un nome (es. `Profit`) e scrivi `= Price - Cost`. Puoi fare doppio clic sui nomi dei campi nell'elenco per inserirli nella formula automaticamente.
> - **LibreOffice Calc**: i campi calcolati **non sono supportati** nelle tabelle pivot. La soluzione alternativa è aggiungere una colonna `Profit` direttamente nella tabella sorgente (con la formula `= Prezzo - Costo`) e poi aggiornare la pivot per includere quel campo come normale colonna dati.

---

## Ordinamento dei risultati

Nella sezione **Righe** del pannello, trova il campo Make e imposta **Ordina per** sul campo **Profit** (o _SUM of Profit_), poi scegli **Decrescente**.

La pivot table ora risponde a una domanda precisa:

> _"Quali marche fanno guadagnare di più?"_

L'ordinamento non cambia i dati, aiuta solo a leggerli.

> **📌 Differenze tra piattaforme — Ordinamento**
> 
> - **Excel**: clicca la freccia del menu a tendina sull'etichetta del campo riga direttamente nella tabella → _Altre opzioni di ordinamento_ → scegli il campo per cui ordinare.
> - **LibreOffice Calc**: riapri la finestra della pivot con doppio clic → seleziona il campo riga → usa i pulsanti di ordinamento nella finestra di dialogo.

---

## Cambiare tipo di calcolo (Average)

Guarda il campo **Cost** nella sezione Valori del pannello. In questo momento stai vedendo la somma totale dei costi. Clicca sul campo Cost nel pannello e cambia la funzione da **SUM** ad **AVERAGE**.

La tabella si aggiorna. Non hai cambiato niente nei dati — hai solo cambiato la domanda. Prima era:

> _"Quanto ho speso in totale per ogni marca?"_

Ora è:

> _"Quanto ho speso in media per ogni singola auto?"_

Stessi numeri di partenza, prospettiva completamente diversa.

> **📌 Differenze tra piattaforme — Tipo di calcolo**
> 
> - **Excel**: clic destro su un valore nella tabella → _Impostazioni campo valore_ → scegli la funzione.
> - **LibreOffice Calc**: riapri la finestra della pivot → doppio clic sul campo nell'area Dati → si apre la finestra per cambiare la funzione.

---

## Analisi della distribuzione per Color

Vuoi capire come si distribuiscono i colori nell'inventario. Rimuovi tutto ciò che hai nelle varie aree, poi porta **Color** nelle Righe e **Color** anche nei Valori — trascinando o usando **Aggiungi** — per ottenere il conteggio. Imposta l'ordinamento su **Decrescente** per valore e leggi quante auto ci sono per ogni colore.

---

## Visualizzazione in percentuale

Nel pannello Valori, clicca sul campo Color e cambia _Mostra come_ da **Valore predefinito** a **% del totale generale**.

I numeri cambiano significato: non stai più leggendo "quante auto", ma:

> _"Che percentuale dell'inventario ha questo colore?"_

Spesso le percentuali comunicano qualcosa di più immediato dei valori assoluti.

> **📌 Differenze tra piattaforme — Visualizzazione percentuale**
> 
> - **Excel**: clic destro su un valore → _Mostra valori come_ → _% del totale complessivo_.
> - **LibreOffice Calc**: riapri la finestra della pivot → doppio clic sul campo dati → scheda _Mostra valori come_ → seleziona _% del totale_.

---

## Creazione di un Pivot Chart

Con la pivot table selezionata, vai su **Inserisci → Grafico**.

Google Fogli crea un grafico collegato direttamente alla tabella: se modifichi la pivot, il grafico si aggiorna da solo. Prova a spostare qualche campo e osserva cosa cambia nel grafico.

> **📌 Differenze tra piattaforme — Grafico pivot**
> 
> - **Excel**: usa il pulsante _Grafico pivot_ nella scheda contestuale _Analizza_ — il grafico è nativamente agganciato alla pivot e si comporta in modo più integrato rispetto a un grafico normale.
> - **LibreOffice Calc**: inserisci un grafico normale (_Inserisci → Grafico_) selezionando i dati della pivot come intervallo. Il collegamento dinamico è meno automatico: se la pivot cambia struttura, potrebbe essere necessario aggiornare manualmente l'intervallo del grafico.

---

## Conclusione

Una pivot table non serve a trovare una risposta giusta. Serve a fare domande diverse agli stessi dati.

Ogni volta che sposti un campo stai cambiando punto di vista — stai chiedendo qualcosa di diverso. Il modo migliore per impadronirsene è semplice: spostare, osservare, capire cosa è cambiato.