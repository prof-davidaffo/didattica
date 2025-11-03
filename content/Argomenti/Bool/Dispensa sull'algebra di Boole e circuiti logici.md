 > [!NOTE] Autore
> Prof. Davide Daffonchio
> Alcuni appunti e immagini dei circuiti reali sono tratti da [edutecnica.it]()

## Capitolo 1: Tabelle di verità e circuiti logici
###  Introduzione di base

L'algebra booleana, fondamentale in matematica, informatica, elettronica e in molte altre discipline, si basa sul concetto di valori di verità assoluti: vero (`1`) o falso (`0`). Questa sezione introduttiva esplora le proposizioni semplici e composte, offrendo una base per comprendere come queste possano essere combinate tra loro.

####  Proposizioni Semplici

Una **proposizione semplice** è un'affermazione che può essere chiaramente identificata come vera o falsa. Non contiene altre proposizioni al suo interno e rappresenta l'unità fondamentale dell'algebra booleana. Ad esempio, l'affermazione "Piove" è una proposizione semplice perché può essere soltanto vera o falsa.

####  Proposizioni Composte

Una **proposizione composta** si forma combinando due o più proposizioni semplici tramite **operatori logici**. Queste proposizioni mostrano relazioni più complesse e il loro valore di verità dipende dai valori delle proposizioni semplici che le compongono. Esempi di proposizioni composte includono affermazioni come "Piove e fa freddo" o "Fa caldo o è nuvoloso", dove "e" e "o" sono operatori logici.

####  Tabelle di Verità
Le **tabelle di verità** sono strumenti essenziali nell'algebra booleana per determinare il valore di verità di proposizioni composte in base a tutti i possibili valori delle proposizioni semplici. Per ogni operatore logico, si può costruire una tabella di verità che mostra il risultato della combinazione di valori di verità.

####  Operatori Logici Fondamentali

Per combinare le proposizioni, si usano vari operatori logici. Ecco i più comuni:

1. **AND (Congiunzione) `∧`**: Indica che entrambe le proposizioni devono essere vere affinché l'intera proposizione composta sia vera. Simbolo comunemente usato: ∧. **Esempio**: Se consideriamo due proposizioni, $A$: "Piove" e $B$: "È freddo", l'operatore AND combina le due proposizioni nella forma $A ∧ B$: "Piove ed è freddo". Questa proposizione composta è vera solo se sia $A$ che $B$ sono vere allo stesso tempo.
   Ad esempio se piovesse ma ci fosse caldo, la proposizione composta non sarebbe vera.
   La congiunzione tra due proposizioni è vera solo se entrambe le proposizioni sono vere.

| A | B  | A ∧ B |
|--------------------|---------------------|-------------------|
| 1                  | 1                   | 1                 |
| 1                  | 0                   | 0                 |
| 0                  | 1                   | 0                 |
| 0                  | 0                   | 0                 |

2. **OR (Disgiunzione) `∨`**: Indica che almeno una delle proposizioni deve essere vera affinché l'intera proposizione composta sia vera. Simbolo comunemente usato: ∨. **Esempio**: Utilizzando le stesse proposizioni $A$ e $B$, l'operatore OR le combina nella forma $A ∨ B$: "Piove o è freddo". Questa proposizione composta è vera se almeno una tra $A$ e $B$ è vera. Quindi, anche se non piove ma è freddo, o viceversa, la proposizione composta risulta vera.
   
   La disgiunzione tra due proposizioni è vera se almeno una delle due proposizioni è vera.

| A   | B   | A ∨ B |
| --- | --- | ----- |
| 1   | 1   | 1     |
| 1   | 0   | 1     |
| 0   | 1   | 1     |
| 0   | 0   | 0     |

   
3. **NOT (Negazione) `¬`**: Inverte il valore di verità di una proposizione. Se applicato a una proposizione vera, la rende falsa, e viceversa. Simbolo comunemente usato: ¬. **Esempio**: Prendendo la proposizione $A$: "Piove", l'operatore NOT la inverte nella forma $¬A$: "Non piove". Se la proposizione originale $A$ è vera (cioè, piove), allora $¬A$ è falsa, e viceversa.
   
   La negazione inverte il valore di verità di una proposizione.

| A | ¬A |
|------------------|----------------|
| 1                | 0              |
| 0                | 1              |

   
4. **XOR (Disgiunzione Esclusiva) ⊕:** Valuta l'esclusività tra due proposizioni. Se una proposizione è vera e l'altra è falsa, allora l'XOR restituisce vero; se entrambe sono vere o entrambe sono false, restituisce falso. È l'operatore logico che esprime l'idea di "o l'una o l'altra, ma non entrambe". Simbolo comunemente usato: ⊕. **Esempio**: Per le proposizioni $A$ e $B$, l'operatore XOR le combina nella forma $A ⊕ B$: "Piove o è freddo, ma non entrambi". Questa proposizione composta è vera solo se esattamente una tra $A$ e $B$ è vera. Se sia $A$ che $B$ sono vere (cioè, piove ed è freddo allo stesso tempo) o se entrambe sono false (non piove e non è freddo), allora la proposizione composta risulta falsa.
   La disgiunzione esclusiva tra due proposizioni è vera solo se esattamente una delle due proposizioni è vera.

| A | B | A XOR B |
|--------------------|---------------------|---------------------|
| 1                  | 1                   | 0                   |
| 1                  | 0                   | 1                   |
| 0                  | 1                   | 1                   |
| 0                  | 0                   | 0                   |

La comprensione delle proposizioni semplici e composte, insieme all'uso degli operatori logici, costituisce la base dell'algebra booleana. Questo framework concettuale permette di analizzare e costruire ragionamenti complessi, essenziale non solo in ambito accademico ma anche in molte applicazioni pratiche, dalla programmazione alla progettazione di circuiti elettronici.

####  Rappresentazioni alternative degli operatori logici
 Gli operatori logici di base possono essere rappresentati in vari modi, inclusi i simboli standard usati nell'algebra booleana e nella progettazione dei circuiti. Un modo alternativo, spesso utilizzato in contesti accademici e nei testi, fa uso di notazioni più "verbali" o simboli matematici comuni. Ecco come si possono rappresentare gli operatori logici di base in questo modo alternativo:
 
1. **AND (Congiunzione)**    
    - **Simbolo Standard**: ∧
    - **Modo Alternativo**: $A \cdot B$ o semplicemente $AB$
      
2. **OR (Disgiunzione)**    
    - **Simbolo Standard**: ∨
    - **Modo Alternativo**: $A + B$
    
3. **NOT (Negazione)**    
    - **Simbolo Standard**: ¬$A$
    - **Modo Alternativo**: $\overline{A}$
      
4. **XOR (Disgiunzione Esclusiva)**    
    - **Simbolo Standard**: ⊕
      
Questi simboli alternativi, specialmente per AND e OR, sono comunemente usati nella matematica e nell'ingegneria per rappresentare le operazioni logiche in modo più compatto, specialmente quando si lavora con espressioni algebriche o nella progettazione di circuiti. Da adesso in avanti useremo questa convenzione.
###  Introduzione alle Proposizioni Composte Complesse

####  Definizione
Una proposizione composta complessa è un'affermazione che si forma combinando due o più proposizioni semplici attraverso l'uso di operatori logici. La complessità di una proposizione composta può variare significativamente: può spaziare da una semplice combinazione di due proposizioni a intricate espressioni che includono diverse proposizioni e operatori annidati.
A differenza delle proposizioni semplici, che esprimono affermazioni dirette e non divisibili, le proposizioni composte complesse combinano multiple proposizioni semplici e operatori logici per formare affermazioni che possono esprimere concetti più dettagliati e situazioni più sfumate. Queste strutture consentono di modellare e analizzare situazioni del mondo reale in termini binari di vero e falso, rendendole strumenti potenti nella matematica, nell'informatica, nella filosofia, e in molte altre discipline.
Nella programmazione, per esempio, consentono di implementare controlli logici avanzati. Nell'ambito della progettazione di circuiti elettronici, sono utilizzate per definire il comportamento di circuiti logici complessi. In matematica e logica, facilitano la costruzione di dimostrazioni formali e l'analisi di argomentazioni.

####  Struttura e Interpretazione
La struttura di una proposizione composta complessa è determinata dall'ordine e dalla combinazione degli operatori logici utilizzati. La precedenza degli operatori stabilisce quale parte dell'espressione deve essere valutata per prima.
Quando si tratta di proposizioni composte più complesse, la costruzione delle loro tabelle di verità richiede un approccio sistematico. Queste proposizioni possono includere diverse combinazioni di operatori logici e proposizioni semplici. La chiave per analizzarle efficacemente è comprendere e applicare le regole di precedenza degli operatori.

####  Regole di Precedenza degli Operatori
Le regole di precedenza degli operatori determinano l'ordine in cui vengono valutati gli operatori in una proposizione composta. Ecco l'ordine dalla più alta alla più bassa precedenza:

1. **NOT**: Ha la precedenza più alta perché modifica direttamente il valore di verità della proposizione a cui è applicato.

2. **AND**: Viene valutato dopo il NOT, poiché rappresenta l'intersezione di verità tra proposizioni.

3. **OR**: Ha una precedenza inferiore all'AND, poiché rappresenta l'unione di verità tra proposizioni.

4. **XOR**: Solitamente ha la stessa precedenza dell'OR, ma l'ordine specifico può dipendere dalla convenzione adottata. È importante chiarire questa regola nel contesto in cui si lavora.

5. **Parentesi**: Come in matematica, le parentesi possono essere utilizzate per alterare l'ordine di valutazione standard. Qualsiasi operazione racchiusa tra parentesi ha la precedenza su quelle esterne.

####  Schematizzazione dei Passaggi per la Costruzione di Tabelle di Verità
Per costruire la tabella di verità di una proposizione composta in modo efficiente, devo seguire in ordine i seguenti passaggi:

1. **Identificare tutte le proposizioni semplici** coinvolte e gli operatori. Assegnare a ogni proposizione semplice una lettera (ad es., A, B, C).

2. **Determinare il numero di righe** della tabella. Questo sarà \(2^n\), dove \(n\) è il numero di proposizioni semplici distinte. Ogni riga rappresenta una possibile combinazione di verità per le proposizioni semplici.

3. **Elencare tutte le combinazioni possibili** di valori di verità per le proposizioni semplici nelle prime colonne della tabella. Per fare questo, si seguono i seguenti passaggi:
   1. Nella prima colonna, scrivo vero nella prima metà delle righe e falso nella seconda metà.
   2. Le colonne successive, vanno riempite tenendo conto della colonna precedente, dimezzando nuovamente le righe in cui mettere vero o falso. Ad esempio se nella prima colonna ci sono 4V e 4F, nella seconda ci saranno 2V 2F 2V 2F e nella terza V F V F V F V F.

5. **Scomporre la proposizione composta** nei suoi componenti, seguendo le regole di precedenza degli operatori. Per ciascun sotto-componente che non è una proposizione semplice, aggiungere una colonna nella tabella di verità.

6. **Calcolare il valore di verità** di ogni sotto-componente per ogni combinazione di valori di verità, seguendo le regole di precedenza.

7. **Determinare il valore di verità della proposizione composta**, basandosi sui valori calcolati per i suoi sotto-componenti.

####  Esempio di Applicazione
Per illustrare l'applicazione delle regole di precedenza degli operatori in una proposizione composta complessa, consideriamo l'esempio seguente:

$$A + B  \overline C$$

L'esempio mostra un caso in cui, nonostante l'operatore OR (+) appaia prima dell'AND ( $\cdot$ ) e della negazione ( $\overline C$ ) nella sequenza dell'espressione, la congiunzione AND e la negazione hanno comunque la precedenza sulla disgiunzione OR a causa delle regole di precedenza degli operatori. Seguiamo i passaggi per analizzare questa espressione:

1. **Identificare tutte le proposizioni semplici** coinvolte: $A$, $B$, $C$.
2. **Determinare il numero di righe** della tabella di verità, che sarà $2^n$, dove $n$ è il numero di proposizioni semplici distinte. Per $A$, $B$, e $C$, avremo $2^3 = 8$ righe.
3. **Elencare tutte le combinazioni possibili** di valori di verità per $A$, $B$, e $C$ nelle prime colonne della tabella di verità sfruttando la regola detta in precedenza.
4. **Scomporre l'espressione complessa** secondo le regole di precedenza degli operatori. Anche se l'OR appare per primo, calcoliamo prima $\overline C$, poi $B \overline C$, e infine uniamo il risultato con $A$ usando $+$.
5. **Calcolare il valore di verità** di ogni sotto-componente per ogni combinazione di valori di verità.
6. **Determinare il valore di verità dell'espressione complessa** per ogni combinazione, basandosi sui valori calcolati per i suoi sotto-componenti.

Questo approccio evidenzia l'importanza della precedenza degli operatori, dimostrando che, nonostante la presenza fisica precedente dell'operatore OR nell'espressione, l'AND (e le operazioni di negazione ad esso associate) deve essere valutato per primo. Questo esempio dovrebbe aiutare a capire che le regole di precedenza sono cruciali per determinare l'ordine corretto in cui vengono eseguite le operazioni in espressioni logiche composte complesse.

Ecco la tabella di verità per l'espressione, che illustra come vengono calcolati i valori di verità per ogni combinazione delle proposizioni semplici $A$, $B$, e $C$:

| $A$ | $B$ | $C$ | $\overline C$ | $B \overline C$ | $A + B \overline C$ |
| --- | --- | --- | ------------- | --------------- | ------------------- |
| 0   | 0   | 0   | 1             | 0               | 0                   |
| 0   | 0   | 1   | 0             | 0               | 0                   |
| 0   | 1   | 0   | 1             | 1               | 1                   |
| 0   | 1   | 1   | 0             | 0               | 0                   |
| 1   | 0   | 0   | 1             | 0               | 1                   |
| 1   | 0   | 1   | 0             | 0               | 1                   |
| 1   | 1   | 0   | 1             | 1               | 1                   |
| 1   | 1   | 1   | 0             | 0               | 1                   |

Nella tabella, i valori `1` e `0` rappresentano rispettivamente il vero e il falso. La colonna $\overline C$ mostra il risultato della negazione di $C$. La colonna $B \overline C$ calcola la congiunzione di $B$ e $\overline C$, evidenziando la precedenza dell'operatore AND su OR e della negazione ( $\overline C$) su AND. Infine, la colonna $A + (B \overline C)$ mostra il valore di verità dell'intera espressione, combinando $A$ con il risultato di $B \overline C$ tramite l'operatore OR, che riflette correttamente le regole di precedenza degli operatori nella valutazione dell'espressione.
###  Porte logiche e circuiti logici
Le porte logiche sono i componenti fondamentali dei circuiti elettronici digitali, usati per eseguire operazioni logiche di base su segnali binari. Ogni tipo di porta logica corrisponde a un operatore logico fondamentale e può essere utilizzato per costruire circuiti logici complessi che eseguono funzioni di elaborazione dell'informazione.

######  Tipi di Porte Logiche

1. **AND Gate**: Realizza l'operazione di congiunzione logica. Produce un output alto (`1`) solo se tutti gli input sono alti (`1`).
   ![[Pasted image 20240221162621.png]]

2. **OR Gate**: Realizza l'operazione di disgiunzione logica. Produce un output alto (`1`) se almeno uno degli input è alto (`1`).
   ![[Pasted image 20240221162721.png]]

3. **NOT Gate** (Inverter): Realizza l'operazione di negazione logica. Inverte lo stato dell'input; se l'input è alto (`1`), l'output sarà basso (`0`), e viceversa.
   ![[Pasted image 20240221162730.png]]

4. **NAND Gate**: Una combinazione di una porta AND seguita da una porta NOT. Produce un output basso (`0`) solo se tutti gli input sono alti (`1`).
   ![[Pasted image 20240221162743.png]]

5. **NOR Gate**: Una combinazione di una porta OR seguita da una porta NOT. Produce un output alto (`1`) solo se tutti gli input sono bassi (`0`).
   ![[Pasted image 20240221162756.png]]

6. **XOR Gate**: Realizza l'operazione di disgiunzione esclusiva. Produce un output alto (`1`) solo se gli input sono diversi tra loro.
   ![[Pasted image 20240221162819.png]]

7. **XNOR Gate**: L'inverso della porta XOR. Produce un output alto (`1`) solo se tutti gli input sono uguali.
   ![[Pasted image 20240221162844.png]]

######  Costruzione di Circuiti Logici
I circuiti logici utilizzano combinazioni di queste porte per eseguire funzioni complesse. Per esempio, un circuito sommatore può essere costruito usando porte XOR, AND e OR per sommare due bit e produrre una somma e un eventuale riporto. Questi circuiti formano la base della logica computazionale utilizzata nei computer e in altri dispositivi elettronici digitali.
######  Applicazioni Pratiche
- **Elaborazione dei Dati**: I circuiti logici sono impiegati in tutte le forme di elaborazione dei dati digitali, dai microprocessori ai computer.
- **Memoria**: Le porte logiche sono usate per costruire circuiti di memoria che immagazzinano informazioni binarie.
- **Controllo**: Utilizzate in sistemi di controllo per automazione e robotica, dove le decisioni logiche determinano il comportamento del sistema.
######  Nandgame
Con questo sito possiamo partire da un semplice Relè e costruire tutte le porte logiche e un itero computer!

www.nandgame.com

####  Esempio di espressioni logiche

#####  Esempio 1

![[circuiti.png]]
#####  Esempio 2

![[esercizio_circuiti.png|400x400]]

####  Esercizi su tabelle di verità

> [!exercise] Esercizi
> 1. $A+\overline{AB}+CD$
>2. $A+B\cdot(A+C+\overline D)$
>3. $A+\overline{A+\overline B+C}\cdot BC$
>4. $\overline A \cdot (A+B)+\overline C+BC$
>5. $C+B \cdot \overline{A+B} \cdot \overline{\overline A \cdot \overline C}+B$
>6. $(\overline{A+B\cdot\overline C})\cdot(A+\overline B)$
>7. $(\overline A+B)\cdot(\overline{B+C}+A)$
>8. $A\cdot\overline{B+\overline C}+\overline A\cdot C$
>9. $\overline{A\cdot B}+C\cdot\overline{B+\overline A}$
>10. $(A+\overline B)\cdot(\overline{A+C}+B)+\overline C$
>11. $\overline{A+\overline B}\cdot(B+C)+\overline{C\cdot A}$
>12. $A+\overline{B\cdot(C+\overline A)}\cdot\overline C$
>13. $(\overline A+\overline B)\cdot(C+\overline{A+B})+B$
>14. $\overline{A+\overline B+C}\cdot(B+\overline C)$
>15. $\overline{A\cdot(\overline B+C)}+B\cdot\overline C$
>16. $(A+B)\cdot\overline{A+C}+\overline{B\cdot C}$
>17. $\overline A\cdot(B+\overline C)+\overline{B\cdot C}$
>18. $(A+\overline B+\overline C)\cdot\overline{A+B}+C$
>19. $\overline{(A+B)\cdot C}+A\cdot\overline B$
>20. $(\overline A+B\cdot\overline C)\cdot(\overline{B+C}+C)$

## Capitolo 2: Minimizzazioni
### Minimizzazioni algebriche
#### Introduzione
La **minimizzazione** è un processo che mi permette di **ottimizzare i circuiti logici** in termini di costi, spazio e prestazioni.
Questo processo consiste nel trovare un circuito che abbia una tabella di verità **equivalente** a quello che sto minimizzando che sia però ottimizzato al massimo in termini di dimensioni (in pratica ottenere una espressione logica equivalente semplificata che utilizzi meno porte logiche).

Ad esempio l'espressione $Y =\overline A \cdot(A+B)+\overline C+BC$
può essere semplificata in $Y = B+\overline C$.

Questo perché entrambe le espressioni hanno la stessa tabella di verità:

$Y =\overline A \cdot(A+B)+\overline C+BC$

| A   | B   | C   | ¬A  | A+B | ¬A⋅(A+B) | ¬C  | ¬A⋅(A+B)+¬C | BC  | $Y$ |
| --- | --- | --- | --- | --- | -------- | --- | ----------- | --- | --- |
| 0   | 0   | 0   | 1   | 0   | 0        | 1   | 1           | 0   | 1   |
| 0   | 0   | 1   | 1   | 0   | 0        | 0   | 0           | 0   | 0   |
| 0   | 1   | 0   | 1   | 1   | 1        | 1   | 1           | 0   | 1   |
| 0   | 1   | 1   | 1   | 1   | 1        | 0   | 1           | 1   | 1   |
| 1   | 0   | 0   | 0   | 1   | 0        | 1   | 1           | 0   | 1   |
| 1   | 0   | 1   | 0   | 1   | 0        | 0   | 0           | 0   | 0   |
| 1   | 1   | 0   | 0   | 1   | 0        | 1   | 1           | 0   | 1   |
| 1   | 1   | 1   | 0   | 1   | 0        | 0   | 0           | 1   | 1   |
$Y = B+\overline C$

| B   | C   | ¬C  | B+¬C |
| --- | --- | --- | ---- |
| 0   | 0   | 1   | 1    |
| 0   | 1   | 0   | 0    |
| 1   | 0   | 1   | 1    |
| 1   | 1   | 0   | 1    |
| 0   | 0   | 1   | 1    |
| 0   | 1   | 0   | 0    |
| 1   | 0   | 1   | 1    |
| 1   | 1   | 0   | 1    |
Come notiamo, il secondo circuito, pur essendo equivalente al primo, utilizza un ingresso in meno e molte meno porte logiche.

Ma come ottengo la seconda espressione?

Posso semplificare una qualunque espressione logica grazie ai **teoremi e alle proprietà dell'algebra di Boole**.
#### Teoremi e proprietà dell'algebra di Boole
Questo insieme di proprietà e teoremi di base posso utilizzarlo per minimizzare una qualunque espressione logica.

- **Proprietà Commutativa**  
  - $A + B = B + A$  
  - $A \cdot B = B \cdot A$

- **Proprietà Associativa**  
  - $(A + B) + C = A + (B + C)$  
  - $(A \cdot B) \cdot C = A \cdot (B \cdot C)$

- **Proprietà Distributiva**  
  - $AB+AC=A(B+C)$
  - $(A+B)(A+C) = A+BC$
    
    *Dimostrazione:*
    $AA + AC + AB + BC = AA + A(B + C) + BC$
	$ma \quad AA = A \quad quindi$
	$A + A(B + C) + BC \quad cioè$
	$A \left[ 1 + (B + C) \right] + BC$
	$ma \quad 1 + (B + C) = 1 \quad quindi$
	$(A + B)(A + C) = A + BC$


- **Teorema dell'Annullamento (elemento assorbente)**  
  - $A \cdot 0 = 0$  
  - $A + 1 = 1$

- **Teorema dell'Identità (elemento neutro)** 
  - $A \cdot 1 = A$  
  - $A + 0 = A$

- **Teorema dei Complementi**  
  - $A \cdot \overline{A} = 0$  
  - $A + \overline{A} = 1$

- **Teorema dell'Idempotenza**  
  - $A \cdot A = A$  
  - $A + A = A$

- **Primo Teorema dell'Assorbimento**  
  - $A + AB = A$
  - $A\cdot(A+B)=A$
    
    *Dimostrazione:*
    $A + AB = A(1 + B) = A \cdot 1 = A$
	$mentre$
	$A(A + B) = AA + AB =$
	$= A + AB = A(1 + B) = A \cdot 1 = A$

- **Secondo Teorema dell'Assorbimento**  
  - $A+\overline AB=A+B$
    
    *Dimostrazione:*
    $A + B = A + B(A + \overline{A}) = A + AB + \overline{A}B$
	$= A(1 + B) + \overline{A}B = A + \overline{A}B$


- **Teorema dell'Involuzione (o della doppia negazione)**  
  - $\overline{\overline{A}} = A$

- **Teoremi di De Morgan**  
  - $\overline{A \cdot B} = \overline{A} + \overline{B}$  
  - $\overline{A + B} = \overline{A} \cdot \overline{B}$
#### Esempio
Proviamo ad applicare i teoremi per minimizzare l'espressione che abbiamo visto nell'esempio prima, ovvero dimostrare che $\overline A \cdot(A+B)+\overline C+BC = B+\overline C$, mostrando per ogni passaggio i teoremi e le proprietà utilizzate.

$\overline A \cdot (A+B)+\overline C+BC =$
$= \overline AA+\overline AB+\overline C+BC =$ *svolta moltiplicazione*
$= \overline AB+\overline C+BC=$ *per il teorema dei complementi*
$= \overline AB+\overline C+B=$ *per il secondo teorema dell'assorbimento*
$=B+\overline C$ *per il primo teorema dell'assorbimento*
### Mappe di Karnaugh
Le mappe di Karnaugh (o **Karnaugh maps**, K-map) sono uno strumento grafico per la semplificazione delle espressioni booleane. Ogni mappa è una tabella che rappresenta visivamente tutte le combinazioni possibili dei valori delle variabili di ingresso.  
La disposizione delle celle segue l’ordine del **Gray code**, in modo che celle adiacenti differiscano per una sola variabile, facilitando l’individuazione di gruppi di 1 adiacenti.
Sono particolarmente comode in quanto sono più veloci da utilizzare rispetto alle classiche minimizzazioni algebriche, ma solo se:
- Conosco a priori i valori di verità dell'espressione o li posso facilmente calcolare
- Non ho espressioni troppo complesse (di solito fino a 4 proposizioni)

#### Procedura operativa per l’uso delle mappe di karnaugh
1. **Identificare le variabili**
   Conta quante variabili ha la funzione booleana e assegna un simbolo a ciascuna (es. A, B, C...).
2. **Disegnare la mappa**
   Costruisci una tabella con 2^n celle. Usa intestazioni in **Gray code** per garantire che celle adiacenti differiscano per una sola variabile.
   Attenzione quindi, quando scrivo le intestazioni, che ad esempio da 01 si passa a 11 e non 10, in quanto deve cambiare 1 bit solo e non 2 per permettere alla mappa di funzionare correttamente.
3. **Compilare la mappa**
   Inserisci in ciascuna cella il valore della funzione:
   * 1 se la funzione è vera in quella combinazione
   * 0 se è falsa
   * **X** se la combinazione è “non importa” (**don’t care**), cioè può essere considerata sia 0 sia 1 a seconda della comodità nella minimizzazione.
4. **Individuare i raggruppamenti di 1**
   * Cerca gruppi di 1 adiacenti in potenze di 2 (1, 2, 4, 8...).
   * Puoi includere le celle con X nei gruppi, trattandole come 1 se servono a ottenere gruppi più grandi e una forma più semplice.
   * Ogni gruppo deve essere **il più grande possibile**.
   * I gruppi possono sovrapporsi: uno stesso 1 (o X) può appartenere a più gruppi se questo mi permette di avere gruppi più grandi per gli elementi che sono rimasti esclusi.
   * Puoi raggruppare celle ai bordi opposti della mappa (adiacenza toroidale).
5. **Scrivere i prodotti semplificati**
   Per ciascun gruppo:
   * Individua quali variabili **rimangono costanti** nel gruppo.
   * Se una variabile ha valore 1 costante, si scrive con la lettera normale (es. A).
   * Se una variabile ha valore 0 costante, si scrive negata (es. ¬A).
   * Le variabili che cambiano non si scrivono.
   * Combina le variabili costanti con l’operazione AND (·).
6. **Combinare i prodotti**
   Somma (OR, indicato con +) tutti i prodotti ottenuti dai gruppi per formare l’espressione minimizzata.
#### Esempio 1 – Mappa di Karnaugh a 2 variabili

Tabella di verità della funzione:

|  A  |  B  |  Y  |
| :-: | :-: | :-: |
|  0  |  0  |  0  |
|  0  |  1  |  1  |
|  1  |  0  |  1  |
|  1  |  1  |  1  |

Mappa di Karnaugh (2×2):

| **A\B** | **0** | **1** |
| :-----: | :---: | :---: |
|  **0**  |   0   |   1   |
|  **1**  |   1   |   1   |

Raggruppamenti:

* Un gruppo da 2 (celle A=1, B=0–1) → A
* Un gruppo da 2 (celle B=1, A=0–1) → B
  Espressione semplificata:
  ( Y = A + B )

---

#### Esempio 2 – Mappa di Karnaugh a 3 variabili

Tabella di verità della funzione:

|  **A**  |  **B**  |  **C**  |  **Y**  |
| :-: | :-: | :-: | :-: |
|  0  |  0  |  0  |  0  |
|  0  |  0  |  1  |  1  |
|  0  |  1  |  0  |  1  |
|  0  |  1  |  1  |  1  |
|  1  |  0  |  0  |  0  |
|  1  |  0  |  1  |  1  |
|  1  |  1  |  0  |  0  |
|  1  |  1  |  1  |  1  |

Mappa (disposizione in Gray code per B e C: 00, 01, 11, 10):

| **C\AB** | **00** | **01** | **11** | **10** |
| :------: | :----: | :----: | :----: | :----: |
|  **0**   |   0    |   1    |   0    |   0    |
|  **1**   |   1    |   1    |   1    |   1    |

Raggruppamenti:

* Gruppo orizzontale da 4 (riga C=1) → C
* Gruppo verticale da 2 (colonna AB=01) → ¬A·B
  Espressione semplificata:
  ( Y = C + ¬A·B )

#### Altri Esempi
*Fonte immagini: https://www.youtube.com/watch?v=qx90H7Kqh9w - Elisabetta Vannucchi*
##### 2 variabili
![[mappe_k_2.png]]
##### 3 variabili
![[mappe_k_3.png]]
##### 4 variabili
![[mappe_k_4.png]]
![[mappe_k_4p2.png]]

> [!warning] Nota
> Alcune forme che ottengo in realtà non sono davvero minimizzate, posso ancora fare dei raccoglimenti per utilizzare meno porte logiche.

## Capitolo 3: Applicazione della logica booleana e dei circuiti logici in contesti reali
#### Utilizzo dello XOR in crittografia
##### Introduzione

L'operazione XOR è centrale in molti sistemi crittografici grazie alla sua capacità di combinare dati in modo reversibile. In crittografia, l'uso dell'XOR permette di fondere il testo in chiaro con una chiave (o keystream) in modo che l'operazione di cifratura e decifratura sia identica, semplificando così i processi di protezione dei dati.

##### Proprietà rilevanti

Le proprietà che rendono l'XOR particolarmente utile in crittografia sono:

- **Invertibilità:** La stessa operazione viene usata per cifrare e decifrare; infatti, applicare l'XOR due volte con la stessa chiave restituisce il dato originale (A XOR B XOR B = A).
- **Commutatività e associatività:** Consentono di combinare più operazioni di XOR senza preoccuparsi dell'ordine, facilitando la progettazione di algoritmi crittografici.

##### Applicazioni nei cifrari a flusso

Nei cifrari a flusso il testo in chiaro viene cifrato combinandolo bit a bit con un keystream generato da un algoritmo pseudocasuale. L'operazione base è:

```
ciphertext = plaintext XOR keystream
```

La decifratura avviene applicando nuovamente l'XOR con lo stesso keystream, recuperando il testo in chiaro. La sicurezza di questi sistemi dipende fortemente dalla qualità e dalla segretezza del keystream. Se il keystream è prevedibile o viene riutilizzato, l'intero sistema diventa vulnerabile a vari attacchi.

##### Il One-Time Pad

Il One-Time Pad è un esempio ideale di cifratura mediante XOR:

- **Chiave casuale e unica:** La chiave è lunga quanto il messaggio, totalmente casuale e usata una sola volta.
- **Sicurezza teorica:** Se i requisiti sono rispettati, il One-Time Pad è matematicamente inoppugnabile.  
    La formula utilizzata è identica a quella dei cifrari a flusso, ma la garanzia della sicurezza risiede nella perfetta casualità e nell'unicità della chiave.

##### Esempi pratici

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

##### Criticità e limiti

L'uso dell'XOR in crittografia presenta vantaggi notevoli in termini di efficienza computazionale e semplicità. Tuttavia, emergono alcune criticità:

- **Riutilizzo della chiave:** In sistemi dove la chiave (o keystream) viene usata più di una volta, l'analisi di coppie di messaggi cifrati può portare a rivelare informazioni sul testo in chiaro.
- **Qualità del keystream:** Un keystream non sufficientemente casuale può essere sfruttato tramite attacchi statistici o di criptoanalisi per recuperare la chiave o il testo originale.
- **Attacchi noti:** Tecniche come l'attacco al keystream riutilizzato (nota anche come "two-time pad") sfruttano la linearità dell'operazione XOR per individuare pattern e dedurre dati sensibili.
#### Multiplexer (MUX)

Un **multiplexer** (abbreviato in MUX) è un circuito logico combinatorio che seleziona uno tra molteplici ingressi e lo indirizza verso una singola uscita. Questa selezione è governata da specifici segnali di controllo, detti **linee di selezione**.
Immaginalo come un interruttore elettronico: in base a un comando (le linee di selezione), decide quale ingresso "passare" all'uscita.

##### Come Funziona?

1. **Ingressi:** $2^n$ ingressi ($A, B, C, D$), che rappresentano i dati tra cui scegliere.
2. **Linee di selezione:** $n$ linee di selezione ($P_1, P_2$) che servono per indicare quale ingresso attivare.
3. **Uscita:** L’uscita ($Y$) è il valore dell’ingresso selezionato.

---

##### Multiplexer 2-a-1
![[mux_2_1.png]]
Un **multiplexer 2-a-1** è il tipo più semplice di multiplexer. Ha:

- **2 ingressi**: $A$ e $B$,
- **1 linea di selezione**: $P$, che decide quale dei dati in ingresso viene inviato all'uscita,
- **1 uscita**: $Y$, che rappresenta l'ingresso selezionato.

###### Schema Logico del MUX 2-a-1

La funzione logica del MUX 2-a-1 è:

$$Y=A \cdot P + B \cdot \overline{P}$$

- Quando $P = 0$, l'uscita è uguale a $B$.
- Quando $P = 1$, l'uscita è uguale a $A$.

###### Tabella della Verità del MUX 2-a-1

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

##### Multiplexer 4-a-1
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

###### Espressione logica del MUX 4 a 1

L'espressione logica del MUX 4 a 1 è dunque:  
$$Y = A \cdot \overline{P_1} \cdot \overline{P_2} + B \cdot \overline{P_1} \cdot P_2 + C \cdot P_1 \cdot \overline{P_2} + D \cdot P_1 \cdot P_2$$

###### Tabella di verità

Ecco la tabella di verità per un MUX 4 a 1:

| $P_1$ | $P_2$ | $A$ | $B$ | $C$ | $D$ | $Y$ (uscita) |
| :---: | :---: | :-: | :-: | :-: | :-: | :----------: |
|   0   |   0   | $A$ |  X  |  X  |  X  |     $A$      |
|   0   |   1   |  X  | $B$ |  X  |  X  |     $B$      |
|   1   |   0   |  X  |  X  | $C$ |  X  |     $C$      |
|   1   |   1   |  X  |  X  |  X  | $D$ |     $D$      |

- $X$ indica che quel valore è irrilevante, poiché non influisce sull’uscita.
##### Altri multiplexer
Posso creare multiplexer con un qualunque numero di dati in ingresso, ricordando di avere $n$ linee di selezione e $2^n$ linee di dati.
#### Sommatore binario

> [!author] Fonte
> https://www.edutecnica.it/sistemi/sommatori/sommatori.htm

##### Introduzione

L’addizione è la più elementare delle operazioni aritmetiche; l’addizione è più o meno la sola cosa che i computer fanno. L’unico problema è riuscire a costruire qualcosa che produca delle somme col sistema binario, dato che tutte le macchine sono basate su questo sistema numerico.

Sommare numeri binari è più o meno come sommare numeri decimali. Per sommare due numeri come 245 e 673, si scompone il problema in passi più semplici. Ogni passo richiede soltanto di sommare una coppia di cifre decimali. In questo esempio si comincerebbe con 5 più 3, e così via.

I sommatori binari sono reti combinatorie che ricevono in ingresso **n bit** degli addendi da sommare e generano in uscita i bit della somma binaria con il relativo riporto. Si tratta, dunque, di un tipico esempio di rete combinatoria con ingressi multipli e uscite multiple, strutturata in modo da seguire il meccanismo secondo cui avviene la somma binaria.

##### Tipi di sommatori

Introduciamo, pertanto, i due blocchi funzionali fondamentali che sono:

- **Semi4 binario (HA - Half Adder)**: senza riporto in ingresso.
- **Sommatore binario (FA - Full Adder)**: con riporto in ingresso.

##### Circuito Semisommatore (HA)

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


##### Circuito Sommatore (FA)

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

##### Sommatore Parallelo

Quando si vogliono sommare numeri di più bit ciascuno, il metodo più semplice è quello di realizzare un **sommatore parallelo**. 
![[51529a5f41b1f9a0769f199e948e1693_MD5.jpeg]]
Questo viene costruito mettendo in cascata tanti Full Adder (FA) quanti sono i bit di ciascun numero binario da sommare.

Se utilizziamo numeri di 4 bit (nibble), i quattro bit di ciascun numero vengono presentati simultaneamente all'ingresso del sommatore parallelo. Nel caso migliore, la somma avviene simultaneamente se non ci sono riporti. Nel caso peggiore, invece, in cui ad ogni somma corrisponde un riporto, si avrà che questo bit traslerà dal primo HA a tutti gli altri FA fino all'ultimo.

Questo è uno schema completo di un sommatore a 4 bit che usa solo porte elementari ed in cui i numeri da sommare sono individuati dalle posizioni degli otto deviatori:

![[1ad6471b63cd2b6c56d9303f7935b843_MD5.jpeg]]
In questo circuito manca il riporto finale che va in overflow.
####   Sottrattori binari

In analogia a quanto visto per il sommatore, è possibile realizzare una rete combinatoria che effettua una sottrazione tra due numeri binari. Anche in questo caso, tenendo presenti le regole della sottrazione binaria, dobbiamo preparare due blocchi fondamentali:  
• il **semisottrattore binario (HS)**, senza prestito in ingresso  
• il **sottrattore binario (FS)**, con prestito in ingresso

#####   Circuito semisottrattore HS

Il semisottrattore è il blocco elementare che realizza la differenza di due bit: deve rispettare la seguente tabella della verità:

![[6efc97de7ad51c9fc3c7c7e1472e24c1_MD5.jpeg]]

In questo caso, invece di usare i teoremi dell’algebra di Boole, semplifichiamo la funzione con le **mappe di Karnaugh**, ottenendo le variabili di uscita seguenti:

![[fc5e973cfbe317ab605e2d2d7f95a498_MD5.jpeg]]

La differenza si ottiene facendo l’operazione di **XOR (OR esclusivo)** come nel caso del sommatore, mentre il prestito è un **AND logico** tra la variabile B e la variabile A negata.

![[8c102219a46729d55520da477206af34_MD5.jpeg]]

#####   Circuito sottrattore FS

Lo schema completo di un sottrattore è il seguente:

![[706ca81ccb2b0057ad8a2d7ff75fe783_MD5.jpeg]]

Dove:  
Aₙ e Bₙ sono i bit da sottrarre  
Pₙ è il prestito da richiedere  
Dₙ è la differenza binaria  
Pₙ₋₁ è il prestito da fornire

Il circuito logico che esegue la sottrazione è ottenuto in due fasi:

1. con un HS si sottraggono Aₙ e Bₙ
    
2. con un secondo HS si toglie il riporto Pₙ₋₁  
    I riporti in uscita convergono verso una porta OR.  
    In modo analogo al sommatore, non si verifica mai che a questa porta si presentino due 1 simultaneamente.
    

Per eseguire la sottrazione binaria di due numeri di n bit, bisogna disporre di **n blocchi elementari** collegati in cascata. Il primo blocco, meno significativo, può essere un HS; gli altri saranno FS.

Bisogna dire che, in caso di calcoli complessi, i sottrattori sono poco usati: si preferisce effettuare l’operazione tramite una **addizione con complementazione**.

In tal caso, la sottrazione viene effettuata aggiungendo al minuendo il **complemento a uno del sottraendo**. Il sottrattore risulta simile a un sommatore in cui uno dei due numeri è complementato.

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

Come visto nei sistemi digitali, i numeri interi relativi si rappresentano con il **complemento a 2**, utilizzando il bit più pesante come **bit di segno**:  
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

#### Display a 7 segmenti

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
