> [!warning] Attenzione
> Prima di studiare questa dispensa, hai bisogno di studiare le basi dell'algebra di Boole: [[Dispensa sull'algebra di Boole e circuiti logici]] e dei sistemi di numerazione [[Codifica delle informazioni#2. Sistemi di numerazione]]
## Introduzione
Questa dispensa segue un percorso completo per comprendere e costruire tutti i circuiti logici fondamentali che costituiscono l’architettura di un computer. L’obiettivo è mostrare come, partendo esclusivamente da porte logiche elementari, sia possibile arrivare a realizzare unità aritmetiche, dispositivi di memoria, sistemi di controllo e infine un processore funzionante. Il metodo è incrementale: ogni circuito introduce un concetto nuovo e fornisce il blocco costruttivo necessario per il successivo. In questo modo l’intero sistema emerge in modo naturale, come risultato della composizione di componenti semplici ma estremamente potenti.
La progressione di questa dispensa segue quella del gioco [nandgame.com]().
## Porte logiche di base

###  Porta logica NAND: costruzione e fondamenti
####  La logica digitale e i circuiti fondamentali
Nel contesto dell’elettronica digitale, i segnali binari (0 e 1) vengono elaborati mediante **circuiti logici**, detti **porte logiche**, ciascuna delle quali realizza una specifica operazione booleana.
Tra tutte le porte logiche, la **porta NAND** occupa un ruolo privilegiato: essa è **funzionalmente completa**, il che significa che tutte le altre operazioni logiche (AND, OR, NOT, XOR, ecc.) possono essere costruite a partire da essa. Per questo motivo, è la porta scelta come **mattoncino base** nell’introduzione ai circuiti logici.

---
####  La porta NAND: definizione logica
La porta NAND (abbreviazione di **NOT AND**) restituisce un valore logico **falso (0)** **solo** quando **entrambi** gli ingressi sono veri (1); in tutti gli altri casi restituisce **vero (1)**.
#####  Tavola di verità della porta NAND
| Ingresso A | Ingresso B | Uscita (A NAND B) |
| ---------- | ---------- | ----------------- |
| 0          | 0          | 1                 |
| 0          | 1          | 1                 |
| 1          | 0          | 1                 |
| 1          | 1          | 0                 |
####  Implementazione della NAND tramite relè
Per comprendere la costruzione fisica della NAND, è utile modellare il circuito usando **relè**, dispositivi elettromeccanici che funzionano come interruttori controllati da corrente elettrica. Storicamente, i primi computer digitali furono costruiti proprio con relè prima dell’avvento dei transistor.
#####  Cos'è un relè?
Un **relè** è un interruttore azionato da un campo magnetico generato da una corrente di controllo. Quando il segnale di controllo è attivo (livello logico 1), il relè **chiude il contatto**, permettendo il passaggio della corrente. Quando è inattivo (livello logico 0), il contatto rimane **aperto**, impedendo la trasmissione del segnale.
Nel contesto logico:
* Un relè controllato da un segnale `x` si comporta come un **interruttore che chiude solo se x = 1**.
* I relè possono essere **concatenati** per implementare operazioni logiche complesse.
---
####  Costruzione della NAND con due relè
#####  Principio di funzionamento
Per costruire una porta NAND con relè, si possono usare **due stadi**:
1. **Primo stadio**: si ottiene collegando due relè in **serie**, controllati rispettivamente dagli ingressi `a` e `b`. In questa configurazione, il segnale passa solo se **entrambi i relè sono chiusi**, cioè se `a = 1` e `b = 1`.
2. **Secondo stadio**: si inverte il risultato del primo stadio usando un **meccanismo invertente**, ad esempio con un relè configurato per **aprire il passaggio** quando il segnale è attivo, e viceversa.

#####  Schema del circuito
![[nand.png]]

---
####  Equivalenza con i circuiti moderni
Sebbene oggi i circuiti digitali siano implementati mediante **transistor**, l’analogia con i relè è diretta:
* Entrambi sono **interruttori controllabili**.
* Entrambi realizzano **funzioni logiche binarie**.
* L’inversione, il controllo multiplo e la combinazione logica si ottengono con configurazioni simili.
Utilizzare relè come modello didattico (come avviene in *nandgame.com*) è vantaggioso perché permette di **visualizzare** i meccanismi logici al livello fisico e strutturale.
###  Porta logica NOT (inverter) costruita con una porta NAND
####  Definizione della porta NOT
La **porta NOT**, detta anche **inverter**, è una delle operazioni logiche fondamentali in algebra booleana. Essa restituisce l’opposto del valore logico in ingresso:
* Se l’ingresso è `0`, l’uscita è `1`.
* Se l’ingresso è `1`, l’uscita è `0`.
#####  Tavola di verità della porta NOT
| Ingresso A | Uscita (NOT A) |
| ---------- | -------------- |
| 0          | 1              |
| 1          | 0              |

---
####  Implementazione della NOT tramite NAND
Una delle proprietà più importanti della porta NAND è che essa può essere **riconfigurata per replicare qualsiasi altra operazione logica**, incluso l’inversore.
Per ottenere una porta NOT utilizzando **solo una NAND**, è sufficiente collegare **entrambi gli ingressi della NAND allo stesso segnale**.
#####  Formula logica
Poiché la NAND restituisce 0 solo quando **entrambi** gli ingressi sono 1, se colleghiamo ad entrambi lo stesso segnale `A`, otteniamo:
* Se `A = 0`, allora `NAND(0, 0) = 1` ⇒ `NOT 0 = 1`
* Se `A = 1`, allora `NAND(1, 1) = 0` ⇒ `NOT 1 = 0`
Questa configurazione simula esattamente il comportamento di una porta NOT.
---
####  Interpretazione circuitale nel contesto logico
Dalla costruzione a partire dalla NAND, possiamo trarre un’importante conseguenza didattica: **la negazione logica può essere vista come un caso particolare dell’operazione NAND**, in cui i due argomenti coincidono.
Nel simulatore *nandgame.com*, questo è il primo esempio in cui si **riutilizza una porta precedentemente costruita (NAND)** per creare un nuovo blocco funzionale (NOT), avviando la costruzione **gerarchica** di un sistema logico.

---
####  Schema logico
![[invert.png]]

---
####  Astrazione e semplificazione
A partire da questo livello, i circuiti non richiedono più la rappresentazione fisica dei componenti interni (come relè, alimentazione, magneti, ecc.). Si passa dunque a una **visione logico-funzionale**, in cui ogni componente viene trattato come una **scatola nera** che trasforma ingressi in uscite secondo una funzione booleana.
Questa astrazione riflette il modello di progettazione digitale usato nell’ingegneria elettronica e nell’informatica teorica: i componenti complessi vengono costruiti componendo **blocchi funzionali più semplici**, ciascuno definito dal proprio comportamento logico.

---
###  Porta logica AND costruita con NAND e NOT
####  Definizione della porta AND
La **porta AND** è una delle tre operazioni logiche fondamentali del sistema booleano. Essa restituisce `1` (vero) **solo quando entrambi** gli ingressi sono `1`.
#####  Tavola di verità della porta AND
| Ingresso A | Ingresso B | Uscita (A AND B) |
| ---------- | ---------- | ---------------- |
| 0          | 0          | 0                |
| 0          | 1          | 0                |
| 1          | 0          | 0                |
| 1          | 1          | 1                |
####  Implementazione della AND con NAND e NOT
Poiché la porta NAND è già stata implementata e può essere usata come **blocco logico riutilizzabile**, e la porta NOT è a sua volta costruita con una NAND, è possibile realizzare la porta AND sfruttando la **negazione del risultato di una NAND**.
#####  Passaggi logici
1. Calcolare `NAND(A, B)`: questa operazione restituisce `¬(A ∧ B)`
2. Invertire il risultato: `NOT(NAND(A, B)) = ¬(¬(A ∧ B)) = A ∧ B`
---
####  Schema logico del circuito
![[and.png]]

---
####  Considerazioni didattiche
Un aspetto importante da sottolineare è che, **dal punto di vista fisico-costruttivo**, non è la porta NAND a derivare dalla AND con negazione, ma esattamente il contrario:

> **La porta AND è costruita invertendo il risultato della NAND.**

In termini teorici, è comune definire la NAND come una **AND seguita da NOT**. Tuttavia, in un contesto di progettazione logica a partire da componenti elementari (come in _nandgame_), **la NAND è il componente primitivo**, e tutte le altre operazioni (inclusa l’AND stessa) **vengono derivate da essa**. Questo rovesciamento di prospettiva è fondamentale per comprendere la logica costruttiva dei circuiti digitali.
###  Porta logica OR costruita con NAND e NOT
####  Definizione della porta OR
La **porta OR** restituisce `1` (vero) se **almeno uno** dei due ingressi è `1`. Solo nel caso in cui **entrambi** gli ingressi siano `0`, l’uscita sarà `0`.
#####  Tavola di verità della porta OR
| Ingresso A | Ingresso B | Uscita (A OR B) |
| ---------- | ---------- | --------------- |
| 0          | 0          | 0               |
| 0          | 1          | 1               |
| 1          | 0          | 1               |
| 1          | 1          | 1               |
####  Derivazione della OR tramite NAND e NOT
Per costruire una porta OR utilizzando solo NAND (e quindi eventualmente inverter costruiti con NAND), si può applicare una trasformazione logica basata sulle **leggi di De Morgan**, che permettono di riscrivere l’OR in termini di AND e NOT.
#####  Legge di De Morgan applicata
$A \lor B = \neg (\neg A \land \neg B)$
Questa espressione ci dice che si può ottenere l’OR in tre passaggi:
1. Invertire `A` → `NOT A`
2. Invertire `B` → `NOT B`
3. Calcolare `AND(NOT A, NOT B)`
4. Invertire il risultato finale
Nel nostro contesto, poiché la **porta AND è costruita come `NOT(NAND(...))`**, questa formula può essere direttamente riscritta in termini di NAND:
#####  Formula completa in NAND
$\text{OR}(A, B) = \text{NAND}(\text{NAND}(A, A), \text{NAND}(B, B))$
Ovvero:
* `NAND(A, A)` = `NOT A`
* `NAND(B, B)` = `NOT B`
* `NAND(NOT A, NOT B)` = `OR(A, B)`
---
####  Schema logico del circuito
![[or.png]]
###  Porta logica XOR costruita con NAND e NOT
####  Definizione della porta XOR
La **porta XOR** (eXclusive OR) restituisce `1` **solo se uno solo** dei due ingressi è `1`. Se entrambi gli ingressi sono uguali (entrambi `0` o entrambi `1`), l’uscita è `0`.
È la porta logica che implementa la **disuguaglianza logica** tra due segnali binari.
#####  Tavola di verità della porta XOR
| Ingresso A | Ingresso B | Uscita (A XOR B) |
| ---------- | ---------- | ---------------- |
| 0          | 0          | 0                |
| 0          | 1          | 1                |
| 1          | 0          | 1                |
| 1          | 1          | 0                |
Formula logica:
[
A \oplus B = (A \land \neg B) \lor (\neg A \land B)
]
---
####  Costruzione della XOR con NAND e NOT
La porta XOR è più complessa rispetto alle precedenti, poiché **non può essere realizzata con una sola o due NAND**, ma richiede una combinazione **gerarchica di più operazioni**.
Partendo dalla definizione logica sopra, e sapendo che abbiamo a disposizione solo:
* **NAND**: $(\neg(A \land B))$
* **NOT**: costruita come $(\text{NAND}(A, A))$
si può derivare una costruzione equivalente della XOR interamente in NAND.
#####  Costruzione funzionale in passi
Un possibile modo per costruire la XOR è il seguente:
1. Calcolare `NAND(A, B)` → chiamiamolo `n1`
   (equivale a `¬(A ∧ B)`)
2. Calcolare `NAND(A, n1)` → chiamiamolo `n2`
   (equivale a `¬(A ∧ ¬(A ∧ B))`)
3. Calcolare `NAND(B, n1)` → chiamiamolo `n3`
   (equivale a `¬(B ∧ ¬(A ∧ B))`)
4. Calcolare `NAND(n2, n3)` → questo è il risultato finale
   (equivale a `¬(¬(A ∧ ¬(A ∧ B)) ∧ ¬(B ∧ ¬(A ∧ B)))`)
#####  Formula finale in NAND
$\text{XOR}(A, B) = \text{NAND}(\text{NAND}(A, \text{NAND}(A, B)), \text{NAND}(B, \text{NAND}(A, B)))$
Questa espressione utilizza **quattro porte NAND**, e non richiede inverter espliciti se si considera che il NOT è implementato con una NAND autocollegata.

---
####  Schema logico del circuito
![[xor.png]]

---
### Conclusione – Dalla NAND al calcolatore
Attraverso la costruzione progressiva delle principali porte logiche (NOT, AND, OR, XOR), a partire dalla sola **porta NAND**, si è dimostrato un principio fondamentale dell’informatica teorica e dell’ingegneria digitale:

> **L’intera logica di un calcolatore può essere costruita a partire dalla porta NAND.**

Questo è possibile grazie alla proprietà di **completezza funzionale** della NAND: qualsiasi funzione booleana, e quindi qualsiasi circuito logico, può essere realizzata combinando un numero finito di porte NAND. In particolare:

* **NOT** si ottiene collegando i due ingressi della NAND allo stesso segnale.
* **AND** si ottiene negando l’uscita della NAND.
* **OR** si ottiene negando gli ingressi e applicando NAND (secondo De Morgan).
* **XOR** si costruisce tramite una combinazione multilivello di NAND.
A partire da questi blocchi, si possono realizzare **unità aritmetiche**, **registri**, **contatori**, **memorie**, **unità di controllo**, fino ad arrivare al cuore del calcolatore: la **CPU** (unità centrale di elaborazione). Ogni singola operazione svolta da un processore — dall’addizione di due numeri alla valutazione di una condizione logica — può essere ricondotta a una sequenza di operazioni realizzate con **porte logiche costruite su NAND**.
Questa visione è ciò che *nandgame.com* traduce in forma interattiva: costruire **dal basso verso l’alto** la logica di un calcolatore, partendo da un singolo, semplicissimo componente.
## Aritmetica
###  Sommatore binario
####  Introduzione
L’addizione è una delle operazioni fondamentali alla base di qualunque sistema digitale. Ogni volta che un processore esegue un calcolo, aggiorna un indirizzo di memoria o incrementa un contatore, sta effettuando una somma binaria. Per questo motivo il **sommatore** è uno dei circuiti combinatori più importanti dell’intera architettura di un computer.
Sommare numeri binari segue le stesse idee dell’addizione decimale: ogni cifra viene sommata con quella della stessa posizione e, quando la somma supera il valore rappresentabile con un solo bit, si genera un riporto verso la posizione successiva. La differenza è che nel sistema binario ci sono solo due cifre possibili, quindi l’addizione tra bit è estremamente semplice e può essere implementata direttamente con poche porte logiche.
Per progettare un sommatore completo occorre partire da due elementi base:
* il **semisommatore**, che somma due bit e calcola sia il bit di somma sia il riporto;
* il **sommatore completo**, che aggiunge al modello precedente la gestione di un riporto in ingresso.
Da questi due blocchi è possibile costruire circuiti in grado di sommare numeri di qualunque lunghezza, come i **sommatori paralleli**, ottenuti collegando più full-adder in cascata. Una volta implementata correttamente la somma binaria, è possibile sfruttare le stesse strutture anche per la sottrazione grazie alla rappresentazione in complemento a 2, rendendo i sommatori uno dei pilastri essenziali nella costruzione dell'ALU.
Le sezioni che seguono illustrano passo dopo passo la costruzione di questi blocchi, utilizzando le immagini e gli schemi presenti nel materiale originale per seguire in modo chiaro l’evoluzione dalla somma di un singolo bit fino alla realizzazione di un circuito aritmetico completo.
#### Semisommatore (Half-Adder)
Il **semisommatore** è il circuito più semplice in grado di effettuare la somma tra due bit. Riceve in ingresso i bit **A** e **B** e produce:
* **S**, il bit della somma
* **C**, il riporto generato dalla somma
La somma binaria segue regole molto immediate:
0 + 0 = 0
0 + 1 = 1
1 + 0 = 1
1 + 1 = 0 con riporto 1
Questa logica corrisponde esattamente al comportamento della porta XOR per la somma e della porta AND per il riporto.
![[fcf44d3ab12f26cbb5e97443c594c43f_MD5.jpeg]]
Per tenere conto sia del bit di somma sia del riporto, il circuito completo del semisommatore deve rispettare la seguente tabella della verità:
![[44e7d070f3cba39d82500c24a0917cb8_MD5.jpeg]]
* **A** e **B** sono i bit da sommare
* **S** è il bit della somma
* **C** è il bit del riporto
Combinando una porta XOR e una porta AND si ottiene il comportamento desiderato, formando così il semisommatore o **Half-Adder (HA)**.
#### Circuito Sommatore (Full-Adder)
Il **sommatore completo** (Full-Adder, FA) estende il comportamento del semisommatore permettendo di sommare non solo i bit **A** e **B**, ma anche un **riporto in ingresso** proveniente dalla posizione meno significativa. È questo elemento che consente di concatenare più sommatori per ottenere la somma di numeri con più bit.
Il full-adder ha quindi:
* **Ingressi:**
  * A
  * B
  * Cᵢ (riporto in ingresso)
* **Uscite:**
  * S (bit di somma)
  * Cₒ (riporto in uscita)
Il suo schema logico è il seguente:
![[308ee129c6dc461ac15d1c95c5624572_MD5.jpeg]]
La somma S viene calcolata sommando prima A e B, poi aggiungendo il riporto Cᵢ.
Osservando la tabella di verità, si può ricavare la formula finale:
```
S = (A ⊕ B) ⊕ Cᵢ
```
Il riporto in uscita Cₒ è 1 in due situazioni:
1. quando almeno due tra A, B e Cᵢ valgono 1
2. quando la somma dei tre bit genera un overflow verso il bit successivo
Questo porta alla formula:
```
Cₒ = (A AND B) OR (Cᵢ AND (A ⊕ B))
```
Queste due relazioni sono fondamentali per implementare un sommatore a più bit, poiché permettono di “passarsi” il riporto da un full-adder al successivo. Nel prossimo punto vedremo come concatenare questi blocchi per ottenere un **sommatore parallelo**, capace di sommare numeri binari completi.
#### Sommatore Parallelo
Finora abbiamo visto come sommare singoli bit usando semisommatori e full-adder. Per sommare numeri binari composti da più bit è sufficiente mettere in cascata più full-adder, uno per ogni posizione, formando un **sommatore parallelo**.
![[51529a5f41b1f9a0769f199e948e1693_MD5.jpeg]]
Consideriamo il caso di un sommatore a 4 bit. I due numeri da sommare sono:
* A = A₃ A₂ A₁ A₀
* B = B₃ B₂ B₁ B₀
  dove A₀ e B₀ sono i bit meno significativi. A ciascuna coppia di bit (Aᵢ, Bᵢ) è associato un full-adder:
* il full-adder meno significativo somma A₀, B₀ e il riporto iniziale (di solito 0)
* il riporto in uscita viene passato al full-adder successivo, che somma A₁, B₁ e quel riporto
* il processo continua fino al bit più significativo, che produce l’ultimo riporto C₄
  In questo modo tutti i bit dei due numeri vengono presentati **in parallelo** agli ingressi del sommatore e la somma viene calcolata contemporaneamente, con i riporti che si propagano da destra verso sinistra.
  ![[1ad6471b63cd2b6c56d9303f7935b843_MD5.jpeg]]
  Nel caso di un sommatore a 4 bit, le uscite saranno:
* S₀, S₁, S₂, S₃: i bit della somma
* C₄: il riporto finale, che può indicare un overflow se la somma esce dal range rappresentabile con 4 bit
  Questo tipo di struttura è chiamata anche **sommatore a propagazione di riporto** (ripple-carry adder), perché ogni full-adder deve attendere il riporto dal blocco precedente. È una soluzione semplice e diretta, sufficiente per capire il funzionamento interno dei calcolatori e per costruire i primi modelli di ALU.
### Sottrattori binari
Nei calcolatori attuali **non esiste** un circuito separato per la sottrazione. L’hardware non implementa direttamente A − B. Al contrario, la sottrazione viene trasformata in un’addizione, sfruttando la rappresentazione dei numeri in **complemento a 2**.
Questo approccio permette di utilizzare esattamente lo stesso sommatore già costruito per l’addizione, evitando di progettare un circuito dedicato.
L’idea è la seguente:
```
A − B = A + (complemento a 2 di B)
```
Per ottenere il complemento a 2 di un numero occorre:
1. invertire tutti i bit (complemento a 1)
2. aggiungere 1 tramite il carry-in del sommatore
![[ebd31e412d0091b89a91f851d20d5d6f_MD5.jpeg]]
In questo modo, sommando A con la versione complementata di B, il risultato binario rappresenta esattamente A − B secondo le convenzioni del complemento a 2. Il circuito sfrutta quindi un normale sommatore, con poche modifiche per gestire l’inversione di B e l’impostazione del riporto iniziale.
Quando A è maggiore di B, il risultato è positivo e il riporto finale indica che non si è verificato overflow:
**Caso A – minuendo maggiore del sottraendo**
![[1482b9ef70a223cdb7cf5c5bc6f39a9e_MD5.jpeg]]
Quando invece A è minore di B, la sottrazione produce un risultato negativo, che viene espresso direttamente in complemento a 2:
**Caso B – minuendo minore del sottraendo**
![[b9f4127311d9c62864e7d9d96ffffe29_MD5.jpeg]]
In questo caso il riporto finale *non* si genera, e il bit più significativo del risultato è 1, segnalando che il numero è negativo.
Se si desidera ottenere il valore assoluto, basta applicare nuovamente il complemento (invertire i bit e sommare 1).
Questo meccanismo rende la struttura aritmetica molto più semplice, perché la stessa rete combinatoria può realizzare sia l’addizione sia la sottrazione con una sola modifica del percorso di ingresso di uno degli operandi.
#### Circuito di sottrazione basato sul complemento
Per implementare una sottrazione utilizzando lo stesso circuito impiegato per l’addizione, occorre essere in grado di generare il **complemento dell’operando B** e di gestire correttamente il riporto iniziale. La struttura si basa sul complemento a 1 applicato bit per bit, seguito dall’eventuale somma di 1 tramite il carry-in.
Il primo passo è costruire un circuito che possa **invertire ogni bit di B quando richiesto**.
L’idea è semplice: utilizzare una porta XOR per ciascun bit di B, controllata da un segnale P che indica se stiamo facendo una sottrazione.
* Se **P = 0**, l’uscita è B (nessuna sottrazione).
* Se **P = 1**, l’uscita è NOT B (primo passo per ottenere il complemento).
![[49d000ab4f74955cd67ef59a85240cd7_MD5.jpeg]]
Il secondo passaggio consiste nell’aggiungere **il riporto iniziale** C₀.
Quando P = 1 (sottrazione), il carry-in deve essere impostato a 1 per completare il **complemento a 2**:
* Somma di A + (NOT B) + 1 → A − B
Il riporto finale C₃ riportato in uscita dal bit più significativo contiene un’informazione importante:
* se è 1, significa che **A ≥ B**
* se è 0, significa che **A < B**, quindi il risultato è negativo
![[ba6e7d8daf9eea442b6586d2433f879c_MD5.jpeg]]
Per permettere al circuito di funzionare sia da sommatore sia da sottrattore, il segnale P deve:
1. decidere se invertire B (tramite XOR)
2. decidere se attivare il carry-in iniziale
In questo modo, con un solo selettore è possibile controllare entrambe le operazioni.
Il circuito completo, ottenuto sostituendo uno dei due input con la sua versione condizionatamente invertibile, è costituito da **4 full-adder collegati in cascata**, ognuno dotato del proprio XOR per l'inversione:
![[1e1845e2fbb1989509866ffbae4a01d3_MD5.jpeg]]
Quando il risultato è negativo (bit più significativo = 1 e riporto finale = 0), potrebbe essere necessario ottenere il valore assoluto. Anche questo si ottiene tramite la stessa tecnica: un XOR controllato più un incremento finale.
Il circuito per la **complementazione finale** è infatti identico a quello utilizzato per invertire B:
![[417de07d8b8d11e63b863d5c090143c6_MD5.jpeg]]
Questo schema permette quindi di realizzare:
* addizione
* sottrazione
* complemento a 1
* complemento a 2
* modulo (valore assoluto di un numero negativo)
…il tutto riutilizzando esclusivamente:
* XOR
* full-adder
* linee di controllo
#### Complemento a 2 e numeri negativi
Come visto nei sistemi digitali, i numeri interi relativi si rappresentano con il [[Codifica delle informazioni#2.6 Rappresentazione dei numeri negativi il complemento a 2|complemento a 2]], utilizzando il bit più pesante come bit di segno:
0 → numero positivo
1 → numero negativo
Nel complemento a 2, il range di valori rappresentabili non è simmetrico: con 4 bit, ad esempio, si possono rappresentare i numeri da −8 a +7. I numeri negativi non sono memorizzati con un “segno” separato, ma come particolari configurazioni di bit che si ottengono complementando a 2 il corrispondente valore positivo.
![[d23276f5237eed75bd9a1277ae89f675_MD5.jpeg]]
Per calcolare il complemento a 2 di un numero binario si procede così:
1. si invertono tutti i bit (complemento a 1)
2. si aggiunge 1 al risultato utilizzando un sommatore
Questa operazione può essere realizzata in hardware con un circuito dedicato.
![[b7a973de578dc6120275f9df90a609f6_MD5.jpeg]]
Il circuito rappresentato permette di eseguire il complemento a 2 di un numero a 4 bit: se A₀ = 1 viene attivata la complementazione a 2 sui bit di ingresso X; se A₀ = 0 il numero attraversa il circuito senza essere modificato. In questo modo lo stesso blocco può essere usato sia per lasciare invariato il dato sia per trasformarlo nel suo opposto.
Esempio:
Numero +5 = 0101
Dopo la complementazione (A₀ = 1):
![[45a68b168e41b903f565a931e896e286_MD5.jpeg]]
Risultato: 1011, che in complemento a 2 rappresenta −5
Nel sistema binario a complemento a 2, la differenza tra due numeri positivi si ottiene complementando a 2 il sottraendo e sommando il risultato al minuendo. Lo stesso circuito può però essere sfruttato anche per ricavare il modulo (valore assoluto) di un numero negativo.
   ![[5567723d08e1b5714e520cd6bf2f2f03_MD5.jpeg]]
Se il numero in ingresso è negativo, il bit più significativo X₃ vale 1. Questo bit può essere usato per pilotare direttamente l’ingresso di complementazione A₀: quando X₃ = 1 il circuito esegue automaticamente il complemento a 2, trasformando il numero negativo nel suo valore assoluto.
Esempio: per calcolare |1101₍C2₎| si pone A₀ = X₃.
1101₍C2₎ = −3 → il circuito restituisce 0011₍C2₎ = 3
Questo meccanismo permette di realizzare in modo compatto operazionidel tipo A ± |B| con A positivo e B rappresentato in complemento a 2. In un sistema a 4 bit è sufficiente collegare i dispositivi visti (sommatore, circuito di complemento e logica di controllo) nel modo seguente:
![[2120a628f152cfb8100b913b1c6fb2e8_MD5.jpeg]]
Una volta implementate correttamente somma, sottrazione tramite complemento a 2 e calcolo del modulo, si dispone di tutti i blocchi necessari per costruire una vera e propria unità aritmetico-logica (ALU). La moltiplicazione può essere vista come una somma ripetuta, mentre la divisione come una sottrazione ripetuta: le operazioni più complesse si appoggiano quindi sempre alla struttura dei sommatori e ai circuiti di complemento.
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
