# FOCUS 1 — Il Settore Tecnologico Elettrico

## 1. Tre discipline, un unico ecosistema

Quando si parla di "settore elettrico" si intende in realtà un insieme di tre discipline strettamente connesse: **elettrotecnica**, **elettronica** e **automazione**. Nella pratica professionale si intrecciano continuamente, ma ognuna ha un oggetto di studio preciso. Capire dove finisce l'una e dove comincia l'altra è il primo passo per orientarsi nel settore.

### Elettrotecnica

Il punto di partenza storico è l'**elettrologia**: la branca della fisica che studia i fenomeni nei quali intervengono le cariche elettriche. Già nell'antichità (circa 600 a.C.) erano note alcune proprietà elettriche dell'ambra strofinata, ma si trattava di curiosità senza applicazione pratica. L'elettricità rimase un fenomeno affascinante e in larga parte incompreso per molti secoli, finché nel **1799** Alessandro Volta (1745–1827) costruì la prima pila elettrica: per la prima volta era possibile produrre e controllare una corrente elettrica in modo continuativo e ripetibile. Quella data segna convenzionalmente la nascita dell'**elettrotecnica**, la disciplina che non studia la fisica dell'elettricità in sé, ma le sue applicazioni su larga scala: produzione di energia nelle centrali, trasporto attraverso le reti, conversione in movimento nei motori. In sintesi, l'elettrotecnica lavora con grandi quantità di energia e con le macchine che la gestiscono.

Un modo semplice per distinguere elettrotecnica ed elettronica è pensare a **cosa si vuole ottenere dall'elettricità**.

Nell’elettrotecnica l’obiettivo è **trasferire e convertire energia** (accendere un motore, alimentare una casa, trasportare potenza su una rete).

Nell’elettronica, invece, l’obiettivo è **trasferire e trattare informazione** (misurare, comunicare, elaborare segnali).

Questa distinzione è fondamentale: stessa grandezza fisica (corrente elettrica), ma due utilizzi completamente diversi.

### Elettronica

L'**elettronica** nasce da un'esigenza diversa e complementare: trattare segnali elettrici molto deboli — spesso proporzionali a grandezze fisiche come temperatura, pressione o luminosità rilevate da sensori — che non possono essere usati direttamente perché troppo piccoli. L'oggetto dell'elettronica è quindi il segnale a bassa potenza: acquisirlo, amplificarlo, elaborarlo, trasmetterlo.

La storia dell'elettronica è una storia di miniaturizzazione progressiva. Nel **1904** Fleming inventò la valvola termoionica, primo dispositivo capace di amplificare un segnale, ma ingombrante e fragile. Nel **1948** arrivò il transistor a semiconduttore: stesso principio, dimensioni nettamente ridotte. Intorno al **1958** transistor e altri componenti iniziarono a essere integrati insieme in un unico chip di silicio, dando vita ai **circuiti integrati** e alla microelettronica. Il passo successivo, nel **1971**, fu il primo **microprocessore** commercializzato da Intel: una CPU completa su un singolo chip. Da quel momento l'elettronica digitale ha trasformato ogni aspetto della vita quotidiana e industriale.

### Automazione

L'**automazione** studia le tecniche per far funzionare macchine e processi in modo autonomo, riducendo o eliminando l'intervento diretto dell'uomo. Nata con la prima rivoluzione industriale per migliorare la produttività e ridurre errori e difetti, ha assunto nel tempo anche una dimensione etica: sottrarre l'uomo ai lavori più pericolosi, faticosi e ripetitivi.

L'automazione moderna è per sua natura **interdisciplinare**: per controllare un processo produttivo servono la potenza tipica dell'elettrotecnica, la capacità di elaborare segnali dell'elettronica e gli algoritmi di controllo dell'informatica. Il dispositivo che mette tutto insieme è tipicamente il **PLC** (Programmable Logic Controller), affiancato da microcontrollori e calcolatori dedicati.

Si può quindi leggere l’automazione come il punto di incontro tra le tre discipline:

- l’elettrotecnica fornisce l’energia necessaria al funzionamento
- l’elettronica acquisisce e tratta i segnali provenienti dai sensori
- l’informatica prende decisioni attraverso algoritmi di controllo

Un sistema automatico reale è sempre il risultato della collaborazione di queste tre componenti.

---

## 2. I comparti del settore elettrico

L'industria elettrica è uno dei settori portanti dell'economia italiana, con più della metà della produzione destinata all'esportazione. Si articola in tre macro-comparti che corrispondono alle tre discipline appena descritte: il comparto **elettrotecnico**, quello **elettronico** e quello dell'**automazione**. Molte aziende operano contemporaneamente in più di uno di questi ambiti, il che rende difficile tracciare confini netti, ma la distinzione concettuale rimane utile.

---

### 2.1 Comparto Elettrotecnico

Il comparto elettrotecnico copre l'intera catena dell'energia: dalla produzione alla distribuzione, fino agli apparecchi che la consumano. Seguirla dall'inizio alla fine è il modo più diretto per capire di cosa si occupa questo comparto.

#### Produzione di energia nelle centrali elettriche

Nelle centrali elettriche, qualunque sia la fonte utilizzata, il principio di funzionamento è sempre lo stesso: trasformare l'energia di una fonte primaria in energia elettrica attraverso una catena di conversioni.

![[Media/Power_Generation_Engineering_2.jpg]]

Il primo passaggio riguarda la **turbina**. Una fonte di energia esterna — l'acqua in caduta nelle centrali idroelettriche, il vento in quelle eoliche, il vapore prodotto nelle centrali termoelettriche — viene convogliata sulle pale di una turbina, mettendola in rotazione. L'energia della fonte si trasforma così in **energia meccanica rotatoria**.

![[Media/Power_Generation_Engineering_3.jpg]]

![[Media/Power_Generation_Engineering_5.jpg]]

Il secondo passaggio è la conversione di questa energia meccanica in elettricità, compito affidato all'**alternatore**, una macchina collegata direttamente all'albero della turbina.

L’alternatore è composto da due parti principali:

- lo **statore**, la parte fissa, che contiene gli avvolgimenti di rame;
- il **rotore**, la parte mobile, che genera un campo magnetico.

Quando la turbina fa ruotare l’albero, il rotore genera un **campo magnetico rotante**. Le bobine dello statore sono ferme, ma vengono attraversate da questo campo magnetico che cambia continuamente nel tempo.

![[Media/Power_Generation_Engineering_8.jpg]]
È qui che entra in gioco l’induzione elettromagnetica, descritta dalla legge di Faraday: una tensione elettrica si genera quando varia nel tempo il flusso magnetico che attraversa una bobina.

![[Media/alternatore.jpeg]]

Non è quindi il semplice movimento a generare la tensione, ma la **variazione del campo magnetico**. Nel caso dell’alternatore, questa variazione è causata dalla rotazione del rotore.

Questo è uno dei punti più importanti da capire.

Se il campo magnetico fosse **fermo rispetto alla bobina**, anche con il rotore in movimento non si genererebbe alcuna tensione.

Serve sempre una **variazione del flusso magnetico nel tempo**. Nel caso dell’alternatore questa variazione è ottenuta nel modo più pratico possibile: facendo ruotare un campo magnetico davanti a conduttori fermi.

Qui è importante non confondersi con l'immagine della pila. In una pila o in un generatore in corrente continua si pensa a due morsetti, positivo e negativo, tra cui le cariche vengono separate. Nell’alternatore, invece, la tensione **non** nasce perché un polo elettrico "tira" le cariche e l'altro le "spinge": nasce perché il **campo magnetico variabile induce una forza elettrica nel filo**.

Si può immaginare la bobina come una superficie attraversata da linee di campo magnetico. Durante la rotazione del rotore:

- il flusso magnetico aumenta
- poi diminuisce
- poi si inverte

Questa variazione ciclica genera una tensione che cambia nel tempo, dando origine alla **corrente alternata**.

Gli avvolgimenti dello statore non sono costituiti da poche bobine isolate, ma da molte bobine distribuite lungo la circonferenza e inserite nelle cave dello statore. Ogni bobina occupa due zone dello statore, spesso opposte, in modo da intercettare efficacemente il campo magnetico.

Dire che i due lati della bobina sono in posizioni opposte non significa che "si annullano". Significa che i due tratti attivi del filo si trovano in due zone diverse del campo magnetico rotante. Su entrambi i lati il campo variabile induce una tensione; poiché i due lati sono collegati tra loro nello stesso avvolgimento, e orientati in modo opportuno, queste tensioni **si sommano** ai capi della bobina invece di annullarsi.

In altre parole: i poli del rotore sono **poli magnetici**, non morsetti elettrici della bobina. Il loro compito è creare un campo magnetico che cambia rispetto al filo fermo dello statore; è questo cambiamento che mette in moto le cariche nel conduttore.

Le bobine appartenenti alla stessa fase sono collegate tra loro in serie, formando un unico avvolgimento continuo. Dal punto di vista elettrico, quindi, ciascuna fase si comporta come una singola bobina equivalente.

![[Media/Three_Phase_Power_Geometry_page_3_1.jpg]]

Le bobine sono organizzate in tre gruppi distinti:

- fase A
- fase B
- fase C

Questi gruppi sono disposti nello statore in modo intercalato e sfasato di 120° nello spazio. Poiché il campo magnetico rotante li attraversa in istanti diversi, le tensioni generate risultano sfasate di 120° anche nel tempo.

Il risultato è la **corrente alternata trifase**: tre tensioni distinte, sfasate tra loro di 120°.

La scelta di usare tre fasi non è casuale.

Un sistema trifase permette di:

- trasportare più potenza a parità di materiale conduttore
- ottenere campi magnetici rotanti naturali (fondamentali nei motori elettrici)
- ridurre le perdite e migliorare l’efficienza complessiva del sistema

Per questo motivo la trifase è lo standard nella produzione e distribuzione dell’energia elettrica.

Ogni fase ha due estremi. In totale, quindi, si hanno sei terminali: due per ciascuna fase. Questi terminali possono essere collegati tra loro secondo diverse configurazioni.
![[Media/Power_Generation_Engineering_9.jpg]]

Nella produzione e distribuzione dell’energia elettrica è molto comune il collegamento a **stella**. In questa configurazione, un estremo di ciascuna fase viene collegato agli altri due in un unico punto comune chiamato **neutro**.

![[Media/Three_Phase_Power_Geometry_page_9_1.jpg]]

Questo punto non è un centro fisico dell’alternatore, ma un nodo elettrico in cui tre conduttori sono collegati tra loro.

L’altro estremo di ciascuna fase rimane separato e costituisce le tre uscite della rete:

- fase A
- fase B
- fase C

Le tre fasi non si mescolano tra loro: restano tre segnali distinti, ciascuno con il proprio andamento nel tempo, ma riferiti a un punto comune, il neutro.

Il neutro ha il ruolo di riferimento e di conduttore di ritorno. In un sistema trifase perfettamente bilanciato, le correnti delle tre fasi si compensano e nel neutro non scorre corrente. Nella pratica, invece, i carichi non sono mai perfettamente uguali, e quindi nel neutro circola la corrente dovuta allo squilibrio tra le fasi.

È importante non interpretare il neutro come un "filo sempre senza corrente".

Il neutro è un conduttore reale: semplicemente, in condizioni ideali di equilibrio tra le tre fasi, le correnti si compensano e quindi la corrente risultante è nulla.

Appena il sistema si sbilancia, il neutro torna a essere percorso da corrente.

L’energia elettrica prodotta viene poi inviata a un trasformatore che ne aumenta la tensione per il trasporto su lunghe distanze. La rete di trasmissione è quindi costituita da tre fasi separate.

Quando l’energia arriva alle abitazioni, la rete resta trifase, ma normalmente ogni casa utilizza una sola fase più il neutro. Le abitazioni vengono distribuite tra le tre fasi in modo da bilanciare il carico complessivo della rete.
In questo modo, anche se ogni utenza domestica utilizza una sola fase, l’intero sistema elettrico continua a funzionare come un sistema trifase bilanciato.


Dal punto di vista dell'utente finale, questa organizzazione si traduce in due tipi di fornitura. La **fornitura monofase** (tipica delle abitazioni civili, 230 V) usa tre conduttori: la **fase (L)**, che porta la tensione; il **neutro (N)**, collegato a terra in prossimità del trasformatore; il **conduttore di protezione (PE)**, che collega le masse metalliche dell'impianto alla terra dell'edificio. La **fornitura trifase** (per utenze industriali o servizi condominiali) usa invece tre fasi (L₁, L₂, L₃) più il neutro e mette a disposizione **400 V** tra due fasi qualsiasi e **230 V** tra una fase e il neutro.

![[Media/Three_Phase_Power_Geometry_page_13_1.jpg]]

In pratica, quando si collega un elettrodomestico alla presa di casa, si sta utilizzando **una sola fase del sistema trifase generale**.

La complessità della produzione e distribuzione dell’energia resta quindi nascosta all’utente finale, che vede semplicemente una tensione "costante" di 230 V, ma che in realtà è parte di un sistema molto più articolato.

La tensione tra fase e neutro si chiama **tensione di fase**; quella tra due fasi si chiama **tensione concatenata**. In un sistema trifase simmetrico vale la relazione:

$$\boxed{V_{conc} = \sqrt{3} \cdot V_{fase}} \quad \Rightarrow \quad 400 \text{ V} \approx \sqrt{3} \cdot 230 \text{ V}$$

![[Media/Three_Phase_Power_Geometry_page_11_1.jpg]]


![[Media/Power_Generation_Engineering_10.jpg]]

#### Produzione di energia da fonti rinnovabili: impianti fotovoltaici

Accanto alle grandi centrali, il comparto comprende impianti di piccola e media dimensione per la produzione da fonti rinnovabili. Il più diffuso in ambito civile è l'**impianto fotovoltaico**, che si basa sull'**effetto fotovoltaico**: alcuni materiali semiconduttori, quando esposti alla luce solare, liberano elettroni che scorrono attraverso il materiale generando corrente. Non ci sono parti in movimento: è la luce a spingere direttamente gli elettroni.

A differenza delle centrali tradizionali, qui non c’è alcuna conversione in energia meccanica: l’energia della luce viene trasformata direttamente in energia elettrica.

Questo rende gli impianti fotovoltaici più semplici dal punto di vista meccanico, ma introduce complessità nella gestione elettronica e nell’integrazione con la rete.

L'elemento base è la **cella fotovoltaica** (tipicamente 15,6 × 15,6 cm), che produce circa 3 A a tensioni molto basse (0,4÷0,5 V). Per ottenere valori utili, le celle vengono collegate in serie e in parallelo secondo una gerarchia precisa:


```
Celle  →  Modulo  →  Pannello  →  Stringhe (serie)  →  Generatore fotovoltaico (stringhe in parallelo)
```



Le celle producono corrente **continua** (DC), mentre la rete domestica funziona in corrente **alternata** (AC): tra il generatore fotovoltaico e la rete è quindi indispensabile un **inverter** che esegua la conversione. Completano l'impianto i quadri di protezione (quadro DC, quadro AC, quadro generale) e i contatori.

Negli impianti **grid-connected** — collegati in parallelo alla rete del distributore — due contatori svolgono ruoli distinti: il **contatore di scambio** (bidirezionale) misura quanta energia viene immessa in rete e quanta ne viene prelevata; il **contatore di produzione** registra tutta l'energia generata dall'impianto. Quando la produzione supera il consumo l'eccedenza va in rete, quando non basta si preleva dalla rete. I moderni impianti possono includere anche un **sistema di accumulo** (batterie sul lato DC) per stoccare l'energia prodotta in eccesso, aumentare l'autoconsumo e ridurre la dipendenza dalla rete.

#### Produzione di componenti e apparecchiature per la distribuzione

Produrre energia è solo il primo passo: l'energia deve arrivare agli utenti in modo sicuro e controllato. Questo richiede una vasta gamma di componenti — conduttori, interruttori, contattori, relè, salvamotori — la cui produzione costituisce una parte fondamentale dell'industria elettrotecnica italiana.

Questi componenti vengono poi assemblati nei **quadri elettrici**, i nodi della rete di distribuzione. Un quadro di **bassa tensione (BT)** raccoglie in una struttura metallica tutte le apparecchiature di protezione e manovra necessarie a smistare e proteggere le linee a valle, per tensioni fino a 1.000 V in AC e 1.500 V in DC.

#### Produzione di apparecchi utilizzatori

In fondo alla catena ci sono gli **apparecchi utilizzatori**: i dispositivi che convertono l'energia elettrica in qualcosa di utile. I **motori elettrici** la convertono in movimento meccanico e sono fondamentali nell'industria e nei trasporti elettrificati (metropolitane, tram, treni). I prodotti **illuminotecnici** — in particolare le moderne lampade LED — la convertono in luce, con applicazioni che vanno dall'illuminazione domestica agli impianti per eventi sportivi e spettacoli all'aperto.

---

### 2.2 Comparto Elettronico

Mentre il comparto elettrotecnico si occupa di energia — produrla, trasportarla, convertirla — il comparto elettronico si occupa di **informazione**: acquisirla, elaborarla, trasmetterla. Sono due livelli diversi di lavoro con l'elettricità, e tenere chiara questa distinzione aiuta a capire perché esistano due comparti separati.

#### Microprocessori e microcontrollori: qual è la differenza?

Al cuore di qualsiasi sistema di elaborazione c'è un processore. Il termine però è ambiguo, perché in commercio esistono due tipi di dispositivi spesso confusi: il **microprocessore** e il **microcontrollore**.

Per capire la differenza, si parte dallo schema a blocchi di un computer generico: è composto da una CPU (che esegue le istruzioni), una memoria (che le conserva insieme ai dati) e interfacce di I/O (che permettono al sistema di comunicare col mondo esterno). Tutte queste unità sono collegate da **bus**, cioè percorsi comuni per i segnali.

Un **microprocessore** è soltanto la CPU: contiene l'unità di calcolo, ma memoria e I/O devono essere aggiunti esternamente. È la soluzione giusta per un computer potente e flessibile. Un **microcontrollore** integra invece in un unico chip la CPU, le memorie e le interfacce di I/O, richiedendo pochissimi componenti esterni, consumando poca energia (meno di 1 W) e costando molto poco. È la soluzione ideale per sistemi dedicati a una funzione specifica, dove non serve la flessibilità di un computer general-purpose.

In pratica, un **PC** o uno **smartphone** lavorano con microprocessori perché devono gestire sistemi operativi, molte applicazioni e grandi quantità di dati. Un **forno a microonde**, una **lavatrice**, un **termostato** o una **centralina elettronica** usano invece microcontrollori: devono leggere sensori, prendere poche decisioni ben definite e pilotare attuatori in modo affidabile e continuo.

| |Microprocessore (CPU)|Microcontrollore|
|---|---|---|
|Cosa include|Solo l'unità di calcolo|CPU + memorie + I/O, tutto in un chip|
|Componenti esterni necessari|Molti|Pochissimi|
|Applicazione tipica|Computer general-purpose|Sistemi embedded, automazione|

#### Componenti elettronici: attivi e passivi

Qualunque circuito elettronico è costruito con componenti che si dividono in due categorie. I **componenti passivi** — resistenze, condensatori — possono solo assorbire o immagazzinare energia: non amplificano segnali. I **componenti attivi** — transistor, circuiti integrati, diodi — possono amplificare segnali o commutare stati, e sono per questo i mattoni fondamentali dell'elaborazione elettronica.

#### PCB — Circuiti stampati

Avere i componenti giusti non basta: bisogna anche collegarli in modo preciso e affidabile. Il **PCB** (Printed Circuit Board, circuito stampato) è una basetta di materiale isolante — tipicamente fibra di vetro — su cui sono incise piste di rame che formano le connessioni tra i componenti. La progettazione avviene con software **ECAD** dedicati.

A seconda della complessità del circuito, il PCB può essere **monofaccia** (piste su un solo lato), **a doppia faccia** (piste su entrambi i lati) o **multistrato** (più strati sovrapposti, fino a spessori di 0,05 mm ciascuno), quest'ultimo usato dove la densità di componenti è molto elevata.

#### Elettronica di consumo

Il risultato finale di tutto questo lavoro — componenti, microchip, PCB — sono i prodotti che usiamo ogni giorno: smartphone, computer, televisori, frigoriferi, lavatrici. Questi rientrano nell'**elettronica di consumo**, tradizionalmente suddivisa in **elettrodomestici bianchi** (frigoriferi, lavatrici, lavastoviglie) e **elettrodomestici bruni** (TV, computer, telefoni, videocitofoni) — una distinzione nata decenni fa e oggi in parte superata, ma ancora utile per orientarsi nel settore.

#### Elettronica di potenza

C'è una zona di confine tra elettrotecnica ed elettronica che merita attenzione particolare: l'**elettronica di potenza**. È quella parte dell'elettronica dedicata alla conversione e al controllo dell'energia elettrica su scala significativa. I suoi componenti — diodi, IGBT, SCR, TRIAC, DIAC — lavorano con tensioni e correnti elevate, ma usano i principi dell'elettronica per controllare il flusso di energia con grande precisione.

|Componente|Funzione|
|---|---|
|Diodi / Raddrizzatori|Conversione da AC a DC|
|IGBT (Insulated Gate Bipolar Transistor)|Conversione da DC ad AC (es. inverter fotovoltaici)|
|SCR, TRIAC, DIAC|Controllo di potenza in AC (es. dimmer, regolatori di velocità)|

L'elettronica di potenza è presente ovunque: negli inverter degli impianti fotovoltaici, nei caricabatteria, nei convertitori di frequenza per i motori industriali.

#### Impianti di sicurezza

Un settore importante del comparto elettronico è quello degli **impianti di sicurezza**, progettati per proteggere beni e persone attraverso componenti elettronici e software specifici. Si articolano in tre famiglie: i **sistemi di controllo accessi** (badge, lettori biometrici, telecamere di lettura targhe), gli **impianti antintrusione** (una centrale collegata a sensori perimetrali e volumetrici) e gli **impianti di videosorveglianza** (sistemi TVCC con telecamere che registrano e trasmettono il segnale video).

---

### 2.3 Comparto dell'Automazione

Il terzo macro-comparto riguarda il **controllo automatico** dei processi: come si fa sì che macchine e impianti lavorino in modo autonomo, senza richiedere la presenza continua di un operatore.

#### Sistemi embedded a microcontrollore

Il protagonista dell'automazione moderna è spesso un **sistema embedded** (letteralmente "sistema incorporato"): un insieme di hardware e software progettato per svolgere una funzione specifica all'interno di un'apparecchiatura più grande — un'auto, un elettrodomestico, una macchina industriale. A differenza di un computer general-purpose, un sistema embedded fa bene una cosa precisa e la fa sempre. I microcontrollori, grazie a compattezza, basso consumo e costo contenuto, sono il cuore della stragrande maggioranza di questi sistemi.

#### Il PLC — Programmable Logic Controller

Quando le esigenze di automazione diventano più complesse — molti ingressi da leggere, molte uscite da controllare, ambienti industriali difficili — entra in gioco il **PLC**. Nella sua forma minima è composto da un alimentatore, una scheda CPU con il microprocessore, vari tipi di memoria (flash per il programma, RAM di lavoro, RAM con batteria tampone per le variabili con memoria) e una o più schede di interfaccia I/O per collegare sensori (ingressi) e attuatori (uscite).



Il funzionamento è ciclico: il microprocessore percorre continuamente la sequenza del programma, legge i valori degli ingressi, elabora la logica e aggiorna le uscite. Il tempo impiegato per completare questo ciclo è detto **tempo di ciclo**: in applicazioni real-time è un parametro critico, perché un ciclo troppo lento si traduce in una macchina che reagisce con ritardo agli eventi.

Il programma del PLC si scrive con linguaggi specifici, il più noto dei quali è il **linguaggio ladder** (_ladder diagram_, diagramma a scala). Il nome deriva dalla forma visiva dello schema: due linee verticali laterali (i montanti) collegate da linee orizzontali (i pioli) che descrivono le condizioni logiche. I contatti in **serie** corrispondono alla logica AND, quelli in **parallelo** alla logica OR, un contatto normalmente chiuso alla funzione NOT. Le fasi della programmazione sono cinque, in ordine: configurazione hardware, sviluppo del programma, simulazione al PC, simulazione sul PLC e messa in servizio.

#### Robotica industriale

Quando l'automazione riguarda il movimento fisico — saldatura, assemblaggio, movimentazione di materiali — entrano in scena i **robot industriali**: bracci meccanici controllati da software, diffusissimi nel settore automobilistico e manifatturiero. Accanto ai robot tradizionali si diffondono i **cobot** (robot collaborativi), dotati di sensori di sicurezza avanzati che permettono di lavorare fianco a fianco con l'uomo nello stesso spazio fisico.

La programmazione avviene con software proprietari. ABB, uno dei principali produttori, usa **RobotStudio** con il linguaggio **RAPID**, che fornisce istruzioni specifiche per il movimento (`MoveL`, `MoveJ`, `MoveC`) e lo spostamento. Prima dell'avvio in produzione reale, ogni programma viene validato in modalità **passo/passo**, che permette di verificare il comportamento di ogni singola istruzione nell'ordine in cui è stata scritta.

#### Domotica e Building Automation

L'automazione non riguarda solo le fabbriche: anche gli edifici civili e commerciali possono essere gestiti in modo automatico. Questo campo è noto come **domotica** (dal francese _domotique_, fusione di _domus_ e _informatique_). La normativa tecnica usa il termine **HBES** (Home and Building Electronic Systems), distinguendo tra:

- **Home Automation**: la singola abitazione, dove il sistema gestisce automaticamente luci, riscaldamento, raffrescamento, tapparelle e sicurezza.
- **Building Automation**: edifici collettivi (alberghi, ospedali, uffici, centri commerciali) dove la gestione è centralizzata attraverso un _building manager_ specializzato.

In entrambi i casi il principio fondamentale è lo stesso: tutti i dispositivi comunicano attraverso un unico **bus** (doppino di rame, fibra ottica o wireless), e il **comando è separato dall'attuatore** — le pulsantiere inviano messaggi sul bus, gli attuatori li ricevono e agiscono di conseguenza. Questo permette di riconfigurare l'impianto via software, senza toccare i cavi.

Un esempio tipico in abitazione è il comando di una luce: con un impianto tradizionale ogni pulsante deve essere cablato direttamente al punto luce; in un impianto domotico, invece, il pulsante invia un messaggio sul bus e l'attuatore nel quadro accende la lampada. Lo stesso principio si estende a tapparelle, climatizzazione, allarmi e scenari automatici come "esco di casa" o "notte".

Il protocollo standard europeo condiviso dai principali costruttori è **KNX**, nato dal consorzio EIB: i componenti di produttori diversi sono interoperabili senza interfacce aggiuntive. Il software di configurazione ufficiale è **ETS** (EIB Tools Software).

---

## 3. Sbocchi lavorativi nel settore

Gli sbocchi professionali corrispondono direttamente ai tre comparti appena descritti.

Chi approfondisce l'**elettrotecnica** può diventare **tecnico installatore/manutentore di impianti elettrici** (realizzazione di impianti civili e industriali, installazione di fotovoltaico, manutenzione e verifica normativa) oppure **tecnico progettista di impianti elettrici** (progettazione, calcolo e dimensionamento di impianti completi, inclusi quelli da fonti rinnovabili).

Chi si specializza nell'**elettronica** trova sbocchi come **tecnico di produzione** (gestione delle linee di montaggio di schede e apparecchiature), **tecnico in centri di vendita e assistenza** (supporto tecnico e commerciale nell'elettronica di consumo) oppure **tecnico di manutenzione** (assistenza di macchine e apparecchiature presso i clienti).

Chi sceglie l'**automazione** può diventare **progettista di sistemi automatici e robot** (sviluppo di automazioni con PLC, microcontrollori e robot industriali) o **tecnico domotico** (configurazione e installazione di apparecchiature domotiche).

---

# FOCUS 2 — Fondamenti di Elettricità ed Energia Elettrica

Il Focus 1 ha mostrato cosa fa il settore elettrico e come è organizzato. Per capire _perché_ funziona in quel modo — perché i cavi hanno una portata, perché esistono i trasformatori, perché un impianto ha bisogno di protezioni — bisogna scendere al livello dei fenomeni fisici di base. Questo Focus costruisce quelle basi partendo dall'atomo, con un percorso in cui ogni concetto apre la strada al successivo.

![[Media/Photon_to_Code_page_4_1.jpg]]

## 1. L'equilibrio elettrico della materia

Il punto di partenza è l'atomo. In condizioni normali, ogni atomo è elettricamente **neutro**: il numero di protoni (cariche positive) bilancia esattamente il numero di elettroni (cariche negative). Questo equilibrio può essere rotto da una forza esterna che strappa elettroni da un corpo e li trasferisce a un altro.

Il classico esempio è lo strofinio: fregando una bacchetta di vetro su un panno di lana, gli elettroni passano dal vetro alla lana. Il vetro, avendo perso elettroni, diventa **carico positivamente**; il panno, avendoli acquisiti, diventa **carico negativamente**. Un corpo che ha perso il proprio equilibrio elettrico si chiama corpo **elettrizzato** o **carico**.

Avvicinando due corpi carichi si osserva sempre la stessa regola: **cariche uguali si respingono, cariche opposte si attraggono**. È questa forza, che agisce tra le cariche, il motore di tutti i fenomeni elettrici che seguono.

---

## 2. La carica elettrica (Q)

Per lavorare con questi fenomeni in modo quantitativo serve una grandezza che misuri "quanta elettrizzazione" ha un corpo. Questa grandezza è la **carica elettrica**, simbolo **Q**, misurata in **coulomb (C)**.

La carica di un singolo elettrone vale −1,602 · 10⁻¹⁹ C; quella di un protone vale +1,602 · 10⁻¹⁹ C. Il coulomb è quindi un'unità enorme: per fare 1 C servono circa 6,24 · 10¹⁸ elettroni. Anche i circuiti più semplici coinvolgono quantità di cariche astronomiche.

> **Esempio risolto — Numero di elettroni**
> 
> La sezione di un conduttore è stata percorsa da una carica totale di 1.800 C. Quanti elettroni sono transitati?
> 
> $$N = \frac{Q}{e} = \frac{1.800}{1{,}602 \cdot 10^{-19}} \approx 1{,}1 \cdot 10^{22} \text{ elettroni}$$

---

## 3. Il generatore elettrico e la tensione (V)

Ora che sappiamo misurare la carica Q, possiamo chiederci: cosa serve per separarla? Le cariche opposte si attraggono, e tenerle separate richiede compiere un **lavoro** contro questa forza. Il lavoro (L), misurato in joule [J], è il prodotto della forza applicata per lo spostamento compiuto:

$$L = F \cdot s \quad \text{[J]}$$

Nella pratica industriale servono i **generatori elettrici**: dispositivi che compiono questo lavoro in modo continuativo, accumulando cariche positive al **morsetto positivo (+)** e cariche negative al **morsetto negativo (−)**. Il lavoro così compiuto rimane disponibile nelle cariche stesse come energia potenziale: quando i due poli vengono collegati a un utilizzatore esterno, questa energia si trasforma in calore, luce o movimento.

La grandezza che quantifica questa "riserva di energia" è la **tensione elettrica** (o differenza di potenziale): il lavoro compiuto per separare le cariche, diviso per la quantità di carica separata.

$$\boxed{V = \frac{L}{Q}} \quad \Rightarrow \quad L = V \cdot Q$$

![[Media/Three_Phase_Power_Geometry_page_2_1.jpg]]

L'unità di misura è il **volt (V)**: un generatore a 1 V compie 1 J di lavoro per spostare 1 C di carica. La grandezza interna che descrive la capacità del generatore di mantenere le cariche separate è la **forza elettromotrice (f.e.m.)**, simbolo **E**, che coincide con la tensione ai morsetti a circuito aperto.

**Tensioni tipiche di generatori comuni:**

|Generatore|Tensione tipica|
|---|---|
|Pila a stilo|1,5 V|
|Batteria dell'auto|12 V|
|Rete monofase (civile)|230 V|
|Rete trifase (industriale)|400 V|

### Generatori in serie e in antiserie

Quando una singola sorgente non fornisce la tensione necessaria, si collegano più generatori in **serie**: il polo positivo del primo al polo negativo del secondo, e così via. Le f.e.m. si sommano algebricamente:

$$E_{tot} = E_1 + E_2 + E_3 + \ldots$$

Se un generatore viene inserito con i poli invertiti rispetto agli altri (in **antiserie**), il suo contributo è negativo.

> **Esempio risolto — Generatori in serie con antiserie**
> 
> 5 generatori da 2 V ciascuno, di cui uno inserito in antiserie:
> 
> $$E_{tot} = (+2) + (+2) + (+2) + (+2) + (-2) = \mathbf{6 \text{ V}}$$

> **Esempio risolto — Lavoro del generatore**
> 
> Una carica Q = 0,5 mC è soggetta a una tensione di 10 V. Qual è il lavoro sviluppato?
> 
> $$L = Q \cdot V = 0{,}5 \cdot 10^{-3} \cdot 10 = \mathbf{5 \text{ mJ}}$$

---

## 4. La corrente elettrica (I)

Fin qui abbiamo parlato di cariche ferme, accumulate ai poli di un generatore. La situazione cambia quando si collega un utilizzatore esterno tra i due poli: le cariche trovano un percorso e si mettono in moto, liberando la loro energia nel passaggio attraverso il conduttore. Questo **flusso ordinato e continuo di cariche** è la **corrente elettrica**.

L'**intensità di corrente** (simbolo **I**) misura quante cariche attraversano una sezione del conduttore nell'unità di tempo:

$$\boxed{I = \frac{Q_T}{t}} \quad \text{[A]}$$

L'unità di misura è l'**ampere (A)**: scorre 1 A quando transita 1 C di carica ogni secondo. Per il principio di conservazione della carica, la corrente è la stessa in tutti i punti dello stesso ramo di circuito — gli elettroni sono materia e non possono sparire lungo il percorso.

Vale la pena chiarire il **verso convenzionale della corrente**: fisicamente, nei conduttori metallici, sono gli elettroni (cariche negative) a muoversi, dal polo negativo verso quello positivo. Per ragioni storiche, però, si è scelto di definire il verso della corrente come quello delle cariche positive, ovvero dal polo positivo verso quello negativo all'esterno del generatore. Nei calcoli non cambia nulla, ma è importante non confondersi quando si leggono gli schemi.

> **Esempio risolto — Intensità di corrente**
> 
> Attraverso la sezione di un conduttore scorre in un'ora una carica di 1.800 C.
> 
> $$I = \frac{Q_T}{t} = \frac{1.800}{3.600} = \mathbf{0{,}5 \text{ A}}$$

> **Esempio risolto — Durata di una pila**
> 
> Una pila da 1,5 V con capacità 1.200 mAh alimenta una lampadina che assorbe 1 A. La capacità in mAh esprime la carica totale disponibile (prodotto di corrente × tempo). Il tempo di funzionamento è:
> 
> $$t = \frac{Q_T}{I} = \frac{1.200 \text{ mAh}}{1 \text{ A}} = \mathbf{1{,}2 \text{ h}} \quad \text{(1 ora e 12 minuti)}$$

---

## 5. La resistenza elettrica (R)

Un conduttore ideale lascerebbe scorrere le cariche senza alcun ostacolo. Nella realtà i conduttori non sono ideali: gli elettroni in movimento urtano continuamente contro gli ioni del reticolo cristallino del materiale, perdendo energia a ogni urto. Questo effetto di "frenata" è la **resistenza elettrica**, simbolo **R**, misurata in **ohm (Ω)**.

La resistenza può essere una caratteristica indesiderata del conduttore (un cavo che scalda) oppure un elemento introdotto intenzionalmente per svolgere una funzione: in quel caso si chiama **resistore**.

### Prima legge di Ohm

Per un dato conduttore, la corrente che lo attraversa è **proporzionale alla tensione applicata**: se la tensione raddoppia, la corrente raddoppia. Il coefficiente di proporzionalità è la resistenza stessa, e questa relazione è la **prima legge di Ohm**:

$$\boxed{R = \frac{V}{I}} \quad \Leftrightarrow \quad V = R \cdot I \quad \Leftrightarrow \quad I = \frac{V}{R}$$

![[Media/The_Modern_Electrical_Blueprint_page_3_1.jpg]]
Un resistore ha 1 Ω quando, sottoposto a 1 V, viene attraversato da 1 A.

> **Esempio risolto**
> 
> Un conduttore percorso da 10 A presenta ai capi una tensione di 2 V.
> 
> $$R = \frac{V}{I} = \frac{2}{10} = \mathbf{0{,}2 \ \Omega}$$

> **Esempio risolto**
> 
> Una resistenza di 100 Ω è sottoposta a 10 V.
> 
> $$I = \frac{V}{R} = \frac{10}{100} = \mathbf{0{,}1 \text{ A}}$$

### Seconda legge di Ohm

La prima legge di Ohm dice _quanto_ vale la resistenza, ma non spiega _da cosa_ dipende. La **seconda legge di Ohm** risponde: la resistenza di un conduttore dipende dal materiale di cui è fatto e dalla sua geometria.

$$\boxed{R = \rho \cdot \frac{l}{S}}$$

dove **ρ** (rho) è la **resistività** del materiale [Ω·mm²/m], **l** è la lunghezza [m] e **S** è la sezione trasversale [mm²]. Un filo lungo e sottile oppone più resistenza di uno corto e spesso — esattamente come un tubo lungo e stretto oppone più resistenza al flusso dell'acqua.

![[Media/The_Modern_Electrical_Blueprint_page_4_1.jpg]]

> **Esempio risolto — Calcolo della sezione**
> 
> Una matassa di rame (ρ = 0,0173 Ω·mm²/m), lunga 100 m, ha una resistenza di 0,692 Ω.
> 
> $$S = \frac{\rho \cdot l}{R} = \frac{0{,}0173 \cdot 100}{0{,}692} = \mathbf{2{,}5 \text{ mm}^2}$$

### Caduta di tensione e differenza di potenziale

Una resistenza percorsa da corrente causa una **caduta di tensione** ai suoi capi: le cariche entrano da un estremo ad alto potenziale e escono dall'altro a potenziale più basso, avendo ceduto energia lungo il percorso.

$$V_{AB} = R \cdot I$$

La **differenza di potenziale** tra i punti A e B vale $\Delta V = V_A - V_B$; il segno dipende dalla direzione in cui si misura: $V_{BA} = -V_{AB}$.

In un circuito chiuso con un solo generatore e una sola resistenza, tutta l'energia del generatore viene ceduta alla resistenza: $E = V_{AB}$, da cui $I = E/R$.

> **Esempio risolto — Cadute di tensione in serie**
> 
> I = 0,5 mA; R₁ = 12 kΩ; R₂ = 100 kΩ. Calcolare V_BA e V_DC.
> 
> La corrente entra in R₁ dal morsetto B, che è quindi a potenziale maggiore di A: $$V_{BA} = R_1 \cdot I = 12 \cdot 10^3 \cdot 0{,}5 \cdot 10^{-3} = \mathbf{6 \text{ V}}$$
> 
> Per V_DC la corrente entra dal morsetto C, quindi il segno si inverte: $$V_{DC} = -(R_2 \cdot I) = -(100 \cdot 10^3 \cdot 0{,}5 \cdot 10^{-3}) = \mathbf{-50 \text{ V}}$$

---

## 6. Potenza ed energia elettrica

Tensione, corrente e resistenza descrivono come si comporta un circuito. Nella pratica, però, la domanda più immediata riguarda spesso qualcosa di diverso: quanta energia viene consumata o prodotta nell'unità di tempo? Questa grandezza è la **potenza elettrica**:

$$\boxed{P = V \cdot I} \quad \text{[W]}$$

Un watt equivale a trasferire un joule al secondo. Per un generatore la potenza è _generata_; per un utilizzatore è _consumata_. Per un resistore specificamente, combinando la legge di Ohm con la formula della potenza si ottengono tre espressioni equivalenti:

$$P = V \cdot I = R \cdot I^2 = \frac{V^2}{R}$$

> **Esempio risolto — Corrente da potenza e tensione**
> 
> Una lampadina da 60 W alimentata a 230 V:
> 
> $$I = \frac{P}{V} = \frac{60}{230} \approx \mathbf{0{,}26 \text{ A}}$$

> **Esempio risolto — Tensione massima su un resistore**
> 
> Una resistenza di 100 Ω sopporta al massimo 0,25 W:
> 
> $$V_{max} = \sqrt{P \cdot R} = \sqrt{0{,}25 \cdot 100} = \mathbf{5 \text{ V}}$$

Tutta la potenza dissipata in una resistenza si trasforma in **calore**: è l'**effetto Joule**, individuato dal fisico inglese James Joule (1818–1889). È lo stesso principio che riscalda la resistenza di una stufa elettrica, ma è anche la causa del surriscaldamento indesiderato dei cavi percorsi da correnti eccessive. Questo riscaldamento è il motivo per cui ogni cavo ha una portata massima — concetto che riprenderemo nel Focus 3.

---

## 7. Circuiti resistivi

Con le grandezze appena definite si possono analizzare reti elettriche complete. I **circuiti resistivi** — reti di sole resistenze collegate a un generatore — sono il caso più semplice, ma sufficiente per capire i principi che governano qualsiasi rete.

![[Media/Photon_to_Code_page_5_1.jpg]]

### Resistenze in serie

Nel collegamento in **serie** le resistenze si trovano sullo stesso ramo e sono percorse dalla **stessa corrente**: le cariche non hanno percorsi alternativi. Le tensioni ai capi di ogni resistenza si sommano:

$$V_{tot} = V_1 + V_2 + V_3 = I \cdot (R_1 + R_2 + R_3)$$

Dal punto di vista del generatore, l'intero gruppo si comporta come un'unica resistenza equivalente:

$$\boxed{R_{eq} = R_1 + R_2 + R_3 + \ldots}$$

Questa proprietà ha un'applicazione pratica diretta: il **partitore di tensione**, che permette di prelevare una tensione intermedia ai capi di una delle resistenze.

> **Esempio risolto — Partitore di tensione**
> 
> Da un generatore di 12 V si vuole ottenere 4 V, prelevando al massimo 1 mA.
> 
> La resistenza totale deve essere: $R_{tot} = 12 \text{ V} / 1 \text{ mA} = 12 \text{ k}\Omega$
> 
> Per avere 4 V su R₂ e 8 V su R₁, si usano R₁ = 8 kΩ e R₂ = 4 kΩ.

### Resistenze in parallelo

Nel collegamento in **parallelo** le resistenze hanno i terminali in comune e sono soggette alla **stessa tensione**: le cariche si dividono tra i vari rami, ognuno percorso da una corrente diversa. La corrente totale è la somma delle correnti parziali, e la resistenza equivalente si calcola come:

$$\boxed{\frac{1}{R_{eq}} = \frac{1}{R_1} + \frac{1}{R_2} + \frac{1}{R_3} + \ldots}$$

Per **due sole resistenze in parallelo** la formula si semplifica:

$$R_{eq} = \frac{R_1 \cdot R_2}{R_1 + R_2}$$

Aggiungere resistenze in parallelo _riduce_ la resistenza equivalente, perché si moltiplicano le strade disponibili alle cariche. È per questo che collegare più elettrodomestici alla stessa presa aumenta la corrente totale assorbita dalla rete.

> **Esempio risolto**
> 
> Due resistenze da 100 Ω in parallelo:
> 
> $$R_{eq} = \frac{100 \cdot 100}{100 + 100} = \mathbf{50 \ \Omega}$$

---

# FOCUS 3 — Impianto Elettrico Residenziale

Il Focus 2 ha fornito le basi fisiche: carica, tensione, corrente, resistenza, potenza, effetto Joule. Questo Focus mostra dove si ritrovano tutti questi concetti nella pratica quotidiana: nell'impianto elettrico di un'abitazione. Si seguirà il percorso dell'energia dalla centrale fino alla presa a muro, poi si vedrà come l'impianto è costruito componente per componente e, infine, come è protetto.

## 1. Come arriva l'energia a casa nostra

L'energia elettrica viene prodotta nelle centrali ad altissima tensione e trasportata su lunghe distanze prima di essere trasformata in una forma adatta agli impianti civili. Trasmettere a tensione elevata riduce drasticamente le perdite per effetto Joule nei cavi: a parità di potenza trasportata, una tensione più alta implica una corrente più bassa, e le perdite dipendono da $R \cdot I^2$.

Il percorso è articolato in quattro livelli:

1. **Centrale elettrica** → produce energia in **alta tensione (AT)**, decine o centinaia di kV.
2. **Rete di trasmissione nazionale** → trasporta l'energia su grandi distanze.
3. **Cabine di trasformazione** → abbassano la tensione da AT a **media tensione (MT)**, poi da MT a **bassa tensione (BT)** (230/400 V) tramite trasformatori da palo vicini all'utenza.
4. **Impianto dell'utente** → distribuisce l'energia all'interno dell'edificio.

![[Media/Photon_to_Code_page_7_1.jpg]]

### Classificazione degli impianti per livello di tensione

|Categoria|Tensione nominale|Descrizione|
|---|---|---|
|0|V_n ≤ 50 V|Bassissima tensione|
|1|50 V < V_n ≤ 1.000 V|Bassa tensione (civile/industriale leggero)|
|2|1.000 V < V_n ≤ 30.000 V|Media tensione|
|3|V_n > 30.000 V|Alta tensione|

---

## 2. La corrente alternata sinusoidale

L'energia viene distribuita in **corrente alternata sinusoidale**: un segnale che oscilla ritmicamente tra valori positivi e negativi. Capire i suoi parametri è necessario per interpretare le specifiche di qualsiasi componente dell'impianto.

![[Media/Photon_to_Code_page_6_1.jpg]]

Il **periodo T** è il tempo per completare un'oscillazione completa; la **frequenza f** è il numero di oscillazioni al secondo ($f = 1/T$). Il **valore massimo V_M** è l'ampiezza di picco. Il **valore efficace V** è il parametro più utile in pratica: è il valore di tensione continua che, applicata allo stesso resistore per lo stesso tempo, svilupperebbe la stessa quantità di calore. Lo stesso ragionamento vale per la corrente: anche in AC si usano normalmente i **valori efficaci** di tensione e corrente.

$$\boxed{V = \frac{V_M}{\sqrt{2}}} \approx 0{,}707 \cdot V_M$$

In Europa la frequenza è **50 Hz** (T = 20 ms). La tensione efficace di rete è **230 V**, quindi il valore di picco è $V_M = 230 \cdot \sqrt{2} \approx 325 \text{ V}$: valore molto più elevato di quello indicato sui componenti, ma che dura solo un istante.

---

## 3. La fornitura elettrica: monofase e trifase

La distinzione tra **fornitura monofase** e **fornitura trifase** è già stata introdotta nel Focus 1, nel punto in cui si segue il passaggio dall'alternatore alla distribuzione verso le utenze. Nel contesto dell'impianto residenziale basta ricordare che l'abitazione ordinaria riceve normalmente una **fase + neutro + PE** a **230 V**, mentre utenze più impegnative possono richiedere una fornitura **trifase**.

---

## 4. L'impianto elettrico residenziale e i suoi componenti

L'impianto residenziale è dimensionato in funzione della **potenza impegnata** e dei carichi previsti, e si sviluppa come una catena di componenti, ognuno con un ruolo preciso. Seguirla dall'ingresso dell'edificio all'ultimo punto luce è il modo migliore per capirla.

### Il contatore

Il **contatore** è il punto di confine tra la rete del distributore e l'impianto privato. Misura l'energia consumata in **kWh** e comunica i dati al gestore attraverso la stessa linea elettrica di distribuzione — tecnica delle "onde convogliate" — senza bisogno di una rete dati separata.

### I conduttori

Dal contatore l'energia viene trasportata attraverso i **conduttori**: cavi in rame rivestiti di materiale isolante. Ogni cavo è caratterizzato dalla sua **sezione** (in mm²) e dalla sua **portata I_Z**: la corrente massima che può scorrere in modo permanente senza che il cavo si surriscaldi per effetto Joule.

|Sezione [mm²]|Portata [A]|
|---|---|
|1,5|15,5|
|2,5|21|
|4|28|
|6|36|
|10|50|

Il cavo multipolare che collega il contatore al centralino si chiama **montante**. La sua sezione si sceglie anche in base alla lunghezza: più è lungo, più alta è la resistenza e quindi la caduta di tensione (seconda legge di Ohm).

|Lunghezza massima [m]|Sezione [mm²]|
|---|---|
|17|6|
|29|10|
|45|16|

I cavi vengono infilati all'interno di **tubi guidacavo corrugati**: la forma a onde coniuga flessibilità (si piegano facilmente in curva) e resistenza meccanica, permettendo di infilare i cavi dopo aver già posato i tubi a muro.

### Il centralino (QUA — Quadro di Unità Abitativa)

Il centralino è il nodo di smistamento e protezione dell'impianto: un involucro isolante, solitamente vicino all'ingresso, che contiene tutti i dispositivi di protezione. Deve essere sempre presente un **interruttore generale**, dimensionato in base alla potenza contrattuale dell'utenza, più un **interruttore magnetotermico** dedicato a ogni circuito.

![[Media/The_Modern_Electrical_Blueprint_page_5_1.jpg]]

L'interruttore magnetotermico è dimensionato sulla **corrente nominale I_n**: il valore massimo di corrente che può scorrere indefinitamente senza aprire i contatti. Se la corrente supera I_n per abbastanza tempo, l'interruttore scatta, proteggendo il cavo dal surriscaldamento per effetto Joule.

|Circuito|Sezione cavo [mm²]|I_n interruttore [A]|
|---|---|---|
|Luci|1,5|10|
|Prese|2,5|16|
|Piano cottura a induzione|4|25|

Oltre agli interruttori magnetotermici, la norma prescrive almeno due **interruttori differenziali** per la protezione delle persone dall'elettrocuzione — dispositivi che vedremo in dettaglio nella sezione successiva.

### Scatole di derivazione e scatole portafrutti

Dal centralino i cavi si diramano attraverso le **scatole di derivazione**, i nodi interni dell'impianto. Da lì raggiungono le **scatole portafrutti**: le terminazioni incassate a parete che ospitano gli apparecchi modulari agganciati a scatto su appositi supporti. Le scatole "503" contengono fino a 3 moduli, le "504" fino a 4, le "506" fino a 6.

### Spine e prese

Le prese domestiche italiane sono di due tipi — da **10 A** e da **16 A** — con il contatto di terra al centro. Sono diffuse anche le prese **schuko** (con contatti di terra laterali). Per accettare entrambe le tipologie si usa la presa multistandard **UNEL bipasso**.

### Dispositivi di comando

L'**interruttore unipolare** è il più semplice: seziona la fase per il comando da un solo punto, con due posizioni stabili (aperto/chiuso). Il **deviatore** aggiunge un morsetto (tre in totale) e permette il comando da **due punti** — tipicamente all'inizio e alla fine di un corridoio. L'**invertitore**, con quattro morsetti, si inserisce tra due deviatori e porta il comando a **tre o più punti**: ogni invertitore aggiunto estende il sistema di un punto ulteriore.

Il **pulsante** è **monostabile**: l'unica posizione di riposo è con i contatti aperti, e la chiusura dura solo mentre si preme. Si usa per il campanello (suoneria) e per il **ronzatore** — avvisatore acustico di forte intensità per chiamate di servizio o di soccorso (es. pulsante a tirante nel bagno).

### Il relè

Quando si vuole controllare un circuito ad alta potenza con un segnale debole, o automatizzare sequenze di comando, si usa il **relè**: un dispositivo composto da una **bobina** (l'elettromagnete eccitato dalla corrente di comando), un'**ancora mobile** (attratta dall'elettromagnete) e dei **contatti** che si aprono o si chiudono con il movimento dell'ancora. Il segnale di comando è fisicamente separato dal circuito controllato — questo isolamento è il vantaggio principale del relè.

Il **relè interruttore** (o passo-passo) è una variante ciclica: cambia stato a ogni impulso ricevuto, alternando apertura e chiusura. È la soluzione ideale per il comando luci da cinque o più punti, dove usare molti invertitori richiederebbe troppi conduttori.

### Lampade LED

Le lampade a **LED** (Light Emitting Diode) hanno quasi completamente sostituito le lampade a incandescenza grazie a lunga durata (oltre 50.000 ore) ed elevata efficienza luminosa. Si basano sulla capacità di particolari materiali semiconduttori di emettere luce quando percorsi dalla corrente. Sono disponibili in varie forme — a bulbo con filamenti (~320°), a bulbo con cupola (~180°), a faretto con riflettore (24°÷60°) — per adattarsi a ogni esigenza illuminotecnica.

---

## 5. Il pericolo dell'elettrocuzione e i dispositivi di protezione

Un impianto elettrico mal progettato o danneggiato può essere pericoloso. L'**elettrocuzione** è il danno causato dal passaggio di corrente attraverso il corpo umano: i suoi effetti vanno dal formicolio fino all'arresto cardiaco, e dipendono dall'intensità della corrente, dalla durata del contatto, dal percorso seguito nel corpo (il percorso mano-piede attraversa il cuore ed è il più pericoloso), dal tipo di corrente e dalle condizioni fisiche della persona.

### Contatti diretti e indiretti

Si parla di **contatto diretto** quando la persona tocca una parte normalmente in tensione (un conduttore scoperto, un morsetto). Si parla di **contatto indiretto** quando tocca una massa metallica — la carcassa di un elettrodomestico — che in condizioni normali non è in tensione ma lo è diventata per un guasto o per il cedimento dell'isolamento. La distinzione è importante perché i due tipi richiedono strategie di protezione diverse.

Negli impianti civili italiani è tipico il sistema **TT**: il neutro del distributore è collegato a terra da un lato, mentre l'utente ha un proprio impianto di terra indipendente a cui sono collegate le masse metalliche tramite il conduttore **PE**. In caso di guasto verso massa, questa struttura offre alla corrente di dispersione un percorso verso terra e rende efficace l'intervento del differenziale.

### L'interruttore differenziale (salvavita)

Per progettare e verificare le protezioni si utilizzano gli **schemi funzionali**: rappresentazioni grafiche dell'impianto in cui due linee orizzontali (i conduttori di alimentazione) sono collegate da linee verticali e orizzontali che mostrano i collegamenti tra gli apparecchi, indipendentemente dalla loro posizione fisica reale. Le apparecchiature sono disegnate nella condizione di riposo (contatti aperti).

La protezione principale contro entrambi i tipi di contatto è l'**interruttore differenziale**. Il suo funzionamento si basa su un principio semplice: misura continuamente la corrente che _entra_ nel circuito e quella che _ritorna_. In condizioni normali le due sono uguali. Se si verifica una dispersione verso terra — qualcuno si prende una scossa, o l'isolamento di un cavo è ceduto — la corrente di ritorno diventa minore di quella di andata. Il differenziale rileva questa differenza e **apre il circuito in pochi millisecondi**.

I dispositivi ad alta sensibilità, detti **salvavita**, intervengono per correnti di dispersione ≤ **30 mA**: valore scelto come compromesso tra protezione delle persone e continuità di servizio. Il differenziale non sostituisce però il magnetotermico: il primo protegge soprattutto dalle **correnti di dispersione verso terra**, il secondo da **sovraccarichi e cortocircuiti**. Il salvavita non è inoltre infallibile: non interviene per dispersioni inferiori a 30 mA (che nel tempo possono causare tetanizzazione), né in caso di contatto simultaneo con due conduttori attivi.

![[Media/The_Modern_Electrical_Blueprint_page_6_1.jpg]]

---

# FOCUS 4 — Elementi di Logica Combinatoria


> [!warning] Nota bene
> Il contenuto di questa dispensa è molto sintetico, fatto per dare una semplice idea sulla logica combinatoria. Per una dispensa più approfondita, si rimanda alla [[Dispensa sull'algebra di Boole e circuiti logici]].


I Focus 2 e 3 si sono occupati dell'energia: come si genera, come si distribuisce, come si usa in un impianto. Esiste però un altro livello di funzionamento dei sistemi elettrici moderni — PLC, microcontrollori, dispositivi digitali in genere — che riguarda non l'energia ma la **logica**: come un sistema decide cosa fare in base agli ingressi che riceve. Questo Focus costruisce le basi di quel ragionamento.

## 1. Segnali analogici e digitali

Il punto di partenza è capire come si rappresenta l'informazione in un sistema elettronico.

Un **segnale analogico** può assumere qualsiasi valore all'interno di un intervallo continuo: la temperatura, la voce, la tensione di rete. Il problema è che i segnali analogici sono sensibili al rumore elettrico — qualsiasi interferenza si sovrappone al segnale utile in modo difficilmente eliminabile.

Un **segnale digitale** ha invece un numero finito di valori possibili. Il caso più importante è quello **binario**: solo due stati, convenzionalmente 0 e 1. Un circuito digitale non si chiede "quanto vale esattamente questo segnale?" ma soltanto "è sopra o sotto una certa soglia?". Questa semplificazione rende i circuiti digitali molto più resistenti al rumore, molto più facili da progettare e capaci di memorizzare e trasmettere qualsiasi tipo di informazione come sequenza di bit.

### Logica cablata vs. logica programmabile

Una funzione digitale può essere realizzata in due modi fondamentalmente diversi. Nella **logica cablata** la funzione è fisicamente costruita collegando componenti tra loro — relè e contattori in un quadro, oppure circuiti integrati su un PCB. Il sistema può svolgere solo la funzione per cui è stato costruito: modificarla richiede di intervenire sul cablaggio.

Nella **logica programmabile** la stessa funzione è descritta da un programma software memorizzato in un processore. Cambiare la funzione significa modificare il programma, senza toccare l'hardware.

| |Logica cablata|Logica programmabile|
|---|---|---|
|Come funziona|Componenti fisicamente connessi|Programma su un processore|
|Flessibilità|Nulla: per cambiare serve ricablare|Alta: si modifica il software|
|Esempi|Pulsanti, relè, contattori|PLC, microcontrollori|

---

## 2. Reti combinatorie

Il blocco di base della logica cablata è la **rete combinatoria**: un circuito digitale in cui le uscite dipendono _esclusivamente_ dagli ingressi nell'istante corrente, senza alcuna memoria di stati precedenti. Dati certi ingressi, l'uscita è sempre la stessa — il circuito non "ricorda" cosa è successo prima.

Il comportamento di una rete combinatoria è descritto completamente dalla sua **tabella della verità**: una tabella che elenca tutte le possibili combinazioni degli ingressi e il valore dell'uscita per ciascuna. Con **n** ingressi binari le combinazioni possibili sono **2ⁿ**. Per costruirla in modo sistematico senza duplicazioni si numerano le righe dal basso: la colonna più a destra alterna 0 e 1, la seconda da destra alterna coppie 00 e 11, la terza alterna gruppi di quattro 0000 e 1111, e così via.

**Esempio** — Tabella della verità per una funzione con 2 ingressi:

|A|B|Y|
|---|---|---|
|0|0|?|
|0|1|?|
|1|0|?|
|1|1|?|

Con 2 ingressi si ottengono 2² = 4 righe. Il valore di Y per ciascuna riga dipende dalla funzione che si vuole realizzare.

---

## 3. Algebra di Boole

Per lavorare con le reti combinatorie in modo sistematico serve uno strumento matematico. L'**algebra di Boole** — dal nome del matematico George Boole (1815–1864) — è un sistema algebrico progettato per variabili che possono assumere solo due valori, 0 e 1.

Le operazioni fondamentali sono la **somma logica** (simbolo +, operazione OR) e il **prodotto logico** (simbolo ·, operazione AND). Le regole di base sono:

|Somma logica (OR)|Prodotto logico (AND)|
|---|---|
|A + 0 = A|A · 0 = 0|
|A + 1 = 1|A · 1 = A|
|A + A = A|A · A = A|
|A + Ā = 1|A · Ā = 0|

La barra sopra una variabile (Ā) indica la **negazione**: il valore complementare. L'algebra di Boole gode delle proprietà commutativa e associativa, della distributiva rispetto alla somma e di una proprietà che non ha equivalente nell'algebra ordinaria — la **distributiva rispetto al prodotto**:

$$A + (B \cdot C) = (A + B) \cdot (A + C)$$

### Teoremi di De Morgan

I **teoremi di De Morgan** (August De Morgan, 1806–1871) permettono di trasformare espressioni logiche in forme equivalenti e sono fondamentali per semplificare i circuiti:

$$\overline{A + B} = \bar{A} \cdot \bar{B}$$ $$\overline{A \cdot B} = \bar{A} + \bar{B}$$

In parole: la negazione di un'OR diventa un'AND di negazioni, e viceversa. La conseguenza pratica è rilevante: le porte **NAND** e **NOR** sono porte "universali" — con sole porte NAND (o sole NOR) è possibile realizzare qualsiasi funzione logica.

---

## 4. Le porte logiche fondamentali

Le porte logiche sono i componenti elementari dei circuiti digitali. Ognuna implementa una delle operazioni booleane di base.

La porta **NOT** (inverter) inverte il valore di una variabile: 0 → 1, 1 → 0. Y = Ā

|A|Y|
|---|---|
|0|1|
|1|0|

La porta **OR** restituisce 1 se **almeno uno** degli ingressi è 1; restituisce 0 solo se tutti gli ingressi sono 0. Y = A + B

|A|B|Y|
|---|---|---|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

La porta **AND** restituisce 1 solo se **tutti** gli ingressi sono 1; restituisce 0 se almeno uno è 0. Y = A · B

|A|B|Y|
|---|---|---|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

Le porte **NOR** e **NAND** sono rispettivamente OR e AND con l'uscita negata. Il NOR restituisce 1 solo se tutti gli ingressi sono 0; il NAND restituisce 0 solo se tutti gli ingressi sono 1. Sono queste due porte ad essere universali, come dimostrano i teoremi di De Morgan.

|A|B|NOR|NAND|
|---|---|---|---|
|0|0|1|1|
|0|1|0|1|
|1|0|0|1|
|1|1|0|0|

La porta **EXOR** (OR esclusivo) restituisce 1 se gli ingressi sono **diversi** tra loro: "uno o l'altro, ma non entrambi". Y = A ⊕ B

|A|B|Y|
|---|---|---|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|0|

![[Media/Photon_to_Code_page_10_1.jpg]]

---

## 5. Forme canoniche: dalla tabella della verità al circuito

Conoscere le porte è necessario, ma il problema pratico è sempre lo stesso: dato un problema reale, come si arriva al circuito che lo risolve? Il metodo è sistematico e segue sempre la stessa direzione.

Si parte dalla **tabella della verità**: si definiscono ingressi e uscite, si elencano tutte le combinazioni e si stabilisce il valore dell'uscita per ognuna. Da questa tabella si ricava l'espressione algebrica con uno dei due **metodi canonici**.

La **prima forma canonica** (somma di mintermini, SOM) si usa quando le righe con Y = 1 sono poche. Per ogni riga con uscita 1 si scrive un **mintermine**: un AND di tutte le variabili, in forma diretta se il loro valore nella riga è 1, in forma negata se è 0. La funzione finale è l'OR di tutti i mintermini.

**Esempio:** per la riga A=0, B=1, C=0 con Y=1, il mintermine è $\bar{A} \cdot B \cdot \bar{C}$.

La **seconda forma canonica** (prodotto di maxtermini, POM) è duale: si usa quando le righe con Y = 0 sono poche. Per ogni riga con uscita 0 si scrive un **maxtermine**: un OR di tutte le variabili, in forma diretta se il valore è 0, in forma negata se è 1. La funzione finale è l'AND di tutti i maxtermini.

Una volta ottenuta l'espressione, la si semplifica con le proprietà dell'algebra di Boole per ridurre il numero di porte necessarie, poi si realizza il circuito. Il percorso completo è sempre: **problema → tabella della verità → forma canonica → semplificazione → circuito**.


![[Media/Photon_to_Code_page_9_1.jpg]]

### Logica combinatoria a contatti

La stessa logica si può rappresentare con uno **schema a contatti**: la tecnica grafica usata per gli schemi funzionali degli impianti elettrici vista nel Focus 3. I contatti in **serie** corrispondono all'AND, quelli in **parallelo** all'OR, un contatto normalmente chiuso al NOT. Il linguaggio ladder del PLC (Focus 1) è direttamente questa logica a contatti trasferita nel software: la connessione tra le tre aree di studio non è casuale ma strutturale.

---

## 6. Circuiti integrati

Le porte logiche non si costruiscono una ad una: vengono prodotte industrialmente come **circuiti integrati** — chip di silicio che ne contengono molte all'interno. Introdotti poco prima del 1960 dalla Texas Instruments, sono oggi la famiglia di componenti elettronici più numerosa al mondo.

Fisicamente, un circuito integrato è un contenitore plastico o ceramico (il _package_) con terminali metallici esterni chiamati **pin**. All'interno, una piastrina di silicio ospita i componenti realizzati con processi di fotolitografia di estrema precisione.

![[Media/The_Modern_Electrical_Blueprint_page_8_1.jpg]]

Riguardo alla tecnologia, si distinguono gli integrati **bipolari (TTL)** e gli integrati **unipolari CMOS**: i CMOS consumano meno e tollerano meglio il rumore, motivo per cui sono diventati lo standard dominante. Riguardo alla complessità, la classificazione va da **SSI** (meno di 12 porte) a **MSI** (fino a 100), **LSI** (fino a 1.000) e **VLSI** (oltre 1.000 porte). Gli integrati SSI — come il **74HC08** (quattro porte AND a due ingressi) o il **74HC32** (quattro porte OR) — sono i mattoni elementari su cui si impara a costruire circuiti logici.

---

# FOCUS 5 — Arduino e Programmazione Embedded

Il Focus 1 ha mostrato che i microcontrollori sono al cuore dell'automazione moderna. Il Focus 4 ha introdotto la logica digitale con cui questi dispositivi ragionano. Questo Focus scende al livello pratico: come si programma davvero un microcontrollore. Lo strumento scelto è **Arduino**, perché abbatte la barriera tecnica che storicamente rendeva questo mondo accessibile solo agli specialisti.

## 1. Cos'è Arduino

**Arduino** è una serie di schede elettroniche open-source sviluppate all'Interaction Design Institute di Ivrea. Il suo successo si basa su tre caratteristiche: l'hardware è **aperto** (gli schemi sono pubblici e chiunque può costruirne una copia), il software è **gratuito** (l'IDE si scarica senza costi) e la comunità è **enorme** (tutorial, librerie ed esempi sono disponibili ovunque online). Insieme, questi elementi permettono di arrivare a un primo progetto funzionante in tempi molto brevi, anche partendo da zero.

---

## 2. La scheda Arduino UNO

La scheda più diffusa è la **Arduino UNO**, basata sul microcontrollore **ATmega328**. Oltre al microcontrollore, la scheda include un'interfaccia USB per la comunicazione col PC, un oscillatore al quarzo da 16 MHz, una presa per l'alimentazione esterna (7÷12 V) e un tasto di reset.

|Risorsa|Valore|
|---|---|
|Memoria Flash (programma, non volatile)|32 kB|
|Memoria EEPROM (parametri fissi, non volatile)|1 kB|
|Memoria SRAM (dati di lavoro, volatile)|2 kB|
|Pin digitali I/O|14 (di cui 6 con PWM)|
|Ingressi analogici|6|
|Tensione pin digitali|5 V|
|Corrente max per pin|40 mA|
|Clock|16 MHz|
|Alimentazione esterna|7÷12 V|

![[Media/The_Modern_Electrical_Blueprint_page_9_1.jpg]]

Le tre memorie hanno ruoli distinti. La **Flash** conserva il programma anche a scheda spenta (non volatile) ed è pre-programmata con un _bootloader_ che permette il caricamento del programma via USB senza hardware aggiuntivo. La **EEPROM** conserva parametri fissi come tarature e configurazioni. La **SRAM** è la memoria di lavoro durante l'esecuzione — volatile, si svuota allo spegnimento — ed è la risorsa più limitata: soli 2 kB, da usare con attenzione.

L'alimentazione durante lo sviluppo viene normalmente dalla porta USB del PC. L'alimentazione esterna (tramite jack da 7÷12 V) serve quando la scheda è usata nell'applicazione finale, scollegata dal computer.

L'IDE si scarica da **http://www.arduino.cc** e riunisce in un unico programma editor, compilatore, loader e Monitor Seriale per il debug.

Per le prime prove è utile anche un simulatore online. **Tinkercad Circuits** permette di costruire un circuito virtuale trascinando **Arduino, breadboard, LED, resistenze, pulsanti e altri componenti**, collegandoli con i fili come in laboratorio. È quindi adatto per verificare rapidamente cablaggi e logica del programma prima di passare alla scheda reale.

---

## 3. Struttura di un programma Arduino

Un programma Arduino si chiama **sketch** ed è costruito su due blocchi obbligatori:

```c
void setup() {
  // Eseguito UNA SOLA VOLTA all'accensione o al reset
  // Qui si configurano pin, comunicazioni, variabili iniziali
}

void loop() {
  // Eseguito IN MODO CONTINUO e ciclico finché c'è alimentazione
  // Qui vive il cuore del programma
}
```

`setup()` è la fase di preparazione: si dice al microcontrollore come sono collegati i componenti e quali risorse usare. `loop()` è il cuore operativo e viene ripetuto all'infinito — come il ciclo del PLC descritto nel Focus 1, con la stessa logica di lettura ingressi → elaborazione → aggiornamento uscite.

Regole sintattiche di base: ogni istruzione termina con `;`; i blocchi sono racchiusi tra `{ }`; i commenti su riga singola iniziano con `//`, quelli multiriga tra `/* */`; `void` davanti a una funzione indica che non restituisce alcun valore.

![[Media/Photon_to_Code_page_13_1.jpg]]

---

## 4. Gestione dei pin digitali

Arduino UNO ha 14 pin digitali (numerati 0–13), ognuno configurabile come ingresso o uscita nel `setup()` con `pinMode`:

```c
// Configurazione (nel setup)
pinMode(13, OUTPUT);        // pin 13 = uscita (es. LED)
pinMode(10, INPUT_PULLUP);  // pin 10 = ingresso con pull-up interno

// Controllo delle uscite (nel loop)
digitalWrite(13, HIGH); // porta il pin 13 a 5 V
digitalWrite(13, LOW);  // porta il pin 13 a 0 V

// Lettura degli ingressi
int stato = digitalRead(10);  // legge HIGH o LOW dal pin 10
```

Per gli ingressi collegati a un pulsante (che chiude il pin a massa), è necessaria una resistenza di **pull-up** per mantenere il pin a livello alto quando il pulsante è aperto — senza di essa il pin fluttua in uno stato indeterminato. Arduino dispone di resistenze di pull-up interne (20÷50 kΩ), attivabili direttamente con la modalità `INPUT_PULLUP`.

**Mini progetto — Pulsante che accende un LED**

Questo è il primo esempio davvero utile per collegare subito **ingresso**, **uscita** e **logica**. Il pulsante è collegato tra pin 10 e massa; il LED è sul pin 13. Con `INPUT_PULLUP`, il pin legge `HIGH` a pulsante rilasciato e `LOW` a pulsante premuto.

```c
const int LED_PIN = 13;
const int BTN_PIN = 10;

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(BTN_PIN, INPUT_PULLUP);
}

void loop() {
  if (digitalRead(BTN_PIN) == LOW) {  // pulsante premuto
    digitalWrite(LED_PIN, HIGH);
  } else {
    digitalWrite(LED_PIN, LOW);
  }
}
```

Le temporizzazioni si gestiscono con due funzioni:

```c
delay(1000);             // pausa di 1000 ms (1 secondo)
delayMicroseconds(500);  // pausa di 500 μs
```

**Esempio applicativo — Semaforo:**

```c
#define Giallo 13
#define Rosso  12
#define Verde  11

void setup() {
  pinMode(Giallo, OUTPUT);
  pinMode(Rosso,  OUTPUT);
  pinMode(Verde,  OUTPUT);
}

void loop() {
  digitalWrite(Giallo, LOW);
  digitalWrite(Rosso, HIGH);
  delay(15000);               // rosso: 15 s
  digitalWrite(Rosso, LOW);
  digitalWrite(Verde, HIGH);
  delay(12000);               // verde: 12 s
  digitalWrite(Verde, LOW);
  digitalWrite(Giallo, HIGH);
  delay(3000);                // giallo: 3 s
}
```

La direttiva `#define` assegna un nome leggibile a una costante numerica, rendendo il codice più comprensibile e semplice da modificare.

---

## 5. Tipi di dati

In C/C++ ogni variabile deve essere dichiarata con il proprio **tipo** prima dell'uso. Il tipo determina quanta memoria SRAM occupa e quali valori può contenere: scegliere il tipo sbagliato può portare a errori sottili o a sprechi di una risorsa già scarsa.

|Tipo|Dimensione|Intervallo|
|---|---|---|
|`boolean`|1 byte|`false` / `true`|
|`char`|1 byte|−128 ÷ +127|
|`byte`|1 byte|0 ÷ 255|
|`int`|2 byte|−32.768 ÷ +32.767|
|`unsigned int`|2 byte|0 ÷ 65.535|
|`long`|4 byte|−2.147.483.648 ÷ +2.147.483.647|
|`unsigned long`|4 byte|0 ÷ +4.294.967.295|
|`float`|4 byte|±3,4 · 10³⁸|
|`double`|4 byte su Arduino UNO|uguale a `float` sull'ATmega328|

Una trappola frequente è l'**overflow**: un `byte` vale al massimo 255; sommando 1 si ottiene 0, senza alcun messaggio di errore. Sulla scheda Arduino UNO, inoltre, `double` **non** offre più precisione di `float`: sull'ATmega328 occupa gli stessi 4 byte. Le operazioni in virgola mobile vanno quindi usate con parsimonia su un microcontrollore piccolo.

Le costanti si possono esprimere in basi diverse:

```c
int a = 101;    // decimale → 101
int b = B101;   // binario  → 5
int c = 0101;   // ottale   → 65
int d = 0x101;  // esadecimale → 257
```

![[Media/Photon_to_Code_page_14_1.jpg]]

---

## 6. Strutture di controllo

Le strutture di controllo permettono di prendere decisioni e ripetere azioni in base alle condizioni del sistema — sono la traduzione in codice della logica booleana vista nel Focus 4.

### Selezione con if-else

`if` esegue un blocco solo se una condizione è vera; `else` gestisce il caso contrario:

```c
if (condizione) {
  // eseguito se vera
} else {
  // eseguito se falsa
}
```

Per selezioni multiple si incatenano `else if`. L'**operatore ternario** offre una forma compatta per selezioni semplici:

```c
a = (b > 9) ? 5 : 0;
// equivale a: if (b > 9) a = 5; else a = 0;
```

> ⚠️ **Trappola frequente:** `if (pippo = 1)` non è un confronto — è un'assegnazione che risulta sempre vera. Il confronto si scrive con il **doppio uguale**: `if (pippo == 1)`.

**Operatori di confronto:** `==` (uguale), `!=` (diverso), `<`, `>`, `<=`, `>=`.

**Operatori logici:** `&&` (AND, vera solo se entrambe le condizioni sono vere), `||` (OR, vera se almeno una è vera), `!` (NOT, inverte il valore di verità).

### Selezione multipla switch-case

Quando si deve scegliere tra molti valori discreti della stessa variabile, `switch-case` è più leggibile di una lunga catena `if-else if`:

```c
switch (variabile) {
  case 1:
    // eseguito se variabile == 1
    break;
  case 2:
    // eseguito se variabile == 2
    break;
  default:
    // eseguito se nessun case corrisponde
    break;
}
```

`break` è indispensabile: senza di esso il controllo "cade" nel case successivo e lo esegue anche se non corrisponde.

---

## 7. Strutture iterative

Le strutture iterative permettono di ripetere un blocco di istruzioni. Ne esistono tre, ognuna adatta a una situazione specifica.

Il **ciclo for** si usa quando si sa in anticipo quante volte ripetere:

```c
for (int i = 0; i < 10; i++) {
  // eseguito 10 volte (i da 0 a 9)
}
for (;;) { /* ciclo infinito */ }
```

Il **ciclo while** si usa quando si vuole ripetere _finché una condizione è vera_, senza sapere in anticipo quante iterazioni serviranno. La condizione è verificata _prima_ del corpo: se è falsa al primo controllo, il corpo non viene mai eseguito.

```c
while (condizione) {
  // eseguito finché la condizione è vera
}
```

Il **ciclo do-while** verifica la condizione _dopo_ il corpo, garantendo che il blocco venga eseguito **almeno una volta**:

```c
do {
  // eseguito almeno una volta
} while (condizione);
```

La scelta dipende dal caso: `for` quando il numero di iterazioni è noto; `while` quando potrebbe essere zero; `do-while` quando almeno un'esecuzione è necessaria. All'interno di qualsiasi ciclo, `break` esce immediatamente; `continue` salta le istruzioni rimanenti nel corpo e torna al controllo della condizione.

---

## 8. Operatori aritmetici e bit a bit

### Operatori aritmetici standard

```c
+    // addizione
-    // sottrazione
*    // moltiplicazione
/    // divisione intera (scarta il resto)
%    // resto della divisione (modulo)
```

### Operatori bit a bit

Agiscono direttamente sui singoli bit di una variabile, applicando le operazioni booleane di base a ogni coppia di bit corrispondenti:

```c
&    // AND bit a bit
|    // OR bit a bit
^    // XOR bit a bit
~    // NOT bit a bit (complemento)
```

### Operatori di scorrimento

Spostare i bit a sinistra o a destra equivale a moltiplicare o dividere per potenze di 2:

```c
x << n;   // shift sinistra di n posizioni → x * 2ⁿ
x >> n;   // shift destra di n posizioni  → x / 2ⁿ
```

Esempio: `6 = B00000110`; dopo `<< 2` diventa `B00011000 = 24`.

### Operatori composti

Forme abbreviate che rendono il codice più conciso:

```c
x++;    // post-incremento: usa il valore di x, poi incrementa
x--;    // post-decremento
++x;    // pre-incremento: incrementa, poi usa il nuovo valore
--x;    // pre-decremento

x += y;   // x = x + y
x -= y;   // x = x - y
x *= y;   // x = x * y
x /= y;   // x = x / y
```

---

## 9. Debug con la comunicazione seriale

Scrivere un programma non garantisce che funzioni subito: il debug è parte ordinaria del lavoro. Lo strumento principale di Arduino è la **comunicazione seriale**: la scheda può inviare messaggi al PC attraverso la porta USB, leggibili aprendo il **Monitor Seriale** dall'IDE (Strumenti → Monitor Seriale). La tecnica di debug più semplice consiste nell'inserire stampe strategiche nel codice per monitorare il valore delle variabili nei punti critici.

```c
// Nel setup():
Serial.begin(9600);        // inizializza la comunicazione a 9600 bit/s
Serial.flush();            // attende la trasmissione dei dati già inviati

// Nel loop():
Serial.print("Valore: ");  // invia testo senza andare a capo
Serial.println(variabile); // invia valore e va a capo
```

Le funzioni di invio si comportano in modo diverso — importante saperlo per non fraintendere l'output:

|Funzione|Comportamento|Output|
|---|---|---|
|`Serial.write(78)`|Invia il byte come carattere ASCII|→ `N`|
|`Serial.print(78)`|Invia le cifre come caratteri|→ `78`|
|`Serial.print(78, BIN)`|Invia in binario|→ `1001110`|
|`Serial.print(78, HEX)`|Invia in esadecimale|→ `4E`|
|`Serial.print(1.23456, 2)`|Invia float con 2 decimali|→ `1.23`|

Per ricevere dati inviati dal PC durante l'esecuzione:

```c
if (Serial.available() > 0) {
  pippo = Serial.read();  // legge un byte dalla coda di ricezione
}
```

---

## 10. Esercitazioni pratiche con CADe_SIMU

Il software **CADe_SIMU** permette di disegnare e simulare schemi di impianti elettrici senza componenti fisici — come un simulatore virtuale dell'impianto visto nel Focus 3. Le esercitazioni proposte crescono in complessità.

Lo **schema base** prevede una suoneria e un ronzatore attivabili separatamente da pulsanti distinti, con un deviatore che seleziona quale delle due linee può essere attivata. È il punto di partenza per prendere confidenza con i simboli degli schemi funzionali.

![[Media/sim-1.png]]

Lo **schema con doppia linea** aggiunge una linea luce per il comando di una lampada da tre punti (due deviatori + un invertitore) e una linea ausiliaria a 12 V per suoneria e ronzatore. Si mettono qui in pratica i dispositivi di comando descritti nel Focus 3.

![[Media/sim-2.png]]

Lo **schema avanzato con relè passo-passo** è il più completo: linea ausiliaria per il comando luci da tre punti tramite relè interruttore; linea luce per tre lampade tramite relè passo-passo; comando di una luce da due punti con deviatori. Questo schema integra impianto, logica e automazione in un unico progetto.

![[Media/sim-3.png]]

---

# Appendice — Riepilogo delle formule principali

|Grandezza|Formula|Unità|
|---|---|---|
|Carica elettrica|$Q = I \cdot t$|C (coulomb)|
|Tensione (lavoro per unità di carica)|$V = L / Q$|V (volt)|
|Corrente|$I = Q_T / t$|A (ampere)|
|Prima legge di Ohm|$R = V / I$|Ω (ohm)|
|Seconda legge di Ohm|$R = \rho \cdot l / S$|Ω|
|Potenza elettrica|$P = V \cdot I = R \cdot I^2 = V^2/R$|W (watt)|
|Resistenze in serie|$R_{eq} = R_1 + R_2 + \ldots$|Ω|
|Resistenze in parallelo|$1/R_{eq} = 1/R_1 + 1/R_2 + \ldots$|Ω|
|Due resistenze in parallelo|$R_{eq} = (R_1 \cdot R_2)/(R_1 + R_2)$|Ω|
|Frequenza|$f = 1/T$|Hz (hertz)|
|Valore efficace|$V = V_M / \sqrt{2}$|V|
|Generatori in serie|$E_{tot} = E_1 + E_2 + \ldots$ (somma algebrica)|V|
