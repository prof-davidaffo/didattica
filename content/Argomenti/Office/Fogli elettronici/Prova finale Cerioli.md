1. Aggiungete alla cartella di lavoro una copia del foglio DatiCollezione e chiamatelo Catalogo. Eliminate poi nel nuovo foglio le colonne:  
    C (Ruling authority), G (#number), J (Year range),  
    P (Orientation),  Q (Year), S (Mintmark),  
    W (Buying price), Y (Private comment) e Z (Public comment).  
    Per evitare di confondervi con il cambio della lettera di riferimento delle colonne man mano che le cancellate, partite a cancellare dall'ultima (Z) e procedete a ritroso.
2. Formattate poi il foglio seguendo queste indicazioni:
    - Tutte le celle devono avere il bordo nero.
    - Colonne A e B: larghezza 15 e tipo del contenuto testo
    - Colonna C:  larghezza 20 e tipo del contenuto testo
    - Colonna D: larghezza 7 e tipo del contenuto numero con due cifre decimali
    - Colonna E: larghezza 7 e tipo del contenuto testo
    - Colonna F: larghezza 25, tipo del contenuto testo, e il testo coontenuto deve andare a capo
    - Colonne H e I: larghezza 12, tipo del contenuto tipo testo, e il testo contenuto deve andare a capo
    - Colonne J, K e L:  larghezza 7 e tipo del contenuto numero, con 2 cifre decimali
    - Colonne M e N: larghezza 5 e tipo del contenuto numero, senza cifre decimali
    - Colonne O e P: larghezza 5 e tipo del contenuto testo
    - Colonna Q: larghezza 6 e tipo del contenuto valuta in Euro, con 2 cifre decimali
3. Formattate a piacere le intestazioni delle colonne.
4. Occorre assegnare a 0 la stima di tutte quelle monete che non ne hanno una (cioè inserire 0 nelle celle vuote della colonna Q).  
    Procedete come segue.
    - Copiate la prima cella (l'intestazione) della colonna Q nella prima cella della colonna adiacente (R).
    - In ogni cella della colonna R dopo la prima inserite una formula che risulti in 0.00 se la corrispondente cella in colonna Q è vuota, altrimenti ritorni il valore di tale cella.
    - Formattate La colonna R come la colonna Q (qual è il modo più facile per farlo?).
    - Copiate i valori contenuti in R nella colonna Q (fate attenzione al momento dell’incollare a decidere di incollare solo i valori).
    - Infine cancellate la colonna R. 
5. Tutti i valori contenuti nella colonna G terminano con " coin". Vogliamo eliminare questa ridondanza.  
    Procediamo come nel caso precedente.
    - Inseriamo una colonna dopo G.
    - Per mezzo di una formula facciamo apparire nelle sue celle il contenuto di G privo della parte finale “ coin”.
    - Formattiamo la colonna aggiunta come G e copiamo i suoi valori in G
    - Infine, eliminiamo la colonna aggiunta.
6. Le colonne da N a Q hanno un ruolo diverso dalle altre, quindi sottolineate questa differenza usando un colore dello sfondo diverso dalle altre colonne.
7. Aggiungete un foglio chiamato Dati riassuntivi  
    Nella cella C3 inserite il vostro nome, in D3 il vostro cognome, in E3 nato/a il, e in F3 la vostra data di nascita formattata in questo modo  
    “venerdì 17 novembre 2023”.  
    Formattate questi dati a piacere.  
    Di seguito devono essere aggiunte queste informazioni sulle monete presenti nel catalogo.
    - Numero complessivo delle monete nella collezione, ovvero di quelle che nella colonna O hanno FALSO.
    - Valore totale della collezione (il valore stimato di ciascuna moneta si trova nella colonna Q del foglio Catalogo, ma attenzione che per calcolare l'importo complessivo occorre considerare anche la quantità di ciascuna moneta). Per calcolare questo valore, vi consigliamo di utilizzare una colonna ausiliaria che poi nasconderete.
    - Il peso medio delle monete.
    - Il numero di monete italiane, ovvero di quelle per cui compare _Italy_ nella colonna A.
    - Numero monete precedenti il 1900.
8. Scoprite poi la moneta di diametro maggiore/minore che pesa di più/di meno fra tutte quelle del catalogo (per farlo la soluzione migliore potrebbe essere usare non una formula, ma altri strumenti quali i filtri o la formattazione condizionale).
9. Colorate in giallino le celle della colonna Grade nel foglio catalogo contenenti UNC e colorate quelle contenenti G in un grigio scuro.
10. Formattate la colonna Year in modo che permetta a colpo d’occhio di capire quali sono le monete più antiche e quelle più moderne, ad esempio usando una scala di colore.
11. Scegliete nel foglio Catalogo una moneta di uno stato avente la stessa iniziale del vostro cognome, se non esistessero una di uno stato avente la stessa iniziale del vostro nome.  
    Copiate i suoi dati contenuti nelle colonne da A a M in un foglio chiamato Moneta del cuore e formattateli nel modo che preferite.
12. Si vuole visualizzare la distribuzione delle monete rispetto al loro anno (quello relativo al calendario gregoriano). Per cui si richiede di inserire  un grafico a barre che mostri il numero di monete per ogni anno compreso tra il minimo e il massimo dei valori contenuti nella  colonna Gregorian year. Formattate tale grafico a piacere.
13. Ora provate a rappresentare le stesse informazioni (cioè la distribuzione delle monete rispetto all'anno gregoriano utilizzando un istogramma e un grafico a linea. Queste due richieste sono ragionevoli? Rispondete motivando.
14. Si vuole visualizzare utilizzando un grafico a torta quante siano le monete dei vari  tipi (che sono  "Standard circulation coin", "Circulating commemorative coin" e "Non-circulating coin"). Il grafico a torta dovrà mostrare il numero di monete dei tre tipi e la percentuale.
15. Si vuole poi costruire un catalogo delle sole monete spagnole in Euro (cioè quelle dove Country è Spain e Currency è Euro (2002-date)) da inserire in un foglio di nome _Monete spagnole Euro_.
    
    - Selezionate le monete spagnole in Euro dal foglio Catalogo e copiatele nel nuovo foglio cercando di mantenere il più possibile la formattazione originale.
    - Aggiungete le stesse intestazioni per le colonne del foglio Catalogo.
    - Eliminate le prime tre colonne, dato che i loro valori sono fissati in questo foglio.
    - Eliminate anche le colonne Shape, Composition, Weight, Diameter, Thickness ed Estimate.
    
    Domanda difficile: se ora si cambiasse qualcosa in Catalogo nella monete in Euro spagnole cosa cambierebbe in questo foglio?  
    Provate a ottenere questo stesso risultato in un modo diverso e valutate quale approccio sia più semplice.
    - Fate una copia del foglio Catalogo e ridenominatela _Monete spagnole Euro bis_
    - Selezionate in tale foglio le monete non spagnole ed eliminate le righe che le contengono  
        
    - Selezionate le monete non in euro ed eliminate le righe che le contengono
    - Eliminate ora le colonne, come richiesto negli ultimi due punti della procedura iniziale.
16.  SI vuole inserire una colonna con il valore delle monete in dollari ed una con i valori in sterline.  
    Inserite il cambio attuale Euro - Dollaro. ed Euro - Sterlina in due cella di un nuovo foglio chiamato "Foglio di servizio". Assegnate un nome alla cella contenete il cambio Euro-Dollaro ma non all'altra. Utilizzate questi valori  per riempire le due colonne appena inserite. 
17. Inserite una tabella pivot partendo da tutti i dati presenti nel foglio _Monete spagnole Euro_  
    

- Aggregate i dati usando il valore facciale (Face value) e al secondo livello Reference. Poi come colonne scegliete Anno, coma valori scegliete il conteggio di Title (in questo modo si potrà sapere quante siano le monete con quella reference di quell’anno).
- Sostituite in modo appropriato le etichette generate automaticamente.
- Formattate la tabella pivot a piacere cercando di renderla facilmente leggibile.