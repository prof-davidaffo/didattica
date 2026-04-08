## 📐 Esercizi

### 1. Frequenza, lunghezza d’onda e dimensionamento delle antenne

**E1 —** Determinare i seguenti valori:

- **A)** La frequenza di lavoro di un’antenna marconiana, in rame, lunga 7,125 cm.
    
- **B)** La frequenza di lavoro di un’antenna marconiana, in rame, lunga 2,97 cm.
    
- **C)** La lunghezza di un’antenna in λ/4 in alluminio per Bluetooth a 2,4 GHz.
    

**E2 —** Determinare la lunghezza di un’antenna marconiana in **rame** per le seguenti frequenze:

- **A)** 433 MHz
    
- **B)** 868 MHz
    
- **C)** 2,45 GHz
    

**E3 —** Determinare la frequenza di lavoro di un’antenna in **alluminio**, lunga:

- **A)** 14,7 cm
    
- **B)** 8,5 cm
    
- **C)** 3,2 cm
    

Supporre che si tratti sempre di un’antenna in **λ/4**.

**E4 — Problema di progetto.**  
Un’azienda vuole realizzare un telecomando industriale che lavori nella banda **868 MHz** usando un’antenna a stilo marconiana in rame.

- **A)** Calcolare la lunghezza teorica dell’antenna.
    
- **B)** Spiegare perché, a parità di materiale, un’antenna per **2,4 GHz** risulta molto più piccola.
    
- **C)** Dire quale delle due antenne sarebbe, in generale, più adatta a un dispositivo molto compatto.
    

**E5 — Problema di confronto.**  
Si vogliono realizzare due antenne in λ/4: una per **WiFi 2,4 GHz** e una per **LoRa 433 MHz**.

- **A)** Calcolare la lunghezza di entrambe.
    
- **B)** Stabilire quante volte una antenna è più lunga dell’altra.
    
- **C)** Commentare quale tecnologia pone maggiori vincoli di ingombro sul dispositivo.
    

---

### 2. Densità di potenza nello spazio libero

**E6 —** Determinare i seguenti valori:

- **A)** La densità di potenza rilevabile a 2 km di distanza da un radiatore isotropico che irradia una potenza di 10 W.
    
- **B)** La potenza emessa da un radiatore isotropico sapendo che a 1 km di distanza si rileva una densità di potenza (S = 100 ,\mu W/m^2).
    

**E7 —** Un radiatore isotropico emette una potenza di **5 W**. Determinare la densità di potenza rilevabile a:

- **A)** 10 m
    
- **B)** 100 m
    
- **C)** 1 km
    

Confrontare i risultati e verificare l’andamento con il quadrato della distanza.

**E8 — Problema di ragionamento.**  
Due trasmettitori isotropici irradiano rispettivamente **2 W** e **8 W**.

- **A)** A pari distanza, di quanto cambia la densità di potenza?
    
- **B)** Per ottenere la stessa densità di potenza del trasmettitore da 8 W posto a 200 m, a quale distanza deve trovarsi il trasmettitore da 2 W?
    
- **C)** Spiegare perché aumentare molto la potenza non equivale ad aumentare proporzionalmente la copertura.
    

**E9 — Problema applicativo.**  
Un tecnico misura una densità di potenza di **0,2 mW/m²** a **50 m** da una sorgente, assumibile isotropica.

- **A)** Stimare la potenza irradiata.
    
- **B)** Calcolare quale densità di potenza si avrebbe a **100 m**.
    
- **C)** Dire se il valore a 100 m risulta doppio, metà, un quarto o un altro rapporto rispetto a quello a 50 m.
    

---

### 3. Guadagno, EIRP e attenuazione di linea

**E10 —** Determinare l’EIRP di un’antenna che trasmette **10 mW** con guadagno **15,85 dB**.

**E11 —** Un trasmettitore da **200 mW** è collegato a un’antenna con guadagno **63,1**, mediante un cavo coassiale che attenua il segnale di un fattore **2,51**. Calcolare l’EIRP.

**E12 —** Un access point trasmette con potenza **100 mW** ed è collegato a un’antenna con guadagno **10**. Il cavo introduce una attenuazione di un fattore **2**.

- **A)** Calcolare la potenza effettivamente disponibile ai morsetti dell’antenna.
    
- **B)** Calcolare l’EIRP.
    
- **C)** Confrontare il risultato con quello che si avrebbe trascurando il cavo.
    

**E13 — Problema di confronto progettuale.**  
Per migliorare un collegamento radio si possono adottare due soluzioni:

- aumentare la potenza del trasmettitore da **50 mW** a **200 mW**;
    
- oppure lasciare invariato il trasmettitore e sostituire l’antenna con una avente guadagno **4 volte maggiore**.
    
- **A)** Calcolare in entrambi i casi come varia l’EIRP.
    
- **B)** Stabilire se le due soluzioni sono equivalenti.
    
- **C)** Discutere quale approccio può essere preferibile dal punto di vista energetico.
    

**E14 — Problema con unità lineari e logaritmiche.**  
Un sistema trasmette **20 mW** su un’antenna da **12 dB**. Il cavo introduce una perdita di **3 dB**.

- **A)** Convertire guadagno e attenuazione in fattori lineari.
    
- **B)** Calcolare l’EIRP in mW.
    
- **C)** Spiegare il significato fisico di una perdita di 3 dB.
    

---

### 4. Sicurezza elettromagnetica e distanza minima

**E15 —** Nel quadro normativo sulla protezione della popolazione dai campi elettromagnetici, l’articolo 4 del DPCM 8 luglio 2003 prescrive che la densità di potenza nelle aree intensamente frequentate non deve superare gli **0,1 W/m²**. Poiché un dispositivo Bluetooth presenta un’EIRP di **100 mW**, determinare a quale distanza, nella direzione di massima radiazione, la densità di potenza risulta **< 100 mW/m²**.

**E16 —** Determinare il massimo valore di **EIRP** per un dispositivo che soddisfi le specifiche sui campi elettromagnetici in aree intensamente frequentate ((S < 100 mW/m^2)), a una distanza di **5 cm** nella direzione di massima radiazione.

**E17 —** Un’antenna per ponte radio irradia **10 W**, con guadagno **G = 25.120**. Determinare a quale distanza dall’antenna, nella direzione di massima radiazione, la densità di potenza risulta minore di **0,1 W/m²**.

**E18 —** Un trasmettitore da **5 W** impiega un’antenna direttiva con guadagno **1.000**. Determinare a quale distanza dall’antenna, nella direzione di massima radiazione, la densità di potenza risulta minore di **0,1 W/m²**.

**E19 — Problema realistico.**  
Un apparato WiFi industriale deve essere installato in un corridoio frequentato dal personale. L’apparato ha una potenza in antenna di **200 mW** e guadagno **8**.

- **A)** Calcolare l’EIRP.
    
- **B)** Determinare la distanza minima oltre la quale la densità di potenza scende sotto **0,1 W/m²**.
    
- **C)** Spiegare perché il punto critico è la direzione di massima radiazione e non una direzione qualunque.
    

**E20 — Problema di verifica tecnica.**  
Due apparati radio hanno lo stesso EIRP, ma uno usa antenna isotropica ideale e uno usa antenna molto direttiva.

- **A)** Spiegare se in direzione di massimo irraggiamento la densità di potenza può risultare uguale.
    
- **B)** Spiegare se fuori asse i due comportamenti restano uguali.
    
- **C)** Collegare la risposta al concetto di guadagno d’antenna.
    

---

### 5. Area efficace e antenne paraboliche

**E21 —** Determinare area efficace e guadagno di una parabola:

- **A)** con diametro **0,4 m** ed efficienza **0,55**, che lavora a **10 GHz**;
    
- **B)** con diametro **0,6 m** ed efficienza **0,55**, che lavora a **12 GHz**.
    

**E22 —** Una parabola ha diametro **0,8 m** ed efficienza **0,65**, e lavora a **6 GHz**.

- **A)** Calcolare la lunghezza d’onda.
    
- **B)** Calcolare il guadagno.
    
- **C)** Calcolare l’area efficace.
    

**E23 — Problema di confronto.**  
Due parabole hanno la stessa efficienza, ma diametri rispettivamente di **30 cm** e **60 cm**, e lavorano alla stessa frequenza.

- **A)** Confrontare le aree efficaci.
    
- **B)** Confrontare i guadagni.
    
- **C)** Spiegare perché raddoppiare il diametro non raddoppia semplicemente le prestazioni.
    

**E24 — Problema applicativo.**  
Un collegamento satellitare può usare, in ricezione, una parabola da **45 cm** oppure una da **90 cm**, entrambe con la stessa efficienza.

- **A)** Determinare di quanto cresce l’area efficace.
    
- **B)** Determinare di quanto cresce la potenza ricevuta a parità di segnale incidente.
    
- **C)** Spiegare perché le parabole più grandi sono vantaggiose soprattutto quando il segnale è molto debole.
    

---

### 6. Pianificazione dei canali WiFi

**E25 —** Lo standard **802.11b/g** prevede 14 canali da 22 MHz (dei quali solo i primi 13 sono ammessi in Europa), con frequenze centrali allocate a partire da **2412 MHz** e distanziate di **5 MHz** (tranne l’ultima). Dovendo settare la frequenza centrale di tre access point che condividono il medesimo ambiente, individuare i canali utilizzabili, tali da minimizzare le interferenze reciproche ed evitare sovrapposizioni con la banda del canale 14. Determinare il valore della banda di sicurezza intercanale ottenuta. Ripetere i calcoli supponendo di accettare anche una sovrapposizione con il canale 14.

**E26 — Problema di progettazione.**  
In un laboratorio scolastico devono essere installati **tre access point 2,4 GHz** in aule adiacenti.

- **A)** Scegliere i canali più opportuni.
    
- **B)** Spiegare perché non conviene usare canali consecutivi.
    
- **C)** Dire se la scelta cambierebbe in presenza di un quarto access point nello stesso piano.
    

**E27 — Problema di interpretazione.**  
Un tecnico rileva che due reti WiFi stanno lavorando sui canali **3** e **6**.

- **A)** Stabilire se le bande si sovrappongono.
    
- **B)** Calcolare la distanza tra le frequenze centrali.
    
- **C)** Discutere qualitativamente il rischio di interferenza.
    

---

### 7. Portata teorica dei collegamenti radio

**E28 —** Determinare la distanza teorica sostenibile in aria libera da un sistema Bluetooth di classe 1 ((P_t = 100 mW)), utilizzando il valore di sensibilità minima del ricevitore prevista dallo standard ((P_r = 100 pW)) e supponendo unitario il guadagno d’antenna.

**E29 — Problema di confronto.**  
Due collegamenti radio operano in spazio libero:

- collegamento A con (P_t = 100) mW;
    
- collegamento B con (P_t = 25) mW.
    

Entrambi hanno uguale sensibilità minima in ricezione e antenne con guadagno unitario.

- **A)** Stabilire quale collegamento ha portata maggiore.
    
- **B)** Calcolare di quante volte cambia la distanza massima teorica.
    
- **C)** Spiegare perché la distanza non cresce linearmente con la potenza.
    

**E30 — Problema di scenario.**  
Un sensore Bluetooth deve comunicare con una centralina posta a **40 m** in aria libera. La potenza trasmessa è **10 mW**, il guadagno delle antenne è assunto unitario e la sensibilità del ricevitore è **100 pW**.

- **A)** Verificare se, teoricamente, il collegamento è possibile.
    
- **B)** Spiegare perché nella realtà il risultato potrebbe peggiorare in presenza di muri, persone o arredi metallici.
    
- **C)** Indicare almeno due fattori pratici che riducono la portata rispetto al caso ideale.
    

---

### 8. Consumi energetici e autonomia dei dispositivi wireless

**E31 —** Un dispositivo mobile usa un modulo ZigBee che consuma **25 mA** in ricezione e **5 µA** in sleep mode, alimentato a **3 V** con pile a stilo da **1200 mAh**. Determinare la durata delle batterie, considerato che il dispositivo entra in ricezione per **1,5 ms ogni 200 ms** e che è utilizzato **8 ore al giorno per 220 giorni/anno**.

**E32 —** Un dispositivo mobile dispone di un modulo ZigBee che consuma **25 mA** in ricezione e **5 µA** in sleep mode, alimentato a **3 V** con pile a stilo da **1200 mAh**. Determinare la durata delle batterie, considerato che il dispositivo entra in ricezione per **1,2 ms ogni 150 ms** e che è utilizzato **8 ore al giorno per 220 giorni/anno**.

**E33 — Problema di confronto energetico.**  
Due nodi ZigBee usano la stessa batteria da **1200 mAh**:

- nodo A: ricezione per **1 ms ogni 100 ms**;
    
- nodo B: ricezione per **2 ms ogni 500 ms**.
    

In entrambi i casi il modulo assorbe **25 mA** in ricezione e **5 µA** in sleep.

- **A)** Calcolare la corrente media di ciascun nodo.
    
- **B)** Stabilire quale dei due dura di più.
    
- **C)** Spiegare perché non conta solo la durata del singolo impulso di attività, ma il duty cycle complessivo.
    

**E34 — Problema di progetto.**  
Si vuole progettare un sensore wireless alimentato a batteria che duri almeno **3 anni**. Il modulo radio assorbe **20 mA** quando attivo e **10 µA** in sleep. La batteria disponibile è da **2000 mAh**.

- **A)** Determinare la corrente media massima ammissibile.
    
- **B)** Stimare per quanto tempo massimo il modulo può restare attivo ogni secondo.
    
- **C)** Commentare perché le tecnologie low power usano finestre di attività brevissime.
    

---

### 9. Esercizi concettuali e problemi di scelta tecnologica

Questa parte secondo me è quella che mancava davvero, perché costringe a ragionare e non solo a fare conti.

**E35 — Scelta della tecnologia.**  
Per ciascuno dei seguenti scenari, indicare quale tecnologia risulta più adatta tra **WiFi, Bluetooth, ZigBee, LoRa, GSM/GPRS, RFID, NFC**, motivando la risposta:

- **A)** Badge di accesso a un laboratorio
    
- **B)** Sensore di temperatura a batteria in un campo agricolo a 3 km di distanza
    
- **C)** Auricolari wireless
    
- **D)** Collegamento di notebook e smartphone alla rete Internet di casa
    
- **E)** Lettura automatica di contatori distribuiti in una città
    
- **F)** Pagamento contactless con smartphone
    
- **G)** Monitoraggio remoto di un distributore automatico installato in stazione
    

**E36 — Problema di confronto tra reti.**  
Un’azienda deve raccogliere misure di temperatura da **150 sensori** distribuiti in uno stabilimento. Ogni sensore invia solo pochi byte ogni minuto e deve funzionare a batteria il più a lungo possibile.

- **A)** Tra WiFi, Bluetooth e ZigBee, indicare la soluzione più sensata.
    
- **B)** Motivare la scelta in termini di consumo, data rate e scalabilità.
    
- **C)** Spiegare perché il WiFi, pur essendo più veloce, non è la scelta migliore.
    

**E37 — Problema di copertura.**  
Un magazzino presenta zone schermate da scaffalature metalliche. Il responsabile nota che un sistema a **5 GHz** ha copertura peggiore rispetto a un sistema a frequenza più bassa.

- **A)** Spiegare il fenomeno usando il concetto di penetrazione.
    
- **B)** Spiegare il ruolo della lunghezza d’onda.
    
- **C)** Dire quale delle due frequenze è in generale più adatta in ambienti con ostacoli.
    

**E38 — Problema su mobilità e direttività.**  
Un dispositivo montato su un veicolo deve restare connesso mentre cambia continuamente posizione e orientamento.

- **A)** Stabilire se sia più adatta un’antenna omnidirezionale o direzionale.
    
- **B)** Motivare la risposta.
    
- **C)** Spiegare in quale caso, invece, avrebbe senso usare un’antenna direttiva.
    

**E39 — Problema su RFID e NFC.**  
Spiegare differenze e analogie tra RFID e NFC, discutendo:

- **A)** principio fisico di funzionamento;
    
- **B)** distanza tipica;
    
- **C)** alimentazione del tag/dispositivo;
    
- **D)** applicazioni tipiche;
    
- **E)** vantaggi dell’NFC nei pagamenti.
    

**E40 — Problema integrato.**  
Un’azienda deve scegliere una soluzione per monitorare i propri mezzi in tempo reale su tutto il territorio nazionale.

- **A)** Dire se sarebbero adatti WiFi, Bluetooth, ZigBee o GSM/GPRS.
    
- **B)** Motivare la scelta richiamando la classificazione WWAN/WMAN/WLAN/WPAN.
    
- **C)** Spiegare perché il vehicle tracking rientra nelle applicazioni M2M.
    

---

### 10. Quesiti brevi di interpretazione

**E41 —** Spiegare perché, a parità di potenza trasmessa, un’antenna con maggiore guadagno non “crea energia”, ma la concentra in una regione angolare più stretta.

**E42 —** Spiegare perché un’antenna con elevato guadagno in trasmissione presenta anche una grande area efficace in ricezione.

**E43 —** Spiegare perché le bande ISM sono molto comode ma anche soggette a possibili interferenze.

**E44 —** Spiegare perché un dispositivo GPRS spesso non è direttamente raggiungibile da Internet.

**E45 —** Spiegare perché ZigBee è adatto alle reti di sensori, mentre Bluetooth è più adatto al collegamento di dispositivi personali vicini.