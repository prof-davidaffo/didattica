# 📡 Telecomunicazioni

### Connessioni in Radiofrequenza

---

## 1. La Fisica delle Telecomunicazioni

Le moderne tecniche di telecomunicazioni consentono di trasmettere informazioni attraverso l'etere. Le loro radici, come per l'informatica, affondano nelle ricerche scientifiche condotte nel XIX secolo. In particolare, è nel 1860 che il fisico scozzese **James Clerk Maxwell** (1831–1879) intuì l'esistenza di onde radio, ovvero onde elettromagnetiche, simili a quelle della luce, in grado di trasmettere dati invisibili (musica, parole, immagini, ecc.) attraverso l'aria. Pochi anni dopo il fisico tedesco **Heinrich Rudolph Hertz** (1857–1894) sperimentò la possibilità di proiettare l'energia elettrica nello spazio sotto forma di onde radio, facendo variare rapidamente la corrente elettrica all'interno di due conduttori lineari aperti: nacque, così, la prima antenna, nota come **dipolo hertziano**.

Il vero avvio delle moderne telecomunicazioni, tuttavia, è da attribuire a **Guglielmo Marconi** (1874–1937), il quale dimostrò la fattibilità tecnologica della comunicazione radio con l'invio e la ricezione del primo segnale radio nel 1895.

![[Media/image-002.png]]

---

## 2. Connessioni Radio

Le **radiazioni elettromagnetiche (REM)** sono movimenti oscillatori (onde) che trasportano energia attraverso campi elettrici e magnetici. Le radiazioni elettromagnetiche presenti sulla Terra derivano principalmente dalle reazioni nucleari che si susseguono sulla superficie solare. I parametri principali delle onde elettromagnetiche sono frequenza, velocità e lunghezza d'onda.

- **Frequenza (_f_):** è il numero di oscillazioni che si verificano in un secondo. Ha come unità di misura l'hertz (Hz), che corrisponde a un ciclo al secondo: 1 Hz = s⁻¹.
- **Velocità (_c_):** è costante e pari a 300.000.000 m/s (velocità della luce).
- **Lunghezza d'onda (_λ_):** si ricava dalla relazione: λ = c/f. Le unità di misura più comunemente utilizzate per definire la lunghezza dell'onda elettromagnetica sono il nanometro (nm) e il micrometro (µm).

L'insieme di tutte le possibili lunghezze d'onda della radiazione elettromagnetica è detto **spettro elettromagnetico**. I nostri occhi sono strumenti progettati per rilevare la radiazione elettromagnetica nello spettro della luce visibile (λ tra i 400 e i 700 nm). Qualsiasi altro tipo di radiazione elettromagnetica, come le onde radio (λ > 1 mm), risulta invisibile all'occhio umano.

```
← λ crescente  |  frequenza decrescente →

Raggi γ  →  Raggi X  →  UV  →  Visibile  →  Infrarossi  →  Microonde  →  Onde radio
```

Le onde radio presentano valori di frequenza tipici che vanno da frazioni di GHz per la telefonia mobile fino a 10 GHz per i satelliti e a 50 GHz per le microonde dei radar ad inseguimento.

La loro propagazione è rettilinea, ma può essere deviata o riflessa dalla presenza di oggetti e dall'atmosfera. In particolare, le onde radio si riflettono completamente sulle superfici metalliche, qualsiasi sia la loro lunghezza d'onda, con angolo di riflessione uguale all'angolo incidente e sfasamento di 180°, mentre sono in grado di penetrare gli altri materiali tanto più facilmente quanto minore è la loro frequenza (e quindi tanto maggiore è la loro lunghezza d'onda). Un muro di mattoni, per esempio, attenua un segnale radio, ma non è un ostacolo assoluto.

In presenza di ostacoli, l'onda può anche subire una flessione o una diffusione. Nello specifico, se l'onda colpisce l'angolo di un ostacolo di dimensioni grandi rispetto alla sua lunghezza d'onda (un muro, un armadio, ecc.), si piega, propagandosi anche dietro l'angolo, dove dovrebbe esserci uno spazio morto.

Se, invece, l'onda colpisce un ostacolo di dimensioni ridotte rispetto alla sua lunghezza d'onda (una fessura, un foro, ecc.), si diffonde: il segnale si divide, quindi, in segnali più deboli che si propagano in tutte le direzioni.

---

## 3. Parametri Caratteristici delle Antenne

L'antenna è un dispositivo atto a irradiare onde elettromagnetiche nello spazio e a captarle. Un sistema di radiocomunicazione utilizza due antenne come dispositivi di conversione dei segnali elettrici in onde elettromagnetiche e viceversa, e l'etere come mezzo di trasmissione.

I parametri principali di un'antenna sono la **frequenza di lavoro**, l'**angolo di apertura** e il **guadagno**.

### 3.1 Frequenza di Lavoro

La frequenza di lavoro è legata alle dimensioni dell'antenna stessa.

Si consideri un generatore sinusoidale di frequenza _f_, che alimenta una linea aperta di lunghezza _l_. Tra i due conduttori è presente un campo elettromagnetico sinusoidale.

Se la lunghezza della linea è pari a λ/4 e se i due conduttori si aprono a 180°, si ottiene un'**antenna hertziana** (dipolo a mezz'onda, dipolo in λ/2) con efficienza massima: le onde elettromagnetiche che prima erano bloccate tra i due conduttori, infatti, si accoppiano con l'etere e si propagano libere nello spazio secondo un solido di emissione a forma toroidale. Tale emissione è massima a 360° in orizzontale (omnidirezionale), mentre è nulla in verticale. Le sezioni del solido (verticali e orizzontali) sono dette **diagrammi di radiazione**.

Ponendo a massa uno dei morsetti del generatore che alimenta l'antenna e alimentando il solo dipolo superiore, lungo λ/4, la massa del sistema si comporta da specchio elettromagnetico e compensa il dipolo inferiore mancante. Quello che si ottiene è il **dipolo marconiano** (detto anche antenna in λ/4 o dipolo a stilo), ossia la tipologia di antenna più usata.

In realtà, la lunghezza effettiva dell'antenna è più corta di λ/4 perché bisogna tener conto anche del tipo di materiale utilizzato, secondo la formula:

$$l = k \cdot \frac{\lambda}{4}$$

|Materiale|Coefficiente _k_|
|---|---|
|Rame|0,95|
|Alluminio|0,85|

> **Esempio guidato —** Determinare la lunghezza di un'antenna in λ/4, realizzata in rame, che deve lavorare a 5,15 GHz.
> 
> La lunghezza d'onda del segnale è: λ = c/f = (3 · 10⁸ m/s) / (5,15 · 10⁹ Hz) = 0,058 m = **5,8 cm**
> 
> Considerando k = 0,95 per il rame: l = 0,95 · 5,8/4 = **1,38 cm**

### 3.2 Angolo di Apertura

Il **radiatore isotropico** è un'antenna ideale, immaginabile come un punto che irradia in modo uniforme in tutte le direzioni e caratterizzato, quindi, da un solido di emissione sferico.

Prendendo a riferimento il radiatore isotropico, considerata la superficie della sfera di emissione (4π·r²) e nota la potenza radiata (_P__rad) dall'antenna, è possibile calcolare la densità di potenza (_S_, W/m²) rilevabile a una distanza _r_:

$$S = \frac{P_{rad}}{4\pi r^2}$$

La densità della radiazione diminuisce, quindi, con il **quadrato della distanza** dalla sorgente.

> **Esempio guidato —** Determinare la densità di potenza rilevabile a 4 km di distanza da un radiatore isotropico che irradia una potenza di 10 W.
> 
> S = 10 / (4π · (4 · 10³)²) ≈ **49,7 nW/m²**

A differenza del radiatore isotropico ideale, le antenne reali sono però tutte **direttive**, cioè irradiano principalmente in determinate direzioni. L'**angolo di apertura** di un'antenna (Beamwidth, BW) esprime proprio la sua capacità di concentrare la potenza radiata in una determinata direzione ed è pari all'angolo solido entro il quale la densità di potenza si mantiene superiore al **50% del valore massimo**.

Trattandosi di un solido di emissione, per ogni antenna vengono forniti gli angoli (diagrammi) di apertura orizzontale e verticale. Minore è l'angolo di apertura di un'antenna, maggiore è la sua direttività.

### 3.3 Guadagno d'Antenna

Il **guadagno d'antenna (_G_)** è il fattore moltiplicativo da applicare alla potenza che dovrebbe irradiare un'antenna isotropa per fornire il medesimo livello di campo dell'antenna in esame.

Per esempio, per uguagliare la potenza emessa nella direzione di massima irradiazione da un'antenna con guadagno G = 2, un radiatore isotropico necessiterebbe di una potenza di ingresso (_P__in) doppia. Viceversa, a parità di potenza in ingresso, un'antenna con guadagno G = 2 presenterebbe una potenza nella direzione di massima irradiazione di valore doppio rispetto al radiatore isotropico.

Valori tipici di guadagno sono **1,64** per il dipolo hertziano in λ/2 e **3,3** per il dipolo marconiano in λ/4.

La potenza effettivamente emessa nella direzione di massima radiazione, detta **EIRP** (Equivalent Isotropic Radiated Power), vale perciò:

$$\text{EIRP} = P_{in} \cdot G$$

Ne deriva che il guadagno non è un parametro sufficiente a definire le prestazioni di un'antenna, perché è legato ai differenti angoli di apertura: le prestazioni vanno quindi confrontate tra antenne della medesima apertura.

> **Esempio guidato —** Determinare la densità di potenza rilevabile a 10 km di distanza, nella direzione di massima emissione, da un'antenna hertziana che dispone di 20 W.
> 
> Il guadagno di un'antenna hertziana vale 1,64, perciò: S = (20 · 1,64) / (4π · (10⁴)²) ≈ **2,61 nW/m²**

---

## 4. Antenne per Applicazioni Industriali

Per le applicazioni mobili sono indispensabili le antenne **omnidirezionali**, che irradiano in tutte le direzioni, mentre per le connessioni fisse sono preferibili le antenne **direzionali**.

Per le applicazioni RF industriali si utilizzano antenne omnidirezionali in λ/4 di diversi tipi e forme: esterne (a frusta), a banda larga (a spirale, ad elica), come traccia su PCB oppure a chip, con prestazioni e caratteristiche differenti tra loro.

|Tipo|Descrizione|
|---|---|
|**(A) A frusta**|Esterna, omnidirezionale|
|**(B) Ad elica**|Banda larga, omnidirezionale|
|**(C) Su PCB**|Integrata nel circuito stampato|
|**(D) A chip**|Compatta, bassa potenza|

![[Media/image-012.jpg]]

![[Media/image-014.jpg]]

![[Media/image-016.jpg]]

![[Media/image-018.jpg]]

Altre antenne comuni sono la Yagi, quelle a pannello e le omnidirezionali con guadagno.

L'**antenna Yagi**, dal nome di Hidetsugu Yagi (1886–1976), uno dei primi scienziati che ne teorizzarono il comportamento, è costituita da un dipolo radiante, un riflettore e da un certo numero di elementi direttori passivi. È caratterizzata da un'elevata direttività e angoli di apertura tipici di **15°**.

![[Media/image-021.png]]

Le **antenne a pannello** (o settoriali) sono quelle normalmente utilizzate nelle stazioni base della telefonia cellulare. Hanno valori discreti di guadagno (G = 8÷13 dB) con apertura di 60°, 90° e 120° sul piano orizzontale e da 5° a 15° sul piano verticale, con la possibilità di irradiare (illuminare) a 360° con tre pannelli a 120°.

![[Media/image-025.jpg]]

Le **antenne verticali omnidirezionali con guadagno**, infine, hanno un diagramma di radiazione a 360° sul piano orizzontale e di 10÷15° sul piano verticale.

![[Media/image-026.png]]

### 4.1 Area Efficace

Tutti i parametri descritti finora sono stati presentati in riferimento a un'antenna trasmittente, ma, per reciprocità, un'antenna può anche captare la densità di potenza (_S__inc) portata dalle onde elettromagnetiche che impattano su di essa, comportandosi di fatto come una superficie ricettiva il cui valore, detto **area efficace**, risulta legato al guadagno dalla relazione:

$$A_{eff} = \frac{\lambda^2}{4\pi} \cdot G \quad [\text{m}^2]$$

raccogliendo una potenza _P__ric:

$$P_{ric} = S_{inc} \cdot A_{eff} = S_{inc} \cdot \frac{\lambda^2}{4\pi} \cdot G$$

Tipica antenna a superficie è l'**antenna a parabola**, molto direttiva, con un concentratore (illuminatore) posizionato nel punto di fuoco e con efficienza, guadagno e area efficace rispettivamente:

![[Media/image-027.jpg]]

$$\eta = 0{,}5 \div 0{,}8$$

$$G = \eta \cdot \left(\frac{\pi d}{\lambda}\right)^2$$

$$A_{eff} = \eta \cdot \frac{\pi d^2}{4} = G \cdot \frac{\lambda^2}{4\pi}$$

#### Tabella 18 — Parametri di Alcune Antenne Tipiche

|Antenna|G|A_eff [m²]|
|---|---|---|
|Hertziana (λ/2)|1,64|0,13 · λ²|
|Marconiana (λ/4)|3,3|0,26 · λ²|
|Yagi|8 ÷ 64|(0,63 ÷ 5) · λ²|
|Parabola (d = 20 cm, η = 0,8)|—|0,025 m²|

> **Esempio guidato —** Determinare la potenza raccolta da una parabola di diametro 0,5 m, con efficienza 0,55, in presenza di una densità di potenza S = 86,4 nW/m².
> 
> Area efficace dell'antenna ricevente: A_eff = η · π · d²/4 = 0,55 · π · 0,25/4 = **0,11 m²**
> 
> Potenza raccolta dall'antenna: P_ric = 86,4 · 10⁻⁹ · 0,11 = **9,5 nW**

---

## 5. Connessioni Wireless a Lungo e Corto Raggio

Le comunicazioni wireless sono impiegate in molteplici applicazioni, dalle connessioni a lungo raggio, quali la telefonia mobile cellulare e satellitare, fino ai sistemi a corto raggio e a bassa potenza. Si può trattare di comunicazioni punto-punto o di connessioni in rete.

In ambito locale, una connessione wireless sostituisce il cablaggio laddove questo risulta sconveniente o impraticabile. Ciò può riguardare un collegamento tra edifici separati di una stessa azienda (**building to building**), l'accesso a una LAN (Local Area Network) o semplicemente la connessione short range con il database aziendale di utensili utilizzati dalle maestranze.

### 5.1 Classificazione delle Reti Wireless

Come per le reti LAN, anche per le wireless esiste una classificazione in base all'estensione della rete stessa. Si hanno così reti WWAN, WMAN, WLAN e WPAN.

- **WWAN (Wireless Wide Area Network).** Sono grandi reti di dati, condivise pubblicamente, progettate per coprire aree estese e gestite da un determinato fornitore di servizi (provider). Le connessioni utilizzano sia la moderna rete telefonica, sia la copertura satellitare.
    
- **WMAN (Wireless Metropolitan Area Network).** Sono reti che servono aree a dimensione metropolitana, con raggio fino a 10 km, e utilizzano coperture radio con una larghezza di banda superiore alla WWAN. Lo standard più noto è **WiMAX** (Worldwide Interoperability for Microwave Access).
    
- **WLAN (Wireless Local Area Network).** Possono essere reti a sé stanti oppure segmenti di estensione di una LAN. Trasmettono e ricevono dati utilizzando le radiofrequenze con varie tecniche di modulazione ad ampio spettro, definite dall'insieme degli standard **IEEE 802.11**.
    
- **WPAN (Wireless Personal Area Network).** Consentono una comunicazione e uno scambio di informazioni fra computer, stampanti, cellulari e altri dispositivi entro un raggio che non supera alcune decine di metri (short range). Le tecnologie WPAN sono disponibili sotto forma di moduli di comunicazione relativamente robusti e con consumi energetici contenuti, in grado di lavorare in autonomia in sistemi alimentati a batterie.
    

Le reti industriali WPAN specifiche per la connessione wireless di sensori, destinati a monitorare i processi produttivi, sono dette **WSN (Wireless Sensor Network)**. All'interno della rete, ciascun nodo sensore è un sistema elettronico a microprocessore, dalle dimensioni ridotte, spesso alimentato a batteria, in grado di raccogliere ed elaborare informazioni, comunicando i dati agli altri dispositivi della rete mediante un ricetrasmettitore a radiofrequenza (transceiver).

![[Media/image-034.jpg]]

---

## 6. Connessioni M2M su Rete Mobile

Le connessioni wireless tra macchina e macchina (**M2M, Machine To Machine communication**) o tra macchina e centro di controllo, attraverso la rete mobile, riguardano numerosi settori industriali e dei servizi, quali la telelettura e il telerilevamento, il telecontrollo di vending-machine (distributori automatici), la localizzazione satellitare degli automezzi, la telemedicina, ecc.

Una **rete mobile** è una rete wireless che supporta la mobilità (servizio di **roaming**, dall'inglese "girovagare"). In una rete mobile il territorio da servire è suddiviso in cellule (o celle), gestite ciascuna da una propria **stazione base (BS, Base Station)**, connesse a una centrale di controllo (**MSC, Mobile services Switching Center**) per la gestione dei servizi di rete.

I terminali portatili (**MS, Mobile Station**) possono muoversi a piacere nella rete, pur continuando a mantenere attiva la connessione (servizio di **handover**, passaggio di mano), e possono essere localizzati, ovunque siano, nel caso di chiamate provenienti da altri terminali.

![[Media/image-049.jpg]]

### 6.1 Modem GSM/GPRS

Le soluzioni M2M a distanza utilizzano in prevalenza modem GSM/GPRS istruiti mediante appositi comandi, detti **comandi AT (ATtention)**, attraverso una linea seriale. I comandi AT sono stringhe di caratteri ASCII che iniziano con le due lettere 'A' e 'T' (maiuscole o minuscole) e terminano con il carattere di invio (CR = torna a capo = 0D_H), mentre le risposte del modem risultano incapsulate tra due coppie di caratteri CRLF. I comandi possibili sono numerosissimi, ma per le funzioni di automazione ne bastano pochi. Per esempio:

```
at+cmgl="REC_UNREAD"    → visualizza i messaggi non ancora letti  (l = list)
at+cmgd=1,4             → cancella tutti i messaggi presenti      (d = delete)
at+cmgs="340987654"     → invia un messaggio al numero specificato (s = send)
```

Mentre la tecnologia **GSM** con SIM card per la fonia è maggiormente utilizzata per la gestione della reperibilità e la comunicazione sporadica di piccole quantità di dati (SMS), la tecnologia **GPRS** richiede una SIM card con abilitazione apposita (IP del gestore), ma consente di realizzare connessioni dati sempre attive, con velocità di trasmissione più alta e tariffazione a consumo.

Un modem GSM installato su un distributore automatico, per esempio, permette di avvisare in tempo reale la centrale di gestione per il rifornimento o il malfunzionamento della macchina, riducendo i tempi di risposta ed eliminando tempi morti e inutili sopralluoghi. In modo analogo, funzionano i sistemi installati sugli ascensori per la richiesta di manutenzione e su fotocopiatrici e stampanti per la sostituzione del toner.

L'applicazione più nota nell'ambito del trasporto è il **Vehicle Tracking**, un sistema di localizzazione satellitare usato per controllare e gestire i mezzi di trasporto, composto da una On-Board Unit (OBU) a microprocessore installata sul veicolo, comprendente un GPS e un modem GSM/GPRS con SIM card, e da un software, da installare in sede, che raccoglie e processa i dati ricevuti, relativi alla posizione, alla velocità e al chilometraggio del veicolo.

Una soluzione nell'ambito dei servizi alla persona è, invece, la **Remote Healthcare Diagnostic**, che supporta i pazienti nel controllo della propria malattia, mediante rilevamento e trasferimento automatico dei dati verso una piattaforma di telemedicina, installata presso una struttura ospedaliera.

### Visibilità tra Terminali

Per quanto riguarda la visibilità tra terminali, mentre i dispositivi GSM possiedono sulla rete ciascuno un proprio numero utente univoco, la rete GPRS non permette connessioni punto-punto verso il terminale mobile. Data la carenza e il costo degli indirizzi IP pubblici, i provider GPRS assegnano a ciascun terminale un indirizzo IP privato e instradano i pacchetti destinati alla rete Internet in un solo indirizzo IP pubblico, utilizzando il protocollo **NAT (Network Address Translation)** interno al loro router.

L'indirizzo assegnato al terminale è **dinamico**, poiché risulta definito solo al momento della richiesta di connessione alla rete (GPRS attach), e scelto liberamente dal provider tra quelli che risultano disponibili.

Per realizzare una rete privata virtuale tra terminali mobili GPRS occorre quindi disporre di un indirizzo IP pubblico (solitamente l'indirizzo IP aziendale) sul quale ciascun terminale mobile GPRS chiede e mantiene attiva la connessione per lo scambio dei dati.

---

## 7. Connessioni Long Range in Banda ISM

Le bande utilizzabili per trasmettere attraverso l'etere sono gestite dagli organi ministeriali e assegnate alle radio-TV, ai GSM/GPRS, agli aeroporti, ai servizi di polizia, pronto intervento, ecc.

Altre bande, le cosiddette **bande libere (ISM, Industrial, Scientific and Medical)**, sono invece utilizzabili senza licenza per applicazioni commerciali e consumer.

Le bande libere non sono ovunque le stesse (in Europa, per esempio, la banda a 900 MHz non è libera, perché occupata dal GSM) e sono sottoposte a prescrizioni differenti nei diversi Stati.

#### Tabella 19 — Limiti di Potenza per le Principali Bande Libere

|Banda ISM [MHz]|FCC 15.247 (USA)|ETSI Europa — ETS 300 328|
|---|---|---|
|902 ÷ 928|< 1 W|—|
|2 400 ÷ 2 483,5|< 1 W (4 W EIRP)|< 100 mW EIRP|
|5 725 ÷ 5 875|< 1 W|< 100 mW|

Di seguito sono riportate alcune tra le più note bande libere europee utilizzate in automazione.

- Le bande a **125 kHz** e **134,5 kHz** sono destinate ai sistemi di identificazione short range senza contatto, detti **RFID** (Radio Frequency IDentification), rispettivamente delle persone e degli animali.
    
- La banda a **13,56 MHz** è utilizzata sia dai più recenti dispositivi RFID, sia dalla tecnologia **NFC** per applicazioni di identificazione e connettività bidirezionale su smartphone.
    
- Le bande a **433 MHz** e **868 MHz**, in ambito europeo, sono utilizzate per radiotelemetria e controlli remoti (apricancelli, ecc.), rispettivamente per applicazioni fino a 100 m e fino a 500 m. Disponibili ma meno utilizzate sono la banda a **434 MHz**, impiegata per applicazioni fino a 1 km, e la banda a **458 MHz**, per applicazioni fino a 10 km.
    
- Le bande a **2,4** e **5,8 GHz** sono destinate ai link wireless tra dispositivi short range (SRD, Short Range Devices) per la comunicazione radio low power di dati audio, video e telemetria, su distanze 10÷100 m, con potenze emesse tipiche di 1÷10 mW. Per il loro utilizzo in Europa bisogna attenersi alle prescrizioni **ETS 300 328** (European Telecommunications Standard).
    

### 7.1 LoRa

**LoRa (Long Range)** è una tecnologia radio utilizzata per trasmettere informazioni bidirezionali a lunga distanza, mantenendo bassi i consumi: è ideale per connettere sensori smart remoti dotati di piccole batterie. In Europa, LoRa utilizza le bande ISM libere 433 e 868 MHz, con potenza di trasmissione fino a 100 mW, per realizzare reti Low-Rate WPAN che funzionano all'aperto, oltre 10 km nelle zone rurali e 3÷5 km in zone fortemente urbanizzate, e in ambienti chiusi difficilmente raggiungibili da WiFi e Bluetooth.

---

## 8. Standard Short Range

Secondo l'Istituto Europeo per le norme di Telecomunicazione (**ETSI**, European Telecommunications Standards Institute) sono da considerare dispositivi short range (**SRD, Short Range Devices**) i sistemi di comunicazione radio low power, destinati, per esempio, a link wireless per dati audio, video, telemetria, sensori e attuatori.

Con i dispositivi a radiofrequenza (RF) short range si possono realizzare connessioni libere punto-punto in banda ISM a 2,4 e 5 GHz, oppure vere e proprie reti negli standard più noti, quali WiFi, Bluetooth e ZigBee.

#### Tabella 20 — Soluzioni Wireless Short Range in Banda Libera a 2,4 GHz

|Standard|Dimensioni [mm]|Costo per nodo [$]|Data rate [Mbps]|Consumo [mW]|
|---|---|---|---|---|
|**WiFi**|12 × 12|20 ÷ 30|54|500|
|**Bluetooth**|7 × 7|10 ÷ 20|0,7|2 350 ÷ 100|
|**ZigBee**|7 × 7|5 ÷ 10|0,25|0,5 ÷ 50|

![[Media/image-005.jpg]]

### WiFi

**WiFi (Wireless Fidelity)** dispone degli standard 802.11b e 802.11g per la conversione da radio a doppino per le reti Ethernet, integrati nei dispositivi Access Point. Prevede anche alcune funzioni legate alla sicurezza di accesso.

#### Tabella 21 — Standard WiFi

|Standard|Transmission Rate|
|---|---|
|802.11b|1 ÷ 11 Mbps|
|802.11g|6 ÷ 54 Mbps|

Grazie alla bassa potenza emessa, la tecnologia WiFi è compatibile con i dispositivi medici di supporto vitale (pompe per infusione, defibrillatori, monitor, ventilatori polmonari, macchine per anestesia); è, perciò, impiegata in ambiente ospedaliero per fornire al personale medico servizi di accesso al database centrale, attraverso l'utilizzo di palmari o computer portatili.

### Bluetooth

Lo standard **Bluetooth** è molto usato per la trasmissione di voce e dati, in reti con un massimo di 8 nodi. Impiega 79 differenti canali da 1 MHz ciascuno, con frequenze da 2.402 a 2.480 MHz.

I dispositivi sono suddivisi per potenza emessa in tre classi:

- **Classe 1:** 100 mW
- **Classe 2:** 2,5 mW
- **Classe 3:** 1 mW

La sensibilità minima del ricevitore è **100 pW**.

Attualmente sono in sviluppo anche le versioni **BTLE (BT Low Energy)** che riducono drasticamente i consumi di energia del componente a scapito di un ritardo interno (latenza) di diversi millisecondi, e con un data rate minore di 100 kbps. BTLE è ideale per il trasferimento episodico o periodico di piccole quantità di dati.

La versione **BT5** permette di realizzare reti mesh (tutto a tutti) con fino a **32.767 nodi teorici**. I nodi che ricevono un messaggio valido lo ritrasmettono. Per evitare ripetizioni inutili, i nodi mantengono un elenco dei messaggi inviati in precedenza e i messaggi stessi hanno una durata limitata (un numero limitato di hop da nodo a nodo).

### ZigBee

**ZigBee** è uno standard per sistemi a basso consumo, con pacchetti da 256 bit e data rate di 250 kbps, adatto per reti con un massimo di **255 nodi**.

Le funzioni base del protocollo (IEEE 802.15.4) e la sezione radio si possono trovare già integrati in alcuni microcontrollori wireless, come **STM32W108** della ST e **CC2531** della Texas Instruments.

![[Media/image-041.jpg]]

---

## 9. Tecnologie Wireless Short Range per Connessioni Punto-Punto

Le tecnologie più diffuse per le connessioni punto-punto wireless short range in radiofrequenza sono **RFID** (Radio Frequency IDentification) e **NFC** (Near Field Communication).

### 9.1 RFID

**RFID** è una tecnologia di identificazione senza contatto di oggetti, animali o persone, ottenuta tramite la lettura in radiofrequenza delle informazioni contenute in un sistema passivo microchip-antenna detto **transponder** (o più semplicemente **tag**), inserito in portachiavi, bracciali, schede ISO, ecc.

![[Media/image-043.jpg]]

Le frequenze riservate all'identificazione delle persone sono 125 kHz e 13,56 MHz, mentre per l'identificazione animale si lavora a **134,2 kHz**.

I sistemi RFID sono costituiti da una **stazione base**, che fornisce un campo di energia, e da un **transponder passivo**, che interagisce con il campo.

La stazione base possiede un circuito oscillante generatore, che irradia un campo magnetico, per esempio a 125 kHz, mentre il circuito oscillante ricevitore, interno al transponder, posto in prossimità del campo, ne subisce l'induzione. Se la frequenza propria di oscillazione non coincide con quella del campo incidente, l'ampiezza delle oscillazioni forzate nel tag è di lieve entità e il circuito interno resta inerte, senza energia. Se, invece, induttanza e capacità del ricevitore sono in accordo con la frequenza del campo trasmittente, le oscillazioni indotte raggiungono la loro ampiezza massima e sono in grado di alimentare il transponder.

Una volta alimentato, il tag diventa attivo e modula il suo consumo, caricando il campo e facendo variare l'ampiezza delle oscillazioni sul circuito oscillante della stazione base. Nella stazione base, le variazioni di ampiezza delle oscillazioni sono rilevate e ricondotte in bit per ricostruire il codice emesso dal transponder.

### 9.2 NFC

**NFC** è una tecnologia wireless short range, sviluppata da un gruppo di imprese (Philips, LG, Nokia, Sony) per applicazioni di identificazione e connettività bidirezionale su smartphone. È una evoluzione di RFID, con frequenza di lavoro a **13,56 MHz** e bit rate fino a **424 kbps**.

Quando due dispositivi NFC (initiator e target) vengono accostati entro un raggio di circa **4 cm**, si stabilisce tra i due una rete peer-to-peer, che consente ad entrambi di inviare e ricevere informazioni. La connessione, una volta stabilita, regge fino a una distanza massima di **10 cm**.

Per implementare NFC in un progetto sono disponibili sia chip integrati, sia schede esterne microSD (Secur Digital). Le applicazioni più note riguardano prenotazioni e pagamenti per alberghi, ingressi a cinema, teatri, stadi, viaggi su mezzi urbani, treni o aerei, con accesso al servizio acquistato mediante avvicinamento del dispositivo stesso al gate di ingresso.

![[Media/image-046.jpg]]

---

## 10. Verifica

### ✅ Scegli la Risposta Corretta

**1.** L'esistenza delle onde elettromagnetiche fu intuita per la prima volta da:

- A) Niels Bohr
- B) Heinrich Rudolph Hertz
- **C) James Clerk Maxwell** ✓
- D) Guglielmo Marconi

**2.** Un'onda elettromagnetica:

- **A) si propaga in modo rettilineo nello spazio libero** ✓
- B) è completamente assorbita da una superficie metallica
- C) penetra i materiali tanto più facilmente quanto maggiore è la sua frequenza
- D) in presenza di ostacoli non subisce flessioni

**3.** Trattando delle antenne è corretto dire che:

- **A) sono dispositivi in grado di irraggiare onde elettromagnetiche nello spazio e di captarle** ✓
- B) maggiore è la frequenza di lavoro e più lunga è l'antenna
- C) il diagramma di radiazione rappresenta gli assi del solido di emissione
- D) l'angolo di apertura è pari all'angolo solido entro il quale la densità di potenza si mantiene superiore al 90% del valore massimo

**4.** In merito alle caratteristiche delle diverse antenne:

- A) il dipolo marconiano è detto dipolo in λ/2
- B) la parabola è detta antenna a dipolo
- **C) il dipolo hertziano è detto dipolo in λ/2** ✓
- D) l'antenna Yagi contiene un certo numero di elementi direttori attivi

**5.** In ambito applicativo:

- A) per le applicazioni mobili sono indispensabili le antenne a parabola
- **B) per le connessioni fisse sono preferibili le antenne direzionali** ✓
- C) le antenne a frusta sono unidirezionali
- D) le antenne a chip sono omnidirezionali

**6.** Quando un'antenna è in ricezione presenta un'area efficace il cui valore:

- A) si riduce aumentando il guadagno dell'antenna
- B) aumenta proporzionalmente con la lunghezza d'onda del segnale
- **C) aumenta con il quadrato della lunghezza d'onda del segnale** ✓
- D) aumenta con il cubo della lunghezza d'onda del segnale

**7.** In merito alla classificazione delle reti wireless, **non** è vero dire che:

- A) le WWAN sono grandi reti di dati, progettate per coprire aree estese
- **B) WiMAX è uno standard per WLAN** ✓ _(WiMAX è standard per WMAN)_
- C) le WPAN consentono una comunicazione entro un raggio limitato
- D) le WWAN sono gestite da un fornitore di servizi

**8.** Utilizzando un modem GSM governato mediante comandi AT non è possibile:

- A) comporre un numero di telefono per inviare uno squillo di avviso
- B) gestire l'invio di un SMS verso il numero di reperibilità aziendale
- **C) attivare da distanza particolari uscite del PLC** ✓
- D) conoscere lo status della macchina

**9.** Trattando delle bande ISM, si può affermare che:

- **A) si tratta di bande libere, utilizzabili senza licenza** ✓
- B) sono le medesime in tutti gli Stati
- C) le prescrizioni ETS 300 328 permettono di irradiare potenza in banda libera fino a un EIRP di 30 dBm solo con modalità spread spectrum
- D) le norme ETS 300 328 sono le stesse per tutte le bande ISM

**10.** Per quanto riguarda le bande libere da 433 a 868 MHz, è vero che:

- A) la banda 433 MHz non può essere utilizzata per controlli remoti fino a 100 m
- B) in banda 458 MHz si può trasmettere fino a 500 m
- **C) in banda 434 MHz si può trasmettere fino a 1 km** ✓
- D) la banda 868 MHz può essere utilizzata per controlli remoti fino a 10 km

**11.** In merito allo standard Bluetooth non è vero che:

- A) opera a 2,4 GHz
- B) lavora con 1 mW di potenza trasmessa su distanze tipiche di 100 m
- C) è un protocollo adatto per la trasmissione di voce e dati
- **D) usa la tecnica frequency hopping tra 80 differenti canali da 1 MHz ciascuno** ✓ _(i canali sono 79)_

---

### 📐 Risolvi i Seguenti Esercizi

**E1 —** Determinare i seguenti valori:

- **A)** La frequenza di lavoro di un'antenna marconiana, in rame, lunga 7,125 cm.
- **B)** La frequenza di lavoro di un'antenna marconiana, in rame, lunga 2,97 cm.
- **C)** La lunghezza di un'antenna in λ/4 in alluminio per Bluetooth a 2,4 GHz.
- **D)** La densità di potenza rilevabile a 2 km di distanza da un radiatore isotropico che irradia una potenza di 10 W.
- **E)** La potenza emessa da un radiatore isotropico sapendo che a 1 km di distanza si rileva una densità di potenza S = 100 µW/m².
- **F)** L'EIRP di un'antenna che trasmette 10 mW con guadagno 15,85 dB.

**E2 —** Un trasmettitore da 200 mW è collegato a un'antenna con guadagno 63,1, mediante un cavo coassiale che attenua il segnale di un fattore 2,51. Calcolare l'EIRP.

**E3 —** Nel quadro normativo sulla protezione della popolazione dai campi elettromagnetici, l'articolo 4 del DPCM 8 luglio 2003 prescrive che la densità di potenza nelle aree intensamente frequentate non deve superare gli 0,1 W/m². Poiché un dispositivo Bluetooth presenta un EIRP di 100 mW, determinare a quale distanza, nella direzione di massima radiazione, la densità di potenza risulta < 100 mW/m².

**E4 —** Determinare il massimo valore di EIRP per un dispositivo che soddisfi le specifiche sui campi elettromagnetici in aree intensamente frequentate (S < 100 mW/m²), a una distanza di 5 cm nella direzione di massima radiazione.

**E5 —** Un'antenna per ponte radio irradia 10 W, con guadagno G = 25.120. Determinare a quale distanza dall'antenna, nella direzione di massima radiazione, la densità di potenza risulta minore di 0,1 W/m².

**E6 —** Un trasmettitore da 5 W impiega un'antenna direttiva con guadagno 1.000. Determinare a quale distanza dall'antenna, nella direzione di massima radiazione, la densità di potenza risulta minore di 0,1 W/m².

**E7 —** Determinare area efficace e guadagno di una parabola:

- **A)** con diametro 0,4 m ed efficienza 0,55, che lavora a 10 GHz;
- **B)** con diametro 0,6 m ed efficienza 0,55, che lavora a 12 GHz.

**E8 —** Lo standard 802.11b/g prevede 14 canali da 22 MHz (dei quali solo i primi 13 sono ammessi in Europa), con frequenze centrali allocate a partire da 2412 MHz e distanziate di 5 MHz (tranne l'ultima). Dovendo settare la frequenza centrale di tre access point che condividono il medesimo ambiente, individuare i canali utilizzabili, tali da minimizzare le interferenze reciproche ed evitare sovrapposizioni con la banda del canale 14. Determinare il valore della banda di sicurezza intercanale ottenuta. Ripetere i calcoli supponendo di accettare anche una sovrapposizione con il canale 14.

**E9 —** Determinare la distanza teorica sostenibile in aria libera da un sistema Bluetooth di classe 1 (P_t = 100 mW), utilizzando il valore di sensibilità minima del ricevitore prevista dallo standard (P_r = 100 pW) e supponendo unitario il guadagno d'antenna.

**E10 —** Un dispositivo mobile usa un modulo ZigBee che consuma 25 mA in ricezione e 5 µA in sleep mode, alimentato a 3 V con pile a stilo da 1200 mAh. Determinare la durata delle batterie, considerato che il dispositivo entra in ricezione per 1,5 ms ogni 200 ms e che è utilizzato 8 ore al giorno per 220 giorni/anno.

**E11 —** Un dispositivo mobile dispone di un modulo ZigBee che consuma 25 mA in ricezione e 5 µA in sleep mode, alimentato a 3 V con pile a stilo da 1200 mAh. Determinare la durata delle batterie, considerato che il dispositivo entra in ricezione per 1,2 ms ogni 150 ms e che è utilizzato 8 ore al giorno per 220 giorni/anno.

---

### 🌐 Esercitazioni HTML

**1 —** Creare una pagina web per uno snack bar, seguendo esattamente la struttura e lo stile indicati in figura. In particolare, creare un collegamento interno a fondo pagina che riporti immediatamente a inizio pagina.

![[Media/image-057.jpg]]

**2 —** Utilizzare parte del codice dell'esercitazione precedente per creare tre pagine distinte: Esercizio2A, Esercizio2B e Esercizio2C. Utilizzare opportunamente i tag di relative hyperlink per collegare le pagine tra di loro.

![[Media/image-058.jpg]]

![[Media/image-059.jpg]]

---

_© Editrice San Marco_
