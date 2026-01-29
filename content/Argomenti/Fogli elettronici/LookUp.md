In questa esercitazione imparerai ad utilizzare le diverse formule di lookup per cercare dati nelle tabelle a partire da una chiave.
## Foglio CERCA.VERT – exact match
In questo foglio impari a usare per la prima volta la funzione CERCA.VERT.
CERCA.VERT serve a cercare un valore nella **prima colonna** di una tabella.  
Quando trova la riga giusta, restituisce un valore che si trova **nella stessa riga**, ma in un’altra colonna. 
La ricerca funziona solo se il valore cercato si trova nella colonna più a sinistra.

Osserva la tabella sulla sinistra:
la prima colonna contiene il Customer ID,
la seconda il Customer Name,
la terza le Notes.
A destra è presente una cella in cui puoi inserire un Customer ID.

1. Clicca nella cella del Customer Name.
2. Scrivi una formula che inizi con =CERCA.VERT(.
3. Come valore di ricerca, seleziona la cella in cui hai inserito il Customer ID.
4. Come intervallo, seleziona tutta la tabella dei clienti.
5. Come indice di colonna, inserisci il numero della colonna che contiene il nome del cliente.
6. Come ultimo parametro indica che la ricerca deve essere esatta scrivendo `FALSO`.

Conferma la formula e prova a cambiare il Customer ID.
Ripeti lo stesso procedimento creando una cella che indichi il contenuto delle notes per quel customer ID.
Inserisci ora un Customer ID che non esiste.
Osserva l’errore visualizzato.
Modifica la formula usando una funzione che permetta di mostrare un messaggio testuale al posto dell’errore.
Puoi farlo grazie alla formula SE.ERRORE, mettendo come primo argomento la formula di CERCA.VERT, e come secondo argomento il messaggio di errore che vuoi mostrare).
## Foglio CERCA.VERT – create table
Trasformare un intervallo in tabella rende le formule più affidabili.  
Se la tabella cresce o cambia dimensione, le formule continuano a funzionare senza dover essere modificate, infatti ora anziché selezionare la tabella, posso direttamente scrivere il suo nome nella formula.
Usare tabelle riduce molti errori comuni nei lookup.
La tabella è già organizzata, ma non è ancora stata trasformata in una tabella vera e propria.

1. Seleziona tutte le celle contenenti i dati.
2. Usa il tasto destro → converti in tabella.
3. Verifica che la prima riga venga riconosciuta come intestazione.

Osserva cosa cambia nella gestione delle colonne.
Da adesso in poi, quando lavori con tabelle di dati, trasformale sempre in tabelle.
## Foglio CERCA.VERT – approximate match
In questo foglio impari la differenza tra ricerca esatta e ricerca approssimata.
Con la ricerca approssimata CERCA.VERT **non cerca un valore uguale**, ma il valore più grande che **non supera** quello cercato.  
Per questo motivo la tabella di riferimento deve essere ordinata in modo crescente.  
Questo tipo di ricerca è utile quando si lavora con **soglie** o **intervalli di valori**.

A sinistra vedi un elenco di ordini con il numero di biscotti acquistati.
A destra c’è una tabella che indica quanti biscotti omaggio spettano in base alla quantità ordinata.
Nota che molti ordini non corrispondono esattamente ai valori della tabella.

1. Clicca nella prima cella della colonna Biscotti omaggio.
2. Scrivi una formula CERCA.VERT che usi come valore di ricerca il numero di biscotti ordinati.
3. Usa la tabella delle soglie come intervallo.
4. Imposta l’ultimo parametro in modo che la ricerca non sia esatta.
5. Conferma la formula e trascinala verso il basso.
## Foglio CERCA.VERT – across sheets
Le funzioni di lookup possono usare dati che si trovano in **altri fogli dello stesso file**.  
Il comportamento della funzione non cambia: cambia solo la posizione della tabella di riferimento.  
È importante selezionare correttamente il foglio giusto quando si indica l’intervallo.

Il numero di biscotti ordinati è visibile,
ma la tabella delle soglie si trova in un foglio diverso.

1. Clicca nella cella dei biscotti omaggio.
2. Scrivi una formula CERCA.VERT.
3. Quando devi selezionare l’intervallo, spostati nel foglio corretto e seleziona la tabella (oppure puoi utilizzare direttamente il nome della tabella).
4. Conferma la formula e verifica che il risultato sia corretto.
## Foglio CERCA.ORIZZ
CERCA.ORIZZ funziona come CERCA.VERT, ma cerca i dati **in orizzontale** invece che in verticale.  
La ricerca avviene nella **prima riga** della tabella e il risultato viene preso da una riga sottostante.  
Si usa solo quando i dati sono organizzati per righe e non per colonne.

La tabella delle soglie è organizzata per righe anziché per colonne.

1. Clicca nella cella dei biscotti omaggio.
2. Scrivi una formula che inizi con =CERCA.ORIZZ(.
3. Usa come valore di ricerca il numero di biscotti ordinati.
4. Seleziona la tabella orizzontale.
5. Inserisci l’indice della riga da cui ottenere il risultato.
6. Imposta la ricerca come approssimata.
7. Trascina la formula verso il basso.
8. Se compaiono errori, correggi i riferimenti rendendoli assoluti.
## Foglio CERCA.X
In questo foglio impari a usare CERCA.X.
CERCA.X è una funzione più moderna che sostituisce CERCA.VERT e CERCA.ORIZZ.  
Permette di scegliere liberamente **dove cercare** e **cosa restituire**, senza contare colonne o righe.  
Non è necessario che il valore cercato sia nella prima colonna.

Osserva la tabella degli ordini e la tabella di riferimento dei prodotti.
Nota che la colonna su cui cercare non è la prima.

1. Clicca nella cella Revenue per cookie.
2. Scrivi una formula che inizi con =CERCA.X(.
3. Seleziona il prodotto come valore di ricerca.
4. Seleziona la colonna dei prodotti come intervallo di ricerca.
5. Seleziona la colonna del ricavo come intervallo risultato.
6. Inserisci un messaggio testuale da mostrare se il valore non viene trovato.
7. Conferma e trascina la formula verso il basso.
8. Ripeti lo stesso procedimento per la colonna Cost per cookie.
9. Calcola il prezzo totale con i valori ottenuti. Oppure, se vuoi fare ancora pratica, prova a ottenere la formula usando direttamente CERCA.X senza utilizzare i cost e revenue calcolati.

Nota che se hai convertito la tabella, puoi fare riferimento direttamente ai nomi delle colonne della tabella invece che selezionare l'intera colonna.
## Foglio CERCA.X – multiple return values
CERCA.X può restituire **più valori contemporaneamente** sotto forma di array.  
Quando questo succede, i risultati si distribuiscono automaticamente nelle celle adiacenti.  
Questo comportamento si chiama **spill** ed è normale nelle funzioni moderne.

1. Scrivi una formula CERCA.X che cerchi il prodotto.
2. Seleziona sia la colonna del revenue sia quella del cost come intervallo risultato.
3. Osserva come i valori vengono distribuiti automaticamente.
4. Trascina la formula sulle altre righe correggendo i riferimenti.
## Foglio CERCA.X – wildcard match
CERCA.X può permettermi anche di cercare testi utilizzando le wildcard.
Come chiave di ricerca quindi posso inserire una stringa con una wildcard.
Wildcard si usano soprattutto con funzioni come `CERCA.X`, `CERCA`, `CONFRONTA`, `FILTRO`, `CONTA.SE`, `CONTA.PIÙ.SE`.  

Le wildcard supportate sono tre.
-  Asterisco *
	Rappresenta **zero o più caratteri qualsiasi**.  
	Esempi:  
	`"*test*"` → contiene la parola `test`  
	`"abc*"` → inizia con `abc`  
	`"*.pdf"` → termina con `.pdf`  
	È la wildcard più usata.
- Punto interrogativo ?
	Rappresenta **esattamente un carattere qualsiasi**.  
	Esempi:  
	`"file?"` → `file1`, `fileA` ma non `file10`  
	`"A??"` → `ABC`, `A12`  
	Serve per vincolare la lunghezza del testo.
- Tilde ~
	Serve per **disattivare il significato speciale** di `*` e `?` quando vuoi cercarli come caratteri normali.  
	Esempi:  
	`"~*"` → cerca proprio l’asterisco `*`  
	`"~?"` → cerca il punto interrogativo `?`  
	Fondamentale quando i dati contengono simboli letterali.

Se voglio utilizzare le wildcard in CERCA.X, devo ricordarmi di mettere la stringa tra doppi apici, e inserire come modalità corrispondenza il numero 2, appunto quello che mi permette di utilizzare la wildcard.
Come faccio dunque a sapere quale cliente inizia con la lettera W?
## Foglio CERCA.X – search mode
Di default CERCA.X cerca dall’alto verso il basso.  
È possibile cambiare la direzione della ricerca per partire dall’ultima riga. 
Questo permette, ad esempio, di trovare l’**ultimo valore** invece del primo.
Questo posso farlo con la modalità ricerca, dove:

- `1` cerca a partire dal primo valore
- `-1` cerca a partire dall'ultimo valore
- `2` fa la stessa cosa di `1` ma usando la ricerca binaria
- `-2` fa la stessa cosa di `-1` ma usando la ricerca binaria

La ricerca binaria funziona solo se l'intervallo di ricerca è ordinato, in tal caso, la ricerca diventa molto più veloce ed efficiente in termini di risorse utilizzate.

Come faccio a trovare l'ultimo ordine fatto da Lola? Posso ottenerlo con la ricerca binaria?
