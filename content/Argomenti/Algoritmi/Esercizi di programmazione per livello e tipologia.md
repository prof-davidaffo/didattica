## Eserciziari per prendere spunto
[Eserciziario IP UniGe](https://drive.google.com/file/d/16Efu09VNfc7SmRnXHz3JG47Gdr88ETjc/view?usp=drive_link)

[Esercizi Giacomin Università Brescia](https://drive.google.com/file/d/1bWiveypb-johUEkuodZ9v8mm7WsdqFQX/view?usp=drive_link)
## Esercizi sui fondamenti
### Livello base
#### Operazioni aritmetiche di base su due numeri
Scrivere un programma che legge due numeri interi e ne stampa la somma, la differenza, il prodotto, il quoziente e il modulo.
#### Swap
Scrivere un programma che scambia tra loro i valori di due variabili intere, lette da input, e stampa i valori prima e dopo lo scambio.
#### Perimetro
Scrivere un programma che calcola perimetro e area di un rettangolo, dopo aver chiesto e letto i dati necessari.
#### Calcolo età
Scrivere un programma che chiede all'utente in che anno è nato e stampa quanti anni ha.
#### Calcolatore di minuti
Scrivere un programma che prende in input il numero di ore (compreso fra 0 e 23) e di minuti (compreso fra 0 e 59) e stampa in output il numero di minuti totali.
#### Area del cerchio
Scrivere un programma che calcola circonferenza e area di un cerchio.
#### Media tra tre numeri
Scrivere un programma che calcola la media tra tre numeri.
#### Valutazione di variabili booleane
Scrivere un programma che, per ciascuna di queste frasi, stampa la frase seguita dal simbolo = e da un’espressione booleana che calcola il suo valore di verità.

> [!hint] Suggerimento
> Per stampare i booleani come true e false invece che come 1 e 0 si deve impostare a true il flag boolalpha di cout. Per fare questo si usa la stessa sintassi della stampa, ovvero si deve “stampare” un comando, come segue: std::cout << std::boolalpha

• tre è maggiore di uno
• quattro diviso due è minore di zero
• il carattere “zero" è uguale al valore zero
• dieci mezzi è compreso fra zero escluso e dieci incluso (ossia: dieci mezzi è maggiore di zero E dieci mezzi è minore o uguale a dieci)
• non è vero che tre è maggiore di due e minore di uno
• tre minore di meno cinque implica sette maggiore di zero

### Livello avanzato
#### Stampa in ordine crescente senza confronto
Scrivere un programma che legge due numeri e li stampa in ordine crescente senza confrontarli.

> [!hint] Suggerimento
> Se alla media sottraggo la semidistanza, che valore ottengo?
#### Swap senza variabile ausiliaria
Scrivere un programma che scambia fra loro i valori di due variabili senza usare variabili di appoggio.

> [!hint] Suggerimento
> L’or esclusivo, o XOR (in C++ l’operatore ^), gode di varie proprietà, tra cui la proprietà di simmetria
> - cioè A^B == B^A – e la proprietà associativa – cioè (A^B)^C == A^(B^C). Inoltre, A^A \==0 e A^0\==A per qualsiasi A, B e C.

## Controllo del flusso (solo condizionale senza cicli)
### Livello base
#### Confronto caratteri
Leggere due caratteri e stampare “Uguali” se sono identici, altrimenti “Diversi”.
#### Confronto numeri
Leggere tre numeri interi e stamparli in ordine crescente.
### Livello medio
#### Triangolo
Scrivere un programma che verifica se tre numeri interi dati in input possono essere i lati di un triangolo, cioè se nessuno di essi è maggiore della somma degli altri due o minore del valore assoluto della loro differenza.
#### Scegliere un colore tramite l'iniziale
#### Calcolare il valore assoluto di un numero
Stampare il valore assoluto di un numero intero.
#### Pari o dispari
Verificare se il numero inserito è pari o dispari.
#### Scegliere una cena attraverso un menù
All'utente viene presentato cosa scegliere come primo piatto, secondo e dolce tra 4 scelte disponibili per ogni portata. Alla fine viene stampato l'intero menù scelto.
#### Giocare una mano di morra cinese
Simulare un round di carta-forbice-sasso tra due giocatori e stampane l'esito.
#### Termometro
Scrivere un programma che legge da input un numero intero temp e stampa:

• “Freddo dannato” se temp è compreso fra −20 e 0
• “Freddo” se temp è compreso fra 1 e 15
• “Normale” se temp è compreso fra 16 e 23
• “Caldo” se temp è compreso fra 24 e 30
• “Caldo da morire” se temp è compreso fra 31 e 40
• “Non ci credo, il termometro deve essere rotto” se temp è superiore a 40 o inferiore a −20
#### Verificare su un anno è bisestile o no
Inserito in input un anno, calcolare se è bisestile o no.
Calcolo degli anni bisestili:

Un anno è bisestile se soddisfa le seguenti condizioni:

- È divisibile per 4.
- Se è divisibile per 100, deve essere anche divisibile per 400.
#### Numero del mese
Stampare il nome del mese corrispondente a un numero da 1 a 12.
### Livello avanzato
#### Orologio
Scrivere un programma che scrive in lettere i nomi italiani delle ore, approssimati per difetto a 15 minuti. Il programma deve prendere in input due valori interi, uno tra 1 e 12 (ore) e l’altro tra 0 e 59 (minuti) e se i valori dati in input non rispettano il vincolo stampa un messaggio di errore ed esce ritornando -1 come codice di errore. Se l’input è corretto, scrive “Sono le ore " seguito dal valore delle ore (p.es. se è 11 scrive “undici", ma se è 1 scrive “una") e dal valore dei minuti, approssimato al quarto d’ora (p.es. se è 18 scrive “ e un quarto", se è 39 scrive “ e mezza", se è 55 scrive “ e tre quarti"; se è 0 invece non scrive niente). Infine, se i minuti non sono divisibili esattamente per 15, scrive “ circa".
#### Equazione di secondo grado
Scrivere un programma che prende in input tre numeri reali, a, b e c e stampa le radici dell’equazione di secondo grado ax2 + bx + c. Attenzione alle radici immaginarie.

> [!hint] Suggerimento
> Radice di x: sqrt(x); aggiungere in testa al file: \#include \<cmath\>

#### Azienda spedizioni
Un'azienda di spedizioni vuole sviluppare un sistema per calcolare il costo di spedizione di un pacco in base al suo peso e alla destinazione. Le regole per il calcolo del costo sono le seguenti:

Peso del pacco:
- Leggero: se il peso è inferiore o uguale a 1 kg.
- Medio: se il peso è superiore a 1 kg ma inferiore o uguale a 5 kg.
- Pesante: se il peso è superiore a 5 kg ma inferiore o uguale a 20 kg.
- Molto Pesante: se il peso è superiore a 20 kg.

Destinazione:
- Nazionale: Spedizioni all'interno del paese.
- Internazionale: Spedizioni verso l'estero.
    
Tariffe di spedizione:

|   |   |   |   |   |   |   |   |
|---|---|---|---|---|---|---|---|
|Leggero|   |Medio|   |Pesante|   |Molto Pesante|   |
|Nazionale|Internazionale|Nazionale|Internazionale|Nazionale|Internazionale|Nazionale|Internazionale|
|5€|10€|10€|20€|15€|30€|25€|50€|

  

L'algoritmo deve prendere in input il peso del pacco e la destinazione, e restituire il costo di spedizione.
#### Promozioni nel negozio
Chiedi all'utente di inserire il prezzo di base di un prodotto, se il prodotto è in promozione (rispondendo con "sì" o "no"), e la categoria del prodotto (rispondendo con "A", "B" o "C"). Se il prodotto è in promozione, applica uno sconto del 10% per i prodotti di categoria A, del 15% per i prodotti di categoria B e del 20% per i prodotti di categoria C. Successivamente, calcola il prezzo finale aggiungendo una tassa del 22% sul prezzo scontato (se applicabile) o sul prezzo di base.

## Controllo del flusso (condizionale e cicli)
### Livello base
#### Calcolare la media di n numeri letti da input
Calcolare la media di n numeri letti da input, creare due varianti diverse, una col for e una col while o do-while.
#### Lettere maiuscole
Leggere lettere maiuscole finché l’utente non inserisce un carattere non maiuscolo e stampare la più piccola.
#### Stampare una successione di numeri con una determinata regola
#### Indovina la radice quadrata di un numero, riprovando finché non riesci
L'utente inserisce un numero n. Poi gli viene chiesto di indovinarne la radice quadrata, finché non riesce. Non utilizzare funzioni per calcolare la radice quadrata.
#### Stampare il carattere fornito n volte
Inserire in input un carattere e un numero intero n, stampare il carattere n volte.
### Livello medio
#### Conteggio unario
Scrivi un programma che chiede dei numeri interi positivi. Il programma stampa tante barre `|` quante il numero inserito su una nuova riga. Ogni volta il programma chiede all'utente se vuole uscire o inserire un altro numero.
#### Massimo K per somma di K
Scrivere un programma che riceva in ingresso un numero positivo N e determini il massimo intero K tale che la somma dei primi K interi sia minore o uguale a N.
#### Stampare i primi 5 anni bisestili a partire dall'anno inserito
Scrivi un algoritmo che chieda all'utente di inserire un numero intero positivo N e, successivamente, stampi i primi 5 anni bisestili strettamente superiori al numero acquisito.
Ad esempio: se inserisco l’anno 2198, l’output sarà: 2204 2208 2212 2216 2220
#### Calcolare il MCM di due numeri
Inseriti due numeri, calcolare il loro MCM.
#### Calcolare MCD di due numeri
Inseriti due numeri, calcolare il loro MCD.
#### Determinare se un numero è primo
Inserito un numero n determinare se è primo oppure no.
#### Convertire numero da binario a decimale
Inserire un numero binario e convertirlo in decimale.
#### Convertire numero da decimale a binario
Scrivere un programma che preso in input un numero in base 10 lo trasformi in binario.
#### Colore preferito
Scrivere un programma che chiede all'utente il suo colore preferito proponendo almeno 5 scelte di colori che iniziano con lettere diverse. Il colore viene scelto dall'utente con l'iniziale del colore, è indifferente se la lettera inserita è minuscola o maiuscola. Se la lettera inserita non corrisponde a nessun colore, il programma ricomincia da capo.
#### Giocare più mani di morra cinese
Scrivere un programma che faccia giocare più mani di morra cinese e che chieda agli utenti se vogliono continuare o no dopo ogni mano. Stampare ogni volta il punteggio dei due giocatori e quando si termina stampare il vincitore.
#### Trapezio di x
Scrivere un programma che legge due numeri interi positivi e stampa il trapezio rettangolo fatto di `x` con le basi lunghe quanto i numeri letti, e l'altezza pari alla differenza fra le basi più uno. Esempio con 5 e 9:
```
xxxxx
xxxxxx
xxxxxxx
xxxxxxxx
xxxxxxxxx
```

#### Triangolo di asterischi
Stampare un triangolo di asterischi con base di lunghezza data. Ad esempio se inserisco 3:
```
*
**
***
```
#### Generare una serie di numeri di Fibonacci fino a un certo numero n
Inserire un numero n e scrivere i primi n numeri della sequenza di Fibonacci. 
La sequenza di Fibonacci è una serie di numeri in cui ogni numero è la somma dei due numeri precedenti, a partire da 0 e 1. La sequenza inizia così: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34…  
Il primo numero della sequenza è 0, il secondo è 1. A partire dal terzo numero, ogni numero della sequenza è ottenuto sommando i due numeri precedenti. Ad esempio, il terzo numero è 1 (0 + 1), il quarto numero è 2 (1 + 1), il quinto numero è 3 (1 + 2), e così via.
#### Calcolare il fattoriale di un numero
Dato un numero n calcolare il suo fattoriale. Nel caso si sappiano usare le funzioni, calcolarlo con la ricorsione.
#### Somma, pari e dispari finché non inserisco zero
Scrivi un programma che chieda in input una serie di numeri interi positivi fino a quando l'utente inserisce il numero zero. Il programma deve calcolare e stampare la somma e la media di tutti i numeri inseriti (escludendo lo zero). Inoltre, il programma deve stampare il numero di numeri pari e dispari inseriti.
#### Massimo e minimo finché non inserisco zero
Scrivi un programma che chieda in input una serie di numeri interi positivi fino a quando l'utente inserisce il numero zero. Il programma deve calcolare e stampare il massimo e il minimo.
#### Rombo di asterischi
Scrivere un programma che chiede all'utente un numero intero positivo n e stampa un rombo di asterischi che ha sulla diagonale $2\times n+1$ caratteri. Ad esempio su 8 stampa:
```
        *
       *** 
      *****
     *******
    *********
   ***********
  *************
 ***************
*****************
 ***************
  *************
   ***********
    *********
     *******
      *****
       ***
        *
```
Che sulla diagonale ha 17 caratteri.
#### Sequenza di Collatz
Scrivere un algoritmo che:
1. Richieda all’utente di inserire un numero intero positivo.
2. Calcoli la sequenza di Collatz partendo da tale numero. Le regole sono:
    - Se il numero è pari, dividilo per 2.
    - Se il numero è dispari, moltiplicalo per 3 e aggiungi 1.
3. Continua il calcolo fino a quando il numero non diventa 1.
4. Durante l’esecuzione, il programma deve:
    - Stampare ogni valore della sequenza.
    - Contare il numero totale di passaggi necessari per raggiungere il 1.
    - Individuare e stampare il valore massimo raggiunto nella sequenza.
##### Soluzione
```cpp
#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Inserisci un numero intero positivo: ";
    cin >> n;
    
    if (n <= 0) {
        cout << "Il numero deve essere positivo." << endl;
        return 1;
    }
    
    int steps = 0;
    int maxVal = n;
    
    cout << "Sequenza: " << n;
    
    while (n != 1) {
        if (n % 2 == 0)
            n = n / 2;
        else
            n = n * 3 + 1;
        
        if (n > maxVal)
            maxVal = n;
        
        cout << " " << n;
        steps++;
    }
    
    cout << "\nNumero totale di passaggi: " << steps << endl;
    cout << "Valore massimo raggiunto: " << maxVal << endl;
    
    return 0;
}
```
#### Divisori
Realizzare uno schema di flusso che acquisisca da tastiera un numero intero positivo N e ne determini:
- tutti i divisori (eccetto sé stesso)
- il numero totale di divisori
- la somma di tutti i divisori
- il divisore più grande
- la classificazione di N come perfetto, abbondante o difettivo.
### Livello avanzato
#### Numero palindromo
Inserito un numero n verificare se è palindromo o no.
#### Scomposizione in fattori primi
Scrivere un programma che chiede all'utente un numero intero maggiore di 1 e ne stampa la scomposizione in fattori primi. Ad esempio su 392 stampa 392 = 2^3 x 7^ 2.
#### Numero di Armstrong
Verificare se un numero intero positivo dato in input è un numero di Armstrong. Un numero di Armstrong è uguale alla somma delle potenze n-esime delle cifre che lo compongono.
Ad esempio $153=1^3+5^3+3^3$ è un numero di Armstrong.
#### Numeri romani
Scrivere un programma che legge un numero intero positivo compreso tra 1 e 3000 e lo stampa in notazione romana.
#### Invertitore di numeri senza array
Scrivere un programma che chiede all'utente un numero intero positivo e lo stampa al contrario. Ad esempio 27458 diventa 85472.
##### Varianti
Aggiungere il supporto ai numeri negativi.
### Problemi complessi (per verifiche)
#### Minigioco a vita
L'utente inserisce i punti vita del personaggio (che devono essere strettamente maggiori di zero). A quel punto comincia un prototipo di gioco che dura 5 turni. Ad ogni turno l'utente vede la vita attuale del personaggio e quella massima inserita all'inizio (ad esempio se la vita attuale e' 20 e quella iniziale 50: 20/50) L'utente ogni turno puo' scegliere una mossa: Far combattere il personaggio e perdere 10 punti vita o far riposare il personaggio e guadagnare 20 punti vita. Se la vita del personaggio scende a 0 o sotto, stampa un messaggio "Sei morto" e termina il gioco. Se la vita del personaggio arriva o sale oltre i punti vita iniziali, stampa il messaggio "Completamente ripristinato" e imposta la sua vita attuale uguale a quella massima. Quando finiscono i turni e non sei morto, stampa il messaggio "Sei sopravvissuto".
#### Azienda spedizioni
Scrivere un programma che gestisce le spedizioni di un’azienda. Il programma dovrà:

1. Chiedere all’utente di inserire il numero di pacchi da spedire (N, intero positivo).
    
2. Per ciascun pacco (da 1 a N):
    
    - Richiedere il peso del pacco (in kg, valore positivo). Se il valore inserito non è positivo, richiedere nuovamente l’inserimento.
    - Richiedere la destinazione, che può essere:
        - **N** (o **n**) per spedizione nazionale
        - **I** (o **i**) per spedizione internazionale  
            Se il valore inserito non corrisponde a nessuna delle opzioni, richiedere nuovamente l’inserimento.
3. Determinare la categoria del pacco in base al peso:
    
    - **Leggero:** peso ≤ 1 kg
    - **Medio:** 1 < peso ≤ 5 kg
    - **Pesante:** 5 < peso ≤ 20 kg
    - **Molto Pesante:** peso > 20 kg
4. Calcolare il costo di spedizione per ciascun pacco in base alla seguente tabella:
    |Categoria|Nazionale|Internazionale|
    |---|---|---|
    |Leggero|5€|10€|
    |Medio|10€|20€|
    |Pesante|15€|30€|
    |Molto Pesante|25€|50€|
    
5. Per ogni pacco, stampare:
    
    - Numero del pacco
    - Peso inserito
    - Destinazione (stampare “Nazionale” o “Internazionale”)
    - Categoria determinata
    - Costo di spedizione
    
    Se il costo per un pacco supera 30€, stampare accanto al costo anche il messaggio: "Pacco costoso".
    
6. Al termine, stampare:
    
    - Il costo totale di tutte le spedizioni.
    - La media del costo per pacco.

Utilizzare cicli e strutture condizionali per gestire l’inserimento e la validazione dei dati, il calcolo delle tariffe e la stampa dei risultati.
#### Cassa negozio (Verifica fila A)
Realizza un programma che simuli il funzionamento della cassa di un negozio.

Il programma deve:

- Richiedere all'utente il numero di clienti.
- Per ciascun cliente, chiedere il numero di articoli acquistati.
- Per ogni articolo, acquisire il prezzo e la quantità.
- Calcolare il totale speso dal cliente e, se supera 100 euro, applicare uno sconto del 10% (facendolo notare).
- Visualizzare il totale speso da ogni cliente.
- Al termine, mostrare il totale incassato nella giornata e identificare il cliente che ha speso di più.
##### Soluzione
```cpp
#include <iostream>
#include <climits>
using namespace std;

int main() {
    int clienti;
    cout<<"Inserisci il numero di clienti"<<endl;
    do{
        cin>>clienti;
    }while(clienti<=0);

    int num_articoli;
    int totale_spesa_giornata=0;
    int spesa_max = INT_MIN;
    int cliente_max;

    for(int i=0; i<clienti; i++){
        cout<<"Inserisci il numero di articoli acquistati per il cliente "<<i+1<<endl;
        do{
            cin>>num_articoli;
        }while(num_articoli<=0);

        int totale_spesa_cliente = 0;

        for(int j=0; j<num_articoli; j++){
            int prezzo, quantita;
            cout<<"Cliente "<<i+1<<": inserisci il prezzo dell'articolo "<<j+1<<endl;
            do{
                cin>>prezzo;

            }while(prezzo<=0);

            cout<<"Cliente "<<i+1<<": inserisci la quantita' dell'articolo "<<j+1<<endl;
            do{
                cin>>quantita;
            }while(quantita<=0);

            totale_spesa_cliente += prezzo * quantita;
        }
        if(totale_spesa_cliente>100){
            totale_spesa_cliente = totale_spesa_cliente - totale_spesa_cliente * 0.10;
            cout<<"Applico sconto del 10%"<<endl;
        }
        cout<<"Totale spesa Cliente "<<i+1<<": "<<totale_spesa_cliente<<endl;
        totale_spesa_giornata+=totale_spesa_cliente;
        if(totale_spesa_cliente>spesa_max){
            spesa_max = totale_spesa_cliente;
            cliente_max = i+1;
        }
    }
    cout<<"Guadagno totale giornata: "<<totale_spesa_giornata<<endl;
    cout<<"Cliente che ha speso di più: Cliente "<<cliente_max<<"con una spesa di "<<spesa_max<<endl;

    return 0;
}

```
#### Corsa a tappe (Verifica fila B)
Realizza un programma che simuli una gara di corsa su tappe.

Il programma deve:

- Richiedere all’utente il numero totale di partecipanti.
- Per ciascun partecipante:
    - Richiedere il numero di tappe della gara.
    - Per ogni tappa, acquisire il tempo impiegato (in minuti).
    - Calcolare il tempo totale impiegato dal partecipante per completare la gara.
    - Se il tempo totale è inferiore a una soglia prefissata (ad esempio 180 minuti), visualizzare un messaggio di congratulazioni.
- Al termine, visualizzare il tempo totale di gara per ogni partecipante.
- Identificare il partecipante che ha completato la gara nel tempo minore (cioè il vincitore), mostrando il suo numero d’ordine e il tempo totale impiegato.
##### Soluzione
```cpp
#include <iostream>
using namespace std;

int main() {
    int numParticipants;
    cout << "Inserisci il numero totale di partecipanti: ";
    cin >> numParticipants;
    
    int winner = 0;
    int minTotalTime = 0;
    bool firstParticipant = true;
    
    // Elaborazione di ogni partecipante
    for (int i = 1; i <= numParticipants; i++) {
        int numStages;
        cout << "\nPartecipante " << i << " - Inserisci il numero di tappe: ";
        cin >> numStages;
        
        int totalTime = 0;
        // Elaborazione di ogni tappa per il partecipante corrente
        for (int j = 1; j <= numStages; j++) {
            int stageTime;
            cout << "Tappa " << j << " - Inserisci il tempo impiegato (in minuti): ";
            cin >> stageTime;
            totalTime += stageTime;
        }
        
        // Messaggio di congratulazioni se il tempo totale è inferiore a 180 minuti
        if (totalTime < 180) {
            cout << "Complimenti, hai completato la gara in meno di 180 minuti!" << endl;
        }
        
        // Visualizza il tempo totale del partecipante
        cout << "Partecipante " << i << " - Tempo totale: " << totalTime << " minuti." << endl;
        
        // Aggiorna il vincitore se necessario
        if (firstParticipant || totalTime < minTotalTime) {
            minTotalTime = totalTime;
            winner = i;
            firstParticipant = false;
        }
    }
    
    // Visualizza il vincitore della gara
    cout << "\nIl vincitore e' il partecipante " << winner 
         << " con un tempo totale di " << minTotalTime << " minuti." << endl;
    
    return 0;
}

```
#### Collatz con tentativi e numero max (Verifica fila A2)
Scrivi un programma che esegua le seguenti operazioni:

- L'utente inserisce un numero intero positivo.
- In ogni iterazione:
    - Se il numero è pari, lo divide per 2.
    - Se il numero è dispari, lo moltiplica per 3 e aggiunge 1.
- Il processo continua fino a quando il numero diventa 1 oppure sono state eseguite 50 iterazioni.
- Ad ogni iterazione, il programma stampa il valore corrente.
- Al termine, il programma visualizza se il numero 1 è stato raggiunto e quante iterazioni sono state effettuate oppure un messaggio che indica il mancato raggiungimento di 1 entro il limite. Stampa anche il valore massimo ottenuto durante il processo.
##### Soluzione

```cpp
#include <iostream>
using namespace std;

int main() {
    long long n;
    cout << "Inserisci un numero intero positivo: ";
    cin >> n;
    
    if(n <= 0) {
        cout << "Il numero deve essere positivo." << endl;
        return 1;
    }
    
    int iterations = 0;
    long long maxVal = n;
    
    cout << "Valore iniziale: " << n << endl;
    
    while(n != 1 && iterations < 50) {
        if(n % 2 == 0)
            n = n / 2;
        else
            n = n * 3 + 1;
        
        if(n > maxVal)
            maxVal = n;
        
        iterations++;
        cout << "Iterazione " << iterations << ": " << n << endl;
    }
    
    if(n == 1)
        cout << "Il numero 1 è stato raggiunto in " << iterations << " iterazioni." << endl;
    else
        cout << "Il numero 1 non è stato raggiunto entro 50 iterazioni." << endl;
    
    cout << "Il numero massimo ottenuto è: " << maxVal << endl;
    
    return 0;
}
```
#### Numero massimo di divisori (Verifica fila B2)
Scrivi un programma che esegua le seguenti operazioni:

- L'utente inserisce un numero intero positivo N.
- Per ogni numero da 1 a N:
    - Calcola quanti divisori ha il numero i.
    - Stampa il numero i insieme al conteggio dei suoi divisori.
- Al termine, il programma visualizza il numero che ha il maggior numero di divisori e il relativo conteggio.

##### Soluzione

```cpp
#include <iostream>
using namespace std;

int main() {
    int N;
    cout << "Inserisci un numero intero positivo: ";
    cin >> N;
    
    if (N <= 0) {
        cout << "Il numero deve essere positivo." << endl;
        return 1;
    }
    
    int maxDivisori = 0;
    int numeroMax = 0;
    
    // Ciclo per ogni numero da 1 a N
    for (int i = 1; i <= N; i++) {
        int divisori = 0;
        
        // Ciclo per contare i divisori di i
        for (int j = 1; j <= i; j++) {
            if (i % j == 0) {
                divisori++;
            }
        }
        
        // Stampa il numero e il suo conteggio di divisori
        cout << "Numero " << i << " ha " << divisori << " divisori." << endl;
        
        // Aggiorna il massimo se necessario
        if (divisori > maxDivisori) {
            maxDivisori = divisori;
            numeroMax = i;
        }
    }
    
    cout << "Il numero con il maggior numero di divisori e' " << numeroMax 
         << " con " << maxDivisori << " divisori." << endl;
    
    return 0;
}
```
#### Somma di numeri primi in serie
Scrivi un programma che esegua le seguenti operazioni:

- L'utente inserisce una serie di numeri finché non inserisce il numero zero.
- Calcola la somma di tutti i numeri primi presenti nella serie inserita

## Strutture dati di base
### Esercizi di riscaldamento
#### creaArrayInt
Crea un array di prova con elementi di tipo int. Scrivere un programma che dichiara un array di N interi e lo popola assegnando ad ogni elemento il valore calcolato come N‑i.
#### creaArrayFloat
Crea un array di float. Scrivere un programma uguale al precedente, ma che lavora su array di float.
#### stampaArrayInt
Stampa un array di interi. Scrivere un programma che, dato un array di interi e la sua lunghezza N, stampi tutti gli elementi.
#### stampaArrayFloat
Stampa un array di float. Scrivere un programma uguale al precedente, ma che lavora su array di float.
#### leggiArrayInt
Leggi un array di int da tastiera. Scrivere un programma che dichiara un array di N interi e lo popola leggendo i valori da input.
### Esercizi di base
#### Trova massimo e conteggio
Scrivere un programma che legge N interi in un array e stampa il valore massimo contenuto, insieme al numero di volte in cui questo appare.
#### Conta numeri pari e dispari
Scrivere un programma che legge N interi in un array e, con un opportuno messaggio, stampa il numero P dei numeri pari e il numero D di quelli dispari presenti.
#### reverse
Scrivere un programma che legge N interi in un array denominato “source” e copia in un array “dest” gli elementi di “source” in ordine inverso. Successivamente, stampare entrambi gli array (lasciando una riga vuota tra le stampe).
#### Crivello di Eratostene
Scrivere un programma che, utilizzando l’algoritmo del Crivello di Eratostene, trova i numeri primi minori di 1000. L’algoritmo prevede di inizializzare un array di booleani a true, marcare i multipli di ogni numero partendo da 2 e stampare i numeri che risultano primi.
#### Array bidimensionale (M×N riempito di 0)
Scrivere un programma che definisce due costanti, M pari a 5 e N pari a 8, dichiara un array bidimensionale di dimensioni M×N e lo riempie interamente di zeri.
#### Prodotto di matrici
Date due matrici compatibili al prodotto di matrici, eseguirne il prodotto riga per colonna.
#### Tavola pitagorica
Scrivere un programma che definisce una costante N pari a 10, dichiara un array bidimensionale per la tavola pitagorica (dimensioni N×N) e lo riempie in modo tale che l’elemento (i, j) contenga il prodotto tra i+1 e j+1. Successivamente, il programma chiede all’utente una coppia di valori compresi tra 1 e 10 e restituisce il loro prodotto, ottenuto consultando la tavola come look‑up table.
### Esercizi più avanzati
#### palyndrome
Scrivere un programma che legge un array e calcola un valore booleano che vale true se l’array è palindromo (cioè, se gli elementi letti da sinistra verso destra sono uguali a quelli letti da destra verso sinistra). Il programma deve poi stampare un messaggio che comunichi il risultato.

> [!hint]  Suggerimento
> Utilizzare il programma reverse per confrontare l’array originale con quello invertito.
#### Frequenza dei valori
Scrivere un programma che legge un array di interi e stampa la frequenza di ogni valore contenuto, ovvero il numero di volte che ciascun valore compare.
#### Secondo valore più elevato
Scrivere un programma che legge un array di interi e stampa il secondo valore più elevato presente nell’array.
#### Ordinamento con copia in un array ordinato
Scrivere un programma che legge un array di interi denominato “source” e copia il suo contenuto, ordinato in modo crescente, in un altro array “dest”. Infine, stampare l’array ordinato.
#### Ordinamento in modo crescente (in-place)
Scrivere un programma che legge un array di interi, riordina i suoi elementi in modo crescente senza utilizzare un array ausiliario, e lo stampa.
#### reverseinPlace
Scrivere un programma che legge un array di float e inverte l’ordine dei valori contenuti, senza utilizzare un array ausiliario.

> [!hint]  Suggerimento
> Basta eseguire degli swap fra le celle poste alla stessa distanza dagli estremi dell’array.
#### Rimozione dei duplicati contigui (con array ausiliario)
Scrivere un programma che legge un array di interi positivi e, scorrendolo da inizio a fine, elimina tutte le occorrenze contigue duplicate, lasciando una sola occorrenza per ciascuna sequenza. Gli elementi rimanenti devono essere azzerati; infine, il programma stampa tutti gli elementi non zero.  
(Esempio: da “1 1 1 2 3 3 4” si ottiene “1 2 3 4 0 0 0”.)
#### Rimozione dei duplicati contigui in-place
Scrivere un programma che realizza quanto richiesto nell’esercizio precedente senza utilizzare array ausiliari, ovvero modificando l’array in-place.
#### Tavola pitagorica compatta
Scrivere un programma che usa un array monodimensionale per rappresentare la tavola pitagorica in modo compatto, sfruttando la simmetria (gli elementi sopra la diagonale sono speculari a quelli sotto). Il numero di elementi necessari è N(N+1)/2 e il comportamento del programma deve essere identico a quello dell’esercizio tradizionale sulla tavola pitagorica.
#### Tris
Implementa il gioco del tris.
### Approfondimenti – Esercizi di riscaldamento
#### SequentialSearch
Scrivere un programma che effettua la ricerca di un elemento intero in un array di 15 interi, restituendo la posizione in cui è trovato oppure un messaggio di “non trovato”.
#### BinarySearch
Scrivere un programma che effettua la ricerca binaria di un elemento intero in un array di 15 interi ordinati.

> [!hint]  Suggerimento
> La ricerca binaria funziona solo su array ordinati.
#### SelectionSort
Scrivere un programma che ordina un array utilizzando l’algoritmo Selection Sort, che seleziona iterativamente l’elemento minimo e lo scambia con quello in posizione corrente.
#### Ordine decrescente (20 numeri)
Scrivere un programma che prende in input 20 numeri interi e li stampa in ordine decrescente.
#### readMatrix
Scrivere un programma che permette di riempire una matrice di interi di dimensioni M×N (con M = 3 e N = 4) leggendo i valori da input.
#### printMatrix
Scrivere un programma che stampa su output una matrice di interi di dimensioni M×N (con M = 3 e N = 4).
### Approfondimenti – Esercizi di base

#### Modifica degli esercizi di ricerca con conteggio accessi
Modificare gli esercizi di SequentialSearch e BinarySearch in modo da contare il numero di accessi all’array e stampare tale conteggio al termine dell’esecuzione.
### Approfondimenti – Esercizi più avanzati
#### Rappresentazione binaria in un array
Dato un numero intero positivo minore di 2N, scrivere un programma che memorizza la sua rappresentazione binaria in un array di lunghezza N e stampa il vettore risultante.
#### shiftLeft
Scrivere un programma che esegue lo shift verso sinistra degli elementi di un vettore: ogni elemento viene spostato nella posizione immediatamente precedente, il primo elemento viene eliminato e l’ultimo sostituito da 0.  
(Esempio: [1, 10, 15, 18] diventa [10, 15, 18, 0]).
#### rotateRight
Scrivere un programma che esegue la rotazione verso destra degli elementi di un vettore: ogni elemento viene spostato nella posizione immediatamente successiva, con il primo elemento sostituito dall’ultimo.  
(Esempio: [1, 10, 15, 18] diventa [18, 1, 10, 15]).
#### shiftN/rotateN
Modificare i programmi shiftLeft e rotateRight per ottenere shiftN e rotateN che, dato un numero intero N (positivo o negativo), traslano o ruotano il vettore di |N| posizioni.

> [!hint]  Suggerimento
> Per rotate, se |N| è maggiore della lunghezza dell’array, usare N modulo lunghezza.
#### Gioco del tris
Scrivere un programma che implementa il gioco del tris, utilizzando una matrice 3×3 per rappresentare la griglia e gestendo il turno alternato di due giocatori umani.
#### Gioco “Forza 4”
Scrivere un programma che implementa il gioco “Forza 4”.
#### Tris con computer
Modificare il programma del tris in modo che uno dei giocatori sia il computer, che sceglie casualmente tra le caselle libere.
#### Mastermind
Scrivere un programma che implementa il gioco “Mastermind”, seguendo le regole e le modalità tipiche di questo gioco.
## Funzioni e modularizzazione
#### Distributore automatico
Implementare un distributore automatico di merendine.
#### Gestione magazzino  
Crea un array  che gestisca l'inventario di un magazzino utilizzando un array statico di struct chiamate "oggetto". La struct dovrà contenere campi quali codice identificativo, nome, quantità e prezzo. Il programma dovrà prevedere funzioni separate per inserire un nuovo oggetto, ricercare e stampare le informazioni di un oggetto tramite il codice, visualizzare tutti gli oggetti presenti nell'inventario e cancellare un oggetto, aggiornando di conseguenza l'array. Modularizzare quanto più possibile il codice utilizzando le funzioni.

##### Soluzione
```cpp
#include<iostream>

using namespace std;

  

struct oggetto{

int id=-1;

string nome;

int qta;

float prezzo;

};

  

const int dimensione=10;

oggetto oggetti[dimensione];

  

bool isEmpty(oggetto oggetto);

bool inserisciOggetto(oggetto oggetto);

void stampaOggetto(oggetto oggetto);

void visualizzaOggetti();

void stampaOggettoId(int id);

void eliminaOggettoId(int id);

  
  
  

int main(int argc, const char** argv) {

oggetto o1,o2;

  

o1.id=1;

o1.nome="focaccia";

o1.qta=3;

o1.prezzo=2;

  

o2.id=2;

o2.nome="pizza";

o2.qta=4;

o2.prezzo=5;

  

inserisciOggetto(o1);

inserisciOggetto(o2);

  

// stampaOggettoId(2);

eliminaOggettoId(2);

stampaOggettoId(2);

return 0;

}

  

bool isEmpty(oggetto oggetto){

return oggetto.id == -1;

}

  

bool inserisciOggetto(oggetto oggetto){

for (int i=0; i<dimensione; i++){

if (isEmpty(oggetti[i])){

oggetti[i] = oggetto;

return true;

}

}

return false;

}

  

int ricercaOggetto(int id){

for (int i=0; i<dimensione; i++){

if(oggetti[i].id == id){

return i;

}

}

return -1;

}

  

void eliminaOggettoId(int id){

int indiceOggetto = ricercaOggetto(id);

if(indiceOggetto >= 0){

oggetti[indiceOggetto].id = -1;

}

}

  

void stampaOggettoId(int id){

int indiceOggetto = ricercaOggetto(id);

if(indiceOggetto >= 0){

stampaOggetto(oggetti[indiceOggetto]);

}

}

  

void stampaOggetto(oggetto oggetto){

cout<<"Id oggetto:"<<oggetto.id<<endl;

cout<<"Nome oggetto:"<<oggetto.nome<<endl;

cout<<"Quantita':"<<oggetto.qta<<endl;

cout<<"Prezzo:"<<oggetto.prezzo<<"€"<<endl;

}

  

void visualizzaOggetti(){

for (oggetto oggetto:oggetti){

if(!isEmpty(oggetto)){

stampaOggetto(oggetto);

cout<<endl;

}

}

}
```
#### Operazioni statistiche su array di struct
Crea un programma che gestisca i punteggi di un gioco di un gruppo di persone. Per ogni persona deve essere registrato il nome e il punteggio. Implementa le funzioni per:
- Inserire un nuovo nome e punteggio
- Modificare un punteggio esistente
- Cercare e restituire una persona
- Eliminare una persona
- Stampare tutti i dati
- Stampare la somma dei punteggi
- Stampare la media dei punteggi
- Stampare la persona con punteggio maggiore e il suo punteggio
#### Quiz
Scrivi un programma che implementi un quiz a scelta multipla basato su un array di struct. Ogni elemento dell’array rappresenta una domanda e contiene:

- il **testo** della domanda
- un array di 3 possibili risposte
- un indice (0, 1 o 2) della risposta corretta

Il programma deve:

1. Definire la struct `Question` con i campi richiesti.
2. Creare un array di almeno 5 domande (hard‑coded), includendo per ciascuna il testo e le 3 opzioni. Potete utilizzare questo codice per inizializzare:
```cpp
   array<Question, 5> quiz = {{
        {
            "Qual è il colore del cielo in una giornata serena?",
            {"Rosso", "Verde", "Blu"},
            2
        },
        {
            "Quale animale abbaia?",
            {"Gatto", "Cane", "Uccello"},
            1
        },
        {
            "Quale di questi linguaggi è compilato?",
            {"C++", "JavaScript", "Python"},
            0
        },
        {
            "Quale pianeta è il terzo dal Sole?",
            {"Venere", "Terra", "Marte"},
            1
        },
        {
            "Quale stagione segue la primavera?",
            {"Estate", "Inverno", "Autunno"},
            0
        }
    }};
```
3. Per ogni domanda:
    - stampare il testo e le 3 opzioni numerate 1–3
    - leggere la scelta dell’utente (gestire input fuori range)
    - verificare se la scelta corrisponde all’indice corretto
    - aggiornare il punteggio
4. Al termine, stampare il numero di risposte corrette su totale.
##### Soluzione

```cpp
#include <iostream>
#include <string>
#include <array>
#include <limits>

using namespace std;

// struct che rappresenta una domanda a scelta multipla
struct Question {
    string text;
    array<string, 3> options;
    int correctIndex; // 0-based
};

// chiede all’utente di rispondere a q e restituisce 1 se corretto, 0 altrimenti
int askQuestion(const Question& q) {
    cout << q.text << "\n";
    for (int i = 0; i < 3; ++i) {
        cout << "  " << (i + 1) << ") " << q.options[i] << "\n";
    }

    int choice;
    while (true) {
        cout << "Your answer (1-3): ";
        if (cin >> choice && choice >= 1 && choice <= 3) {
            break;
        }
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
        cout << "Invalid input. Please enter a number between 1 and 3.\n";
    }

    return (choice - 1 == q.correctIndex) ? 1 : 0;
}

int main() {
    array<Question, 5> quiz = {{
        {
            "Qual è il colore del cielo in una giornata serena?",
            {"Rosso", "Verde", "Blu"},
            2
        },
        {
            "Quale animale abbaia?",
            {"Gatto", "Cane", "Uccello"},
            1
        },
        {
            "Quale di questi linguaggi è compilato?",
            {"C++", "JavaScript", "Python"},
            0
        },
        {
            "Quale pianeta è il terzo dal Sole?",
            {"Venere", "Terra", "Marte"},
            1
        },
        {
            "Quale stagione segue la primavera?",
            {"Estate", "Inverno", "Autunno"},
            0
        }
    }};

    int score = 0;
    cout << "Benvenuto al quiz! Rispondi digitando 1, 2 o 3.\n\n";

    for (size_t i = 0; i < quiz.size(); ++i) {
        cout << "Domanda " << (i + 1) << ":\n";
        score += askQuestion(quiz[i]);
        cout << "\n";
    }

    cout << "Hai risposto correttamente a " << score
         << " domande su " << quiz.size() << ".\n";

    return 0;
}
```
#### Teatro
Scrivi un programma che gestisca la prenotazione di posti in un teatro con 5 file e 10 colonne, usando un array bidimensionale di `Seat`. Ogni `Seat` deve contenere un campo `SeatCategory category` (Standard, Premium, VIP) e un campo `std::string name`. Il programma deve fornire le funzioni:

- funzione per verificare se il posto è già prenotato
- funzione per prenotare il posto se non è già prenotato
- funzione per stampare l'elenco di prenotazioni con i nomi e il tipo di posto prenotato, oltre che il totale di posti prenotati
- funzione per cancellare la prenotazione se presente
- funzione per stampare la pianta mostrando per ogni posto `[V]`/`[P]`/`[S]` se libero o `[X]` se occupato

Il `main()` deve inizializzare la sala, poi mostrare un menu ripetuto con opzioni
1) Prenota posto
2) Cancella prenotazione
3) Visualizza piantina
4) visualizza prenotazioni
5) Esci e invocare le funzioni corrispondenti fino a uscita.
##### Soluzione
```cpp
#include <iostream>
#include <string>
using namespace std;
enum SeatCategory { Standard, Premium, VIP };
const int ROWS = 5;
const int COLS = 10;
struct Seat { SeatCategory category; string name; };
Seat hall[ROWS][COLS] = {
    { {VIP,""},{VIP,""},{VIP,""},{VIP,""},{VIP,""},{VIP,""},{VIP,""},{VIP,""},{VIP,""},{VIP,""} },
    { {Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""} },
    { {Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""},{Premium,""} },
    { {Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""} },
    { {Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""},{Standard,""} }
};
bool isBooked(const Seat& s) { return !s.name.empty(); }
bool bookSeat(int r,int c,const string& name) {
    if(r<0||r>=ROWS||c<0||c>=COLS||isBooked(hall[r][c])) return false;
    hall[r][c].name = name; return true;
}
bool cancelSeat(int r,int c) {
    if(r<0||r>=ROWS||c<0||c>=COLS||!isBooked(hall[r][c])) return false;
    hall[r][c].name.clear(); return true;
}
string categoryToString(SeatCategory c) {
    return c==VIP?"VIP":c==Premium?"Premium":"Standard";
}
void printHall() {
    cout<<"   "; for(int c=0;c<COLS;++c) cout<<c+1<<" "; cout<<"\n";
    for(int r=0;r<ROWS;++r) {
        cout<<r+1<<"  ";
        for(int c=0;c<COLS;++c) {
            if(!isBooked(hall[r][c])) {
                char label = hall[r][c].category==VIP?'V':hall[r][c].category==Premium?'P':'S';
                cout<<"["<<label<<"] ";
            } else {
                cout<<"[X] ";
            }
        }
        cout<<"\n";
    }
}
void printReservations() {
    int count=0;
    cout<<"Elenco prenotazioni:\n";
    for(int r=0;r<ROWS;++r) for(int c=0;c<COLS;++c) if(isBooked(hall[r][c])) {
        cout<<"Fila "<<r+1<<" Col "<<c+1<<": "<<hall[r][c].name
            <<" ("<<categoryToString(hall[r][c].category)<<")\n";
        ++count;
    }
    cout<<"Totale prenotati: "<<count<<"\n";
}
int main() {
    int choice=0;
    while(choice!=5) {
        cout<<"Menu:\n";
        cout<<"1) Prenota\n";
        cout<<"2) Cancella\n";
        cout<<"3) Visualizza pianta\n";
        cout<<"4) Elenco prenotazioni\n";
        cout<<"5) Esci\n";
        cout<<"Scelta: "; cin>>choice;
        if(choice==1) {
            int r,c; string name;
            cout<<"Fila: "; cin>>r;
            cout<<"Colonna: "; cin>>c;
            cin.ignore();
            cout<<"Nome: "; getline(cin,name);
            cout<<(bookSeat(r-1,c-1,name)
                  ?"Prenotazione confermata.\n"
                  :"Prenotazione fallita.\n");
        } else if(choice==2) {
            int r,c;
            cout<<"Fila: "; cin>>r;
            cout<<"Colonna: "; cin>>c;
            cout<<(cancelSeat(r-1,c-1)
                  ?"Cancellazione confermata.\n"
                  :"Cancellazione fallita.\n");
        } else if(choice==3) {
            printHall();
        } else if(choice==4) {
            printReservations();
        } else if(choice!=5) {
            cout<<"Scelta non valida.\n";
        }
    }
    cout<<"Fine.\n";
    return 0;
}

```
## Input/Output da file