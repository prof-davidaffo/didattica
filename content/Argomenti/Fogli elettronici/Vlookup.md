In questa esercitazione imparerai ad utilizzare le diverse formule di lookup per cercare dati nelle tabelle a partire da una chiave.
## Foglio VLOOKUP – exact match
In questo foglio impari a usare per la prima volta la funzione VLOOKUP.
VLOOKUP serve a cercare un valore nella **prima colonna** di una tabella.  
Quando trova la riga giusta, restituisce un valore che si trova **nella stessa riga**, ma in un’altra colonna. 
La ricerca funziona solo se il valore cercato si trova nella colonna più a sinistra.

Osserva la tabella sulla sinistra:
la prima colonna contiene il Customer ID,
la seconda il Customer Name,
la terza le Notes.
A destra è presente una cella in cui puoi inserire un Customer ID.

1. Clicca nella cella del Customer Name.
2. Scrivi una formula che inizi con =VLOOKUP(.
3. Come valore di ricerca, seleziona la cella in cui hai inserito il Customer ID.
4. Come intervallo, seleziona tutta la tabella dei clienti.
5. Come indice di colonna, inserisci il numero della colonna che contiene il nome del cliente.
6. Come ultimo parametro indica che la ricerca deve essere esatta scrivendo FALSE.

Conferma la formula e prova a cambiare il Customer ID.
Ripeti lo stesso procedimento nella cella delle Notes, modificando solo l’indice di colonna.
Inserisci ora un Customer ID che non esiste.
Osserva l’errore visualizzato.
Modifica la formula usando una funzione che permetta di mostrare un messaggio testuale al posto dell’errore.
## Foglio VLOOKUP – create table
Trasformare un intervallo in tabella rende le formule più affidabili.  
Se la tabella cresce o cambia dimensione, le formule continuano a funzionare senza dover essere modificate.  
Usare tabelle riduce molti errori comuni nei lookup.
La tabella è già organizzata, ma non è ancora stata trasformata in una tabella vera e propria.

1. Seleziona tutte le celle contenenti i dati.
2. Usa il tasto destro → converti in tabella.
3. Verifica che la prima riga venga riconosciuta come intestazione.

Osserva cosa cambia nella gestione delle colonne.
Da adesso in poi, quando lavori con tabelle di dati, trasformale sempre in tabelle.
## Foglio VLOOKUP – approximate match
In questo foglio impari la differenza tra ricerca esatta e ricerca approssimata.
Con la ricerca approssimata VLOOKUP **non cerca un valore uguale**, ma il valore più grande che **non supera** quello cercato.  
Per questo motivo la tabella di riferimento deve essere ordinata in modo crescente.  
Questo tipo di ricerca è utile quando si lavora con **soglie** o **intervalli di valori**.

A sinistra vedi un elenco di ordini con il numero di biscotti acquistati.
A destra c’è una tabella che indica quanti biscotti omaggio spettano in base alla quantità ordinata.
Nota che molti ordini non corrispondono esattamente ai valori della tabella.

1. Clicca nella prima cella della colonna Biscotti omaggio.
2. Scrivi una formula VLOOKUP che usi come valore di ricerca il numero di biscotti ordinati.
3. Usa la tabella delle soglie come intervallo.
4. Imposta l’ultimo parametro in modo che la ricerca non sia esatta.
5. Conferma la formula e trascinala verso il basso.
## Foglio VLOOKUP – across sheets
Le funzioni di lookup possono usare dati che si trovano in **altri fogli dello stesso file**.  
Il comportamento della funzione non cambia: cambia solo la posizione della tabella di riferimento.  
È importante selezionare correttamente il foglio giusto quando si indica l’intervallo.

Il numero di biscotti ordinati è visibile,
ma la tabella delle soglie si trova in un foglio diverso.

1. Clicca nella cella dei biscotti omaggio.
2. Scrivi una formula VLOOKUP.
3. Quando devi selezionare l’intervallo, spostati nel foglio corretto e seleziona la tabella.
4. Conferma la formula e verifica che il risultato sia corretto.
## Foglio HLOOKUP
HLOOKUP funziona come VLOOKUP, ma cerca i dati **in orizzontale** invece che in verticale.  
La ricerca avviene nella **prima riga** della tabella e il risultato viene preso da una riga sottostante.  
Si usa solo quando i dati sono organizzati per righe e non per colonne.

La tabella delle soglie è organizzata per righe anziché per colonne.

1. Clicca nella cella dei biscotti omaggio.
2. Scrivi una formula che inizi con =HLOOKUP(.
3. Usa come valore di ricerca il numero di biscotti ordinati.
4. Seleziona la tabella orizzontale.
5. Inserisci l’indice della riga da cui ottenere il risultato.
6. Imposta la ricerca come approssimata.
7. Trascina la formula verso il basso.
8. Se compaiono errori, correggi i riferimenti rendendoli assoluti.
## Foglio XLOOKUP
In questo foglio impari a usare XLOOKUP.
XLOOKUP è una funzione più moderna che sostituisce VLOOKUP e HLOOKUP.  
Permette di scegliere liberamente **dove cercare** e **cosa restituire**, senza contare colonne o righe.  
Non è necessario che il valore cercato sia nella prima colonna.

Osserva la tabella degli ordini e la tabella di riferimento dei prodotti.
Nota che la colonna su cui cercare non è la prima.

1. Clicca nella cella Revenue per cookie.
2. Scrivi una formula che inizi con =XLOOKUP(.
3. Seleziona il prodotto come valore di ricerca.
4. Seleziona la colonna dei prodotti come intervallo di ricerca.
5. Seleziona la colonna del ricavo come intervallo risultato.
6. Inserisci un messaggio testuale da mostrare se il valore non viene trovato.
7. Conferma e trascina la formula verso il basso.
8. Ripeti lo stesso procedimento per la colonna Cost per cookie.
## Foglio XLOOKUP – profit
XLOOKUP può essere usata all’interno di formule più complesse.  
In questo caso viene usata per recuperare dati, che poi vengono combinati con operazioni matematiche.  
Una formula può quindi svolgere più passaggi in un’unica espressione.

Nella colonna Order Profit calcola il profitto totale.
Scrivi una formula che:

* recuperi revenue e cost con XLOOKUP
* calcoli la differenza
* moltiplichi il risultato per la quantità venduta

Usa una sola formula e verifica il risultato su più righe.
## Foglio XLOOKUP – multiple return values
XLOOKUP può restituire **più valori contemporaneamente** sotto forma di array.  
Quando questo succede, i risultati si distribuiscono automaticamente nelle celle adiacenti.  
Questo comportamento si chiama **spill** ed è normale nelle funzioni moderne.

1. Scrivi una formula XLOOKUP che cerchi il prodotto.
2. Seleziona sia la colonna del revenue sia quella del cost come intervallo risultato.
3. Osserva come i valori vengono distribuiti automaticamente.
4. Trascina la formula sulle altre righe correggendo i riferimenti.
## Foglio XLOOKUP – wildcard match
XLOOKUP può cercare anche testi **non completi** usando caratteri speciali.  
Il carattere `*` rappresenta una qualsiasi sequenza di caratteri.  
Questo tipo di ricerca è utile quando si conosce solo una parte del testo.

Scrivi una formula XLOOKUP che cerchi un nome che inizi con una lettera specifica usando il carattere \*.
Imposta correttamente la modalità di confronto.
Osserva il risultato.
## Foglio XLOOKUP – search mode
Di default XLOOKUP cerca dall’alto verso il basso.  
È possibile cambiare la direzione della ricerca per partire dall’ultima riga.  
Questo permette, ad esempio, di trovare l’**ultimo valore** invece del primo.

Un cliente ha effettuato più ordini in date diverse.
Scrivi una formula XLOOKUP che:
* cerchi il nome del cliente
* restituisca la data dell’ordine

Imposta la modalità di ricerca in modo che la ricerca parta dall’ultima riga.
Verifica che venga restituita la data più recente.
