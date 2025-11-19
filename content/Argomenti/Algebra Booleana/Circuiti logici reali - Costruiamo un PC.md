 > [!NOTE] Autore
> Prof. Davide Daffonchio
> Alcuni appunti e immagini dei circuiti reali sono tratti da [edutecnica.it]()


> [!warning] Attenzione
> Prima di studiare questa dispensa, hai bisogno di studiare le basi dell'algebra di Boole: [[Dispensa sull'algebra di Boole e circuiti logici]]
##  Introduzione
Questa dispensa segue un percorso completo per comprendere e costruire tutti i circuiti logici fondamentali che costituiscono l’architettura di un computer. L’obiettivo è mostrare come, partendo esclusivamente da porte logiche elementari, sia possibile arrivare a realizzare unità aritmetiche, dispositivi di memoria, sistemi di controllo e infine un processore funzionante. Il metodo è incrementale: ogni circuito introduce un concetto nuovo e fornisce il blocco costruttivo necessario per il successivo. In questo modo l’intero sistema emerge in modo naturale, come risultato della composizione di componenti semplici ma estremamente potenti.
La progressione di questa dispensa segue quella del gioco [nandgame.com]().
## Aritmetica
###  Sommatore binario

> [!author] Fonte
> https://www.edutecnica.it/sistemi/sommatori/sommatori.htm

####  Introduzione

L’addizione è la più elementare delle operazioni aritmetiche; l’addizione è più o meno la sola cosa che i computer fanno. L’unico problema è riuscire a costruire qualcosa che produca delle somme col sistema binario, dato che tutte le macchine sono basate su questo sistema numerico.

Sommare numeri binari è più o meno come sommare numeri decimali. Per sommare due numeri come 245 e 673, si scompone il problema in passi più semplici. Ogni passo richiede soltanto di sommare una coppia di cifre decimali. In questo esempio si comincerebbe con 5 più 3, e così via.

I sommatori binari sono reti combinatorie che ricevono in ingresso **n bit** degli addendi da sommare e generano in uscita i bit della somma binaria con il relativo riporto. Si tratta, dunque, di un tipico esempio di rete combinatoria con ingressi multipli e uscite multiple, strutturata in modo da seguire il meccanismo secondo cui avviene la somma binaria.

####  Tipi di sommatori

Introduciamo, pertanto, i due blocchi funzionali fondamentali che sono:

- **Semi4 binario (HA - Half Adder)**: senza riporto in ingresso.
- **Sommatore binario (FA - Full Adder)**: con riporto in ingresso.

####  Circuito Semisommatore (HA)

La differenza tra la somma in decimale e la somma in binario è che per quest'ultimo sistema lo schema per la somma è molto più semplice:
0 + 0 = 0
0 + 1 = 1
1 + 0 = 1
1 + 1 = 0 con riporto di 1

Questa logica corrisponde alla tabella della verità della porta XOR (a parte la questione del riporto che deve essere risolta).

![[fcf44d3ab12f26cbb5e97443c594c43f_MD5.jpeg]]

Per gestire anche il riporto, questo circuito deve essere modificato in modo da risolvere la seguente tabella della verità:
![[44e7d070f3cba39d82500c24a0917cb8_MD5.jpeg]]
- **A** e **B** sono i bit da sommare.
- **S** è il bit della somma.
- **C** è il bit del riporto.


Abbiamo così costruito il semisommatore o **Half-Adder**.


####  Circuito Sommatore (FA)

Il dispositivo creato si chiama semi-sommatore (half-adder). Questo nome deriva dal fatto che per ottenere la somma completa (full-adder) tra due numeri di più cifre, oltre ai bit dello stesso ordine occorre sommare anche il riporto eventualmente ottenuto dai due bit di ordine immediatamente inferiore.

- **Ingressi**: i due bit **A** e **B** da sommarsi e il riporto **C**.
- **Uscite**: il bit di somma e il riporto per il sommatore successivo.

![[308ee129c6dc461ac15d1c95c5624572_MD5.jpeg]]

Dalla tabella di verità è possibile dedurre la funzione logica della somma eseguita di questo circuito combinatorio:

$S = \overline{A} \, \overline{B} \, C_i + \overline{A} B \, \overline{C_i} + A \, \overline{B} \, \overline{C_i} + A B C_i$

$S = C_i (\overline{A} \, \overline{B} + A B) + \overline{C_i} (\overline{A} B + A \, \overline{B})$

$S = C_i \, \overline{(A \oplus B)} + \overline{C_i} \, (A \oplus B)$

$S = (A \oplus B) \oplus C_i$

mentre la funzione logica del riporto è la seguente:

$C_o = \overline{A} B C_i + A \overline{B} C_i + A B \overline{C_i} + A B C_i$

$C_o = C_i (\overline{A} B + A \overline{B}) + A B (\overline{C_i} + C_i)$

$C_o = C_i (A \oplus B) + A B$

####  Sommatore Parallelo

Quando si vogliono sommare numeri di più bit ciascuno, il metodo più semplice è quello di realizzare un **sommatore parallelo**. 
![[51529a5f41b1f9a0769f199e948e1693_MD5.jpeg]]
Questo viene costruito mettendo in cascata tanti Full Adder (FA) quanti sono i bit di ciascun numero binario da sommare.

Se utilizziamo numeri di 4 bit (nibble), i quattro bit di ciascun numero vengono presentati simultaneamente all'ingresso del sommatore parallelo. Nel caso migliore, la somma avviene simultaneamente se non ci sono riporti. Nel caso peggiore, invece, in cui ad ogni somma corrisponde un riporto, si avrà che questo bit traslerà dal primo HA a tutti gli altri FA fino all'ultimo.

Questo è uno schema completo di un sommatore a 4 bit che usa solo porte elementari ed in cui i numeri da sommare sono individuati dalle posizioni degli otto deviatori:

![[1ad6471b63cd2b6c56d9303f7935b843_MD5.jpeg]]
In questo circuito manca il riporto finale che va in overflow.
###    Sottrattori binari
La sottrazione, nei sistemi digitali moderni, non viene implementata tramite circuiti dedicati: si sfrutta invece lo stesso circuito usato per l’addizione. Per ottenere A − B si trasforma prima B nel suo complemento e poi si esegue una comune somma binaria. In questo modo l’operazione di sottrazione viene ricondotta a un’unica struttura hardware, evitando la necessità di circuiti separati e semplificando l’architettura complessiva.

![[ebd31e412d0091b89a91f851d20d5d6f_MD5.jpeg]]

L’eventuale riporto ottenuto dalla somma dei bit significativi deve essere aggiunto alla somma dei bit meno significativi.  
Il riporto si ha solo nel caso in cui il minuendo è maggiore del sottraendo e mai nel caso opposto.

**Caso A** – minuendo maggiore del sottraendo  
![[1482b9ef70a223cdb7cf5c5bc6f39a9e_MD5.jpeg]]

**Caso B** – minuendo minore del sottraendo  
![[b9f4127311d9c62864e7d9d96ffffe29_MD5.jpeg]]

Nel secondo caso, il risultato è negativo (poiché minuendo < sottraendo). Per ottenere il modulo, basta complementare nuovamente a 1 il risultato.  
Esempio: 1100 → complemento a 1 = 0011 → (3)₁₀

Il circuito deve quindi essere in grado di complementare un addendo e di tener conto del riporto causato dalla somma dei due bit più significativi.  
Partendo da un sommatore semplice, un circuito capace di eseguire la sottrazione con il metodo del **complemento ad 1** può essere schematizzato così:

![[49d000ab4f74955cd67ef59a85240cd7_MD5.jpeg]]

L’uscita C₃ costituisce il riporto ottenuto dalla somma di A₃ e B₃, mentre C₀ è l’ingresso da sommare con A₀ e B₀.

![[ba6e7d8daf9eea442b6586d2433f879c_MD5.jpeg]]

Per permettere al circuito di funzionare sia da sommatore che da sottrattore, occorre aggiungere un **comando** che:

- complementi o meno uno dei due nibble;
- abiliti o meno la somma dell’ultimo riporto con i bit meno significativi.

L’operazione di complementazione a 1 su un singolo bit può essere eseguita da una **porta XOR**.

Quando la variabile X = 1, la variabile A viene complementata; quando X = 0, A resta invariata.  
La variabile X applicata a ogni singolo bit del sottraendo B è determinata dalla posizione del selettore P.

L’eventuale bit di riporto C₃ deve coincidere con il riporto in ingresso Cᵢ.  
Il dispositivo è quindi costituito da **4 full-adder**, non da 3 FA e 1 HA.

![[1e1845e2fbb1989509866ffbae4a01d3_MD5.jpeg]]

Nel caso in cui l’operazione sia una sottrazione (P=1) e il risultato negativo (C₃=0), deve essere eseguita una **complementazione finale**.  
Questo può essere effettuato con la stessa struttura di porte prevista sull’operando B.

![[417de07d8b8d11e63b863d5c090143c6_MD5.jpeg]]

Come visto nei sistemi digitali, i numeri interi relativi si rappresentano con il [[Codifica delle informazioni#2.6 Rappresentazione dei numeri negativi il complemento a 2|complemento a 2]], utilizzando il bit più pesante come **bit di segno**:  
0 → numero positivo  
1 → numero negativo

Esempio per un sistema a 4 bit:

![[d23276f5237eed75bd9a1277ae89f675_MD5.jpeg]]

I circuiti sommatori sono indispensabili anche in questo caso. Il circuito seguente permette di eseguire il **complemento a 2** di un numero a 4 bit.  
Se A₀ = 1 si ha la complementazione a 2 dei bit in ingresso X; se A₀ = 0 il numero rimane invariato.

![[b7a973de578dc6120275f9df90a609f6_MD5.jpeg]]

Esempio:  
Numero +5 = 0101  
Dopo la complementazione (A₀ = 1):  
![[45a68b168e41b903f565a931e896e286_MD5.jpeg]]  
Risultato: 1011 = -5

Nel sistema binario a complemento a 2, la differenza tra due numeri positivi si ottiene complementando a 2 il sottraendo e sommando il risultato al minuendo.

Il circuito può anche essere usato per ricavare il **modulo** di un numero in ingresso: se il numero è negativo, il bit X₃ pilota l’ingresso di complementazione A₀.  
Esempio: per calcolare |1101₍C2₎| → A₀ = X₃

![[5567723d08e1b5714e520cd6bf2f2f03_MD5.jpeg]]

Infatti 1101₍C2₎ = -3 → |−3| = 3 = 0011₍C2₎

Per effettuare l’operazione A ± |B| con A positivo e B positivo in complemento a 2, in un sistema a 4 bit, possiamo collegare i dispositivi precedenti così:

![[2120a628f152cfb8100b913b1c6fb2e8_MD5.jpeg]]

Una volta implementata la sottrazione, abbiamo di fatto realizzato una **unità aritmetico-logica (ALU)**, poiché la moltiplicazione è una somma ripetuta e la divisione una sottrazione ripetuta.
###  Increment

L’operazione di incremento aumenta di uno il valore binario in ingresso. Per realizzarla non è necessario un circuito dedicato: è sufficiente sfruttare direttamente il comportamento del sommatore già introdotto.

Incrementare equivale a eseguire:

```
X + 1
```

Per ottenere questo risultato si collega:

- il numero da incrementare all’ingresso A,
    
- il valore **000…0000** all’ingresso B,
    
- e si imposta il **carry-in iniziale a 1**.
    

Il sommatore esegue automaticamente l’incremento tramite la normale propagazione dei riporti.

Esempio a 4 bit:

```
 A:   0111
 B:   0000
Cin:     1
--------------
 S:   1000
```

Il carry iniziale avvia l’addizione con 1, e i riporti si propagano tra i bit finché necessario. Il risultato è un incremento ottenuto in modo semplice ed efficiente sfruttando esclusivamente la logica del sommatore.
![[increment.png]]
###  Equal to Zero
Questo circuito verifica se un numero binario in ingresso è uguale a zero. L’idea è semplice: se almeno uno dei bit è pari a 1, allora il numero non è zero; se tutti i bit sono 0, allora l’ingresso rappresenta effettivamente lo zero.
Il comportamento si ottiene combinando i bit tramite un’operazione di OR multi-bit. L’uscita dell’OR sarà:
* 1 se almeno un bit è uguale a 1
* 0 se tutti i bit sono 0
Per ottenere il segnale “uguale a zero” si applica una negazione a questo risultato.
Esempio a 4 bit:
```
Input: 0000
OR → 0
NOT → 1   (il numero è zero)
```
Altro esempio:
```
Input: 0101
OR → 1
NOT → 0   (il numero non è zero)
```
Il circuito finale è quindi costituito da:
1. una serie di OR che combinano tutti i bit dell’ingresso
2. una singola NOT sull’uscita dell’OR
Il risultato è un segnale a 1 quando il numero è esattamente zero.
![[equal_to_zero.png]]
###  Less than Zero
Questo circuito determina se un numero binario rappresentato in complemento a 2 è negativo. Nei sistemi digitali il segno di un numero è indicato dal bit più significativo (MSB):
* **0** → numero positivo
* **1** → numero negativo
Di conseguenza, per verificare se un valore è minore di zero non serve alcun calcolo: è sufficiente osservare direttamente l’MSB.
Esempio a 4 bit:
```
1001  → negativo
0110  → positivo
```
Il circuito è quindi estremamente semplice: l’uscita corrisponde al valore del bit più significativo.
Se l’MSB è 1, il numero è minore di zero; se è 0, è maggiore o uguale a zero.
![[less_than_zero.png]]

## Switching
###  Multiplexer (MUX) (Selector)

Un **multiplexer** (abbreviato in MUX) è un circuito logico combinatorio che seleziona uno tra molteplici ingressi e lo indirizza verso una singola uscita. Questa selezione è governata da specifici segnali di controllo, detti **linee di selezione**.
Immaginalo come un interruttore elettronico: in base a un comando (le linee di selezione), decide quale ingresso "passare" all'uscita.

####  Come Funziona?

1. **Ingressi:** $2^n$ ingressi ($A, B, C, D$), che rappresentano i dati tra cui scegliere.
2. **Linee di selezione:** $n$ linee di selezione ($P_1, P_2$) che servono per indicare quale ingresso attivare.
3. **Uscita:** L’uscita ($Y$) è il valore dell’ingresso selezionato.

---

####  Multiplexer 2-a-1
![[mux_2_1.png]]
Un **multiplexer 2-a-1** è il tipo più semplice di multiplexer. Ha:

- **2 ingressi**: $A$ e $B$,
- **1 linea di selezione**: $P$, che decide quale dei dati in ingresso viene inviato all'uscita,
- **1 uscita**: $Y$, che rappresenta l'ingresso selezionato.

#####  Schema Logico del MUX 2-a-1

La funzione logica del MUX 2-a-1 è:

$$Y=A \cdot P + B \cdot \overline{P}$$

- Quando $P = 0$, l'uscita è uguale a $B$.
- Quando $P = 1$, l'uscita è uguale a $A$.

#####  Tabella della Verità del MUX 2-a-1

|Linea di selezione $P$|Ingresso $A$|Ingresso $B$|Uscita $Y$|
|---|---|---|---|
|0|0|0|0|
|0|0|1|1|
|0|1|0|0|
|0|1|1|1|
|1|0|0|0|
|1|0|1|0|
|1|1|0|1|
|1|1|1|1|

---

####  Multiplexer 4-a-1
![[mux_4_1.png]]
Un **multiplexer 4-a-1**:

- Ha **4 ingressi** ($A, B, C, D$).
- Ha **2 linee di selezione** ($P_1$ e $P_2$) per scegliere uno degli ingressi.
- Ha **1 uscita** ($Y$).

Le linee di selezione determinano quale ingresso passa all'uscita:

- Se $P_1 = 0$ e $P_2 = 0$, l’ingresso $A$ viene inviato all’uscita.
- Se $P_1 = 0$ e $P_2 = 1$, viene inviato $B$.
- Se $P_1 = 1$ e $P_2 = 0$, l’ingresso $C$ viene inviato all’uscita.
- Se $P_1 = 1$ e $P_2 = 1$, l’ingresso $D$ viene inviato all’uscita.

#####  Espressione logica del MUX 4 a 1

L'espressione logica del MUX 4 a 1 è dunque:  
$$Y = A \cdot \overline{P_1} \cdot \overline{P_2} + B \cdot \overline{P_1} \cdot P_2 + C \cdot P_1 \cdot \overline{P_2} + D \cdot P_1 \cdot P_2$$

#####  Tabella di verità

Ecco la tabella di verità per un MUX 4 a 1:

| $P_1$ | $P_2$ | $A$ | $B$ | $C$ | $D$ | $Y$ (uscita) |
| :---: | :---: | :-: | :-: | :-: | :-: | :----------: |
|   0   |   0   | $A$ |  X  |  X  |  X  |     $A$      |
|   0   |   1   |  X  | $B$ |  X  |  X  |     $B$      |
|   1   |   0   |  X  |  X  | $C$ |  X  |     $C$      |
|   1   |   1   |  X  |  X  |  X  | $D$ |     $D$      |

- $X$ indica che quel valore è irrilevante, poiché non influisce sull’uscita.
####  Altri multiplexer
Posso creare multiplexer con un qualunque numero di dati in ingresso, ricordando di avere $n$ linee di selezione e $2^n$ linee di dati.
###  Demultiplexer (DMUX) (Switch)
Il **demultiplexer** è il circuito complementare al multiplexer. Mentre il multiplexer seleziona uno tra più ingressi e lo invia a un’unica uscita, il demultiplexer prende **un solo ingresso** e lo indirizza verso **una delle due uscite** in base a un segnale di controllo.
Per questo motivo viene anche chiamato **1-a-2**, oppure semplicemente **switch**.
Il comportamento è il seguente:
* se il segnale di controllo è 0, l’ingresso viene inviato all’uscita 0
* se il segnale di controllo è 1, l’ingresso viene inviato all’uscita 1
L’uscita non selezionata rimane forzata a 0.
####  Funzionamento logico
Indichiamo con:
* **I** l’ingresso del demultiplexer
* **P** la linea di controllo
* **Y₀** e **Y₁** le due uscite
Le due uscite vengono generate così:
```
Y₀ = I AND (NOT P)
Y₁ = I AND P
```
Esempio:
* Se `I = 1` e `P = 0` → `Y₀ = 1`, `Y₁ = 0`
* Se `I = 1` e `P = 1` → `Y₀ = 0`, `Y₁ = 1`
* Se `I = 0` → entrambe le uscite sono 0, indipendentemente da P
####  Tabella della verità
| P (controllo) | I (ingresso) | Y₀ | Y₁ |
| ------------- | ------------ | -- | -- |
| 0             | 0            | 0  | 0  |
| 0             | 1            | 1  | 0  |
| 1             | 0            | 0  | 0  |
| 1             | 1            | 0  | 1  |
####  Utilità del demultiplexer
Il demultiplexer permette di:
* instradare un segnale verso linee diverse
* gestire distribuzione condizionata di dati
* costruire sistemi di memoria e registri controllati da linee di abilitazione
* definire percorsi logici alternativi all’interno di unità di controllo
È un blocco essenziale nei sistemi digitali perché permette al segnale di “scegliere dove andare” in base allo stato del controllo, completando il comportamento opposto rispetto al multiplexer.
![[switch.png]]
####   Demultiplexer 1-a-4
Un demultiplexer 1-a-4 estende il comportamento del demultiplexer 1-a-2: l’ingresso unico viene inviato a una sola tra quattro uscite, selezionata tramite due linee di controllo. Le altre uscite vengono forzate a zero.
Il circuito ha:
* ingresso unico **I**
* due linee di controllo **P₁** e **P₂**
* quattro uscite **Y₀**, **Y₁**, **Y₂**, **Y₃**
#####   Funzionamento logico
Le combinazioni delle linee di controllo determinano quale uscita viene attivata. Le equazioni risultano:
```
Y₀ = I AND (NOT P₁) AND (NOT P₂)
Y₁ = I AND (NOT P₁) AND P₂
Y₂ = I AND P₁ AND (NOT P₂)
Y₃ = I AND P₁ AND P₂
```
#####   Tabella della verità
| P₁ | P₂ | I | Y₀ | Y₁ | Y₂ | Y₃ |
| -- | -- | - | -- | -- | -- | -- |
| 0  | 0  | 0 | 0  | 0  | 0  | 0  |
| 0  | 0  | 1 | 1  | 0  | 0  | 0  |
| 0  | 1  | 1 | 0  | 1  | 0  | 0  |
| 1  | 0  | 1 | 0  | 0  | 1  | 0  |
| 1  | 1  | 1 | 0  | 0  | 0  | 1  |
E così via...

> [!warning] Attenzione
> Nel contesto dei circuiti digitali, _switch_ indica un demultiplexer: un singolo ingresso viene deviato verso una delle uscite in base a linee di controllo.  
> Nella programmazione, invece, _switch…case_ è un costrutto che seleziona quale blocco di istruzioni eseguire.  
> I due concetti condividono il nome perché entrambi “deviano” un flusso, ma non sono collegati né funzionano allo stesso modo.

## Arithmetic Logic Unit (ALU)
L’ALU è il blocco centrale di ogni processore, responsabile dell’esecuzione delle operazioni aritmetiche e logiche sui dati. È il punto in cui i valori binari vengono effettivamente manipolati: sommate, sottratte, confrontate, combinate tramite operazioni bit-a-bit. Tutto ciò che un computer “calcola” passa attraverso questo circuito.
Un’ALU tipica è composta da due sezioni principali:
* una **unità aritmetica**, che esegue operazioni come somma, sottrazione e incremento usando i sommatori realizzati in precedenza
* una **unità logica**, che applica funzioni logiche come AND, OR o XOR sui bit in ingresso
Entrambi i risultati vengono prodotti in parallelo. Un segnale di controllo seleziona poi quale dei due utilizzare in uscita. In questo modo l’ALU può svolgere molte operazioni diverse riutilizzando gli stessi blocchi fondamentali. Eventuali segnali aggiuntivi, come quelli che indicano se il risultato è zero o negativo, completano il comportamento necessario alla costruzione della logica di controllo del processore.
### Logic Unit


## Altri esempi di utilizzo dell'algebra booleana in contesti reali
###  Utilizzo dello XOR in crittografia
####  Introduzione
L'operazione XOR è centrale in molti sistemi crittografici grazie alla sua capacità di combinare dati in modo reversibile. In crittografia, l'uso dell'XOR permette di fondere il testo in chiaro con una chiave (o keystream) in modo che l'operazione di cifratura e decifratura sia identica, semplificando così i processi di protezione dei dati.

####  Proprietà rilevanti
Le proprietà che rendono l'XOR particolarmente utile in crittografia sono:

- **Invertibilità:** La stessa operazione viene usata per cifrare e decifrare; infatti, applicare l'XOR due volte con la stessa chiave restituisce il dato originale (A XOR B XOR B = A).
- **Commutatività e associatività:** Consentono di combinare più operazioni di XOR senza preoccuparsi dell'ordine, facilitando la progettazione di algoritmi crittografici.

####  Applicazioni nei cifrari a flusso
Nei cifrari a flusso il testo in chiaro viene cifrato combinandolo bit a bit con un keystream generato da un algoritmo pseudocasuale. L'operazione base è:

```
ciphertext = plaintext XOR keystream
```

La decifratura avviene applicando nuovamente l'XOR con lo stesso keystream, recuperando il testo in chiaro. La sicurezza di questi sistemi dipende fortemente dalla qualità e dalla segretezza del keystream. Se il keystream è prevedibile o viene riutilizzato, l'intero sistema diventa vulnerabile a vari attacchi.

####  Il One-Time Pad
Il One-Time Pad è un esempio ideale di cifratura mediante XOR:

- **Chiave casuale e unica:** La chiave è lunga quanto il messaggio, totalmente casuale e usata una sola volta.
- **Sicurezza teorica:** Se i requisiti sono rispettati, il One-Time Pad è matematicamente inoppugnabile.  
    La formula utilizzata è identica a quella dei cifrari a flusso, ma la garanzia della sicurezza risiede nella perfetta casualità e nell'unicità della chiave.

####  Esempi pratici

Consideriamo un semplice esempio di cifratura mediante XOR:

Testo in chiaro (in binario):

```
10101010
```

Chiave (in binario):

```
11001100
```

Cifratura (bit a bit):

```
10101010  
XOR 11001100  
-----------
01100110
```

Per decifrare, si applica l'operazione XOR tra il testo cifrato e la stessa chiave, ottenendo nuovamente il testo in chiaro grazie alla proprietà di auto-inversione.

####  Criticità e limiti
L'uso dell'XOR in crittografia presenta vantaggi notevoli in termini di efficienza computazionale e semplicità. Tuttavia, emergono alcune criticità:

- **Riutilizzo della chiave:** In sistemi dove la chiave (o keystream) viene usata più di una volta, l'analisi di coppie di messaggi cifrati può portare a rivelare informazioni sul testo in chiaro.
- **Qualità del keystream:** Un keystream non sufficientemente casuale può essere sfruttato tramite attacchi statistici o di criptoanalisi per recuperare la chiave o il testo originale.
- **Attacchi noti:** Tecniche come l'attacco al keystream riutilizzato (nota anche come "two-time pad") sfruttano la linearità dell'operazione XOR per individuare pattern e dedurre dati sensibili.
###  Display a 7 segmenti

La realizzazione di dispositivi numerici digitali si accompagna alla necessità di **visualizzare variabili e risultati**. Nel caso dei circuiti **sommatori e sottrattori**, si può ricorrere ai **display a 7 segmenti**, realizzati con **LED (Light Emitting Diode)** o **LCD (Liquid Crystal Display)**.  
In entrambi i casi, i segmenti vengono identificati secondo lo schema seguente:

![[bc24221097e172fd59d7fb8c5c30b814_MD5.jpeg]]

I display a 7 segmenti devono essere pilotati da un **decoder**, che effettua la conversione da **codice BCD (Binary Coded Decimal)** a rappresentazione decimale.  
Il codice BCD è un **codice a 4 bit**, in cui le prime dieci combinazioni binarie rappresentano le cifre decimali da 0 a 9, secondo la seguente corrispondenza:

![[2e20921723442222be6a205e83dd625e_MD5.jpeg]]

Nel codice BCD, le combinazioni 1010, 1011, 1100, 1101 e 1111 sono **inutilizzate o ridondanti**.

Se indichiamo con **D** il bit più significativo (MSB – _Most Significant Bit_) e con **A** il meno significativo (LSB – _Least Significant Bit_), il collegamento ai segmenti risulta il seguente:

![[54121a7c798a8787470c6df305956bc9_MD5.jpeg]]

La struttura interna del **decoder BCD → 7 segmenti** può essere ricavata costruendo una **mappa di Karnaugh** per ciascuna delle sette variabili di uscita (_a, b, c, d, e, f, g_).  
Da queste mappe si ottengono espressioni logiche semplificate, come mostrato in figura:

![[c2ba2ff8c8817860fc64c4acf6a2acb6_MD5.jpeg]]

Durante la semplificazione, i cinque numeri inutilizzati del codice BCD possono essere considerati **condizioni di indifferenza** (_don’t care conditions_).

Se invece si desidera mantenere la codifica in **binario puro**, allora anche le combinazioni precedentemente escluse sono ammesse, ma l’uscita dovrà essere interpretata secondo una **codifica esadecimale**, da:

(0)₁₀ = (0000)₂ = (0)ₕ  
a  
(15)₁₀ = (1111)₂ = (F)ₕ
