# Unità 4 — I requisiti software
### Conoscenze

- Comprendere l'importanza della fase di analisi
- Avere il concetto di requisito utente e di sistema
- Avere il concetto di fase di esplorazione
- Conoscere le tecniche di esplorazione
- Avere il concetto di scenario e caso d'uso
- Comprendere le caratteristiche SRS
- I principi S.O.L.I.D. per definizione delle classi

### Competenze

- Individuare i requisiti utente
- Individuare i requisiti di sistema
- Utilizzare le tecniche di esplorazione
- Individuare gli scenari d'uso
- Analizzare il documento di Specifica dei Requisiti Software (SRS)
- Acquisire la struttura di un SRS

### Abilità

- Saper descrivere in UML i casi d'uso
- Saper descrivere in UML il diagramma di contesto
- Saper documentare i casi d'uso
- Saper compilare il documento di Specifica dei Requisiti Software (SRS)
- Validare le specifiche di un SRS

> I file relativi a esempi, esercizi, esercizi in laboratorio e a eventuali soluzioni di questa Unità sono scaricabili dal sito.

---

## Lezione 1 — La specifica dei requisiti

**In questa lezione impareremo:**

- le diverse tipologie di requisiti software
- i requisiti utente e i requisiti di sistema
- i requisiti funzionali e i requisiti non funzionali

### Premessa

Nel ciclo di vita del processo informatico le prime fasi che seguono lo studio di fattibilità riguardano la raccolta e l'analisi dei requisiti.

Con lo studio di fattibilità viene effettuata una valutazione preliminare di costi e benefici nella quale si stabilisce se è conveniente avviare il progetto oppure si possono individuare opzioni o alternative più adeguate, come utilizzare e adeguare altri prodotti presenti in commercio, e quindi valutare le risorse umane e finanziarie necessarie.

Questa fase generalmente si conclude con la presentazione di una offerta al cliente (preventivo o documento di fattibilità) nel quale sono indicati i costi, i tempi ed eventualmente le modalità di sviluppo per ogni alternativa proposta.

> **Senior** — Nelle figure professionali di Software Architect, Software Engineer e Software Developer la qualifica di "Senior" si acquisisce dopo un certo numero di anni di esperienza nel settore (gli esperti di IT sono concordi nel ritenere che debbano essere almeno 10). La formulazione del preventivo impegna la software house alla sua realizzazione e al rispetto di quanto in esso descritto: generalmente questo viene compilato da un Software Architect Senior.

Nella successiva fase, quella di specifica dei requisiti, possiamo riconoscere le seguenti attività:

- **analisi del problema:** lo scopo dell'analisi del problema è quello di comprendere cosa deve fare il sistema software che si vuole realizzare; devono essere individuate le necessità degli utenti, la natura dell'ambiente operativo, le condizioni di mercato e/o di settore operativo, le condizioni di funzionamento;
- **definizione delle funzionalità**, dell'operatività, dei vincoli interni ed esterni alla azienda, delle prestazioni e di ogni caratteristica richiesta al sistema per soddisfare la necessità del cliente;
- **redazione di un documento di Specifica dei Requisiti Software (SRS-Software Requirement Specification)** che, in poche parole, non è altro che la trasformazione dei requisiti in un documento formalizzato che raccoglie le specifiche tecniche e funzionali che caratterizzano il sistema;
- **convalida delle specifiche:** prima di procedere alla realizzazione il SRS viene analizzato e rivisto con il committente per validare ogni singola specifica individuata.

La specifica dei requisiti risponde alla domanda "che cosa deve fare il sistema?" cioè stabilisce le funzionalità del sistema senza interessarsi di "come" queste funzioni verranno realizzate.

> **Esempio** — In una biblioteca comunale, per esempio, al sistema è richiesto di:
> 
> - archiviare i dati di una biblioteca, in particolare dati relativi ai libri, giornali, riviste, DVD e CD-ROM;
> - permettere agli utenti di fare delle ricerche per titolo, autore, argomento o ISBN;
> - effettuare le operazioni di prestito per la consultazione;
> - gestire almeno 10 transazioni per secondo;
> - riconoscere l'utente attraverso una smart card o lo smartphone.
> 
> L'interfaccia al sistema dovrà essere realizzata utilizzando un browser Internet.

L'analisi e l'individuazione dei requisiti è di fondamentale importanza per poter sviluppare un software di alta qualità: un errore in questa fase comporta necessariamente la presenza anche di molti errori nel sistema finale. L'insieme delle attività che si "occupano" di requisiti prende anche il nome di ingegneria dei requisiti (requirement engineering); tali attività possono essere indicate come:

- raccolta dei requisiti;
- analisi dei requisiti;
- specifica/documentazione dei requisiti;
- verifica e validazione dei requisiti.

In questa Lezione inizieremo ad analizzare il concetto di requisito e ne studieremo alcune possibili classificazioni che ci permetteranno di comprenderne meglio le caratteristiche al fine di acquisire gli elementi essenziali per poter poi redigere correttamente l'SRS.

### Requisiti software e stakeholder

Un requisito (dal latino requisitus, richiesto) è una proprietà richiesta, oppure auspicabile, del prodotto: il documento dei requisiti ha lo scopo di accogliere in forma organica una descrizione di tutte le proprietà desiderate e dalla sua formulazione dovrebbe essere chiaro se un requisito esprime una proprietà obbligatoria, oppure soltanto suggerita o auspicabile.

Possiamo dare una prima definizione di requisito.

> **Requisito** — Ogni informazione (ottenuta in qualche modo) circa le funzionalità, i servizi, le modalità operative e di gestione del sistema da sviluppare.

> **Esempio** — Per un sito Web di commercio elettronico potremmo identificare, fra gli altri, i seguenti cinque requisiti:
> 
> - il sito deve permettere all'utente di inserire nel carrello d'acquisto i prodotti di cui sta valutando l'acquisto;
> - il carrello deve poter contenere almeno 15 prodotti contemporaneamente;
> - ogni scheda prodotto contenuta nel catalogo deve contenere una fotografia a colori del prodotto, il suo nome, il nome del produttore, il prezzo e una descrizione sintetica ma completa, 5 righe di testo al massimo;
> - il pagamento deve essere effettuato sia con carte di credito elettroniche che tradizionali;
> - l'intero processo di acquisto di un prodotto dovrebbe richiedere al massimo 5 minuti.

La definizione dei requisiti rappresenta l'analisi completa dei bisogni dell'utente e del dominio del problema allo scopo di definire quello che il sistema deve fare.

La raccolta dei requisiti è spesso considerata l'attività più difficile, perché richiede la collaborazione tra più gruppi di partecipanti con differenti background: questa fase deve coinvolgere (engagement) diverse persone sia del team di sviluppo (programmatori, sistemisti ecc.) che dell'azienda del cliente (committente, end-users, managers ecc.) e, a volte, può anche richiedere la consulenza di terze parti, come consulenti esterni, per esempio, per l'analisi della legislazione e/o di realizzazioni pre-esistenti.

Le diverse persone coinvolte in tale processo sono chiamate gli **stakeholder**.

> **Stakeholder** — "Gli stakeholder – o portatori di interesse – sono tutte quelle persone o gruppi che influenzano e/o sono influenzati dalle attività di un'organizzazione, dai suoi prodotti o servizi e dai relativi risultati di performance." (Edward Freeman, 1984)

Sono da considerarsi stakeholder tutte le persone in qualche modo interessate alla messa in opera del sistema, a ogni livello della organizzazione.

All'inizio del progetto gli stakeholder difficilmente hanno una chiara idea di quello che esattamente vogliono e usano un proprio linguaggio tecnico (tipico del dominio dell'attività dell'azienda) che generalmente non è noto all'analista che deve quindi per prima cosa studiare il loro lessico specifico per poter dialogare e comprendere correttamente quanto gli viene esposto.

D'altra parte il cliente e gli utenti finali sono esperti nel loro dominio ma hanno generalmente poca (o nulla) esperienza nello sviluppo del software e idee spesso confuse e vaghe sulle funzionalità che il nuovo sistema vuole realizzare.

Inoltre sia le funzioni svolte che i fabbisogni individuali sono diversi a ogni livello della azienda e spesso gli stakeholder effettuano richieste diverse che possono anche sfociare in requisiti in conflitto tra loro.

> **Area Digitale** — Gli stakeholder: ogni stakeholder può fornire una descrizione astratta e imprecisa del sistema che l'analista deve essere in grado di elaborare per ottenere una descrizione dettagliata e matematica dello stesso.

Nell'analisi dei requisiti bisogna tener presente non solo le esigenze dell'azienda ma anche i fattori esterni al sistema stesso, come le esigenze sopraggiunte a causa di modifiche apportate nella organizzazione aziendale conseguenti all'adeguamento a nuove politiche di mercato o a obblighi legislativi.

Anche per questo motivo i requisiti non sono "stabili", ma possono cambiare sia durante la fase di analisi che in tutto il ciclo di sviluppo della applicazione informatica.

La fase di analisi dei requisiti è particolarmente delicata e l'introduzione di errori in questa fase può portare anche al fallimento dell'intero progetto: in ogni caso questi errori sono difficili da individuare e spesso vengono scoperti "troppo tardi", nelle ultime fasi del processo di sviluppo del software, quando l'intervento per risolverli risulta essere molto oneroso.

I principali rischi sono quelli di "dimenticare" o ignorare una funzionalità, di implementare in modo errato o incompleto una richiesta, di realizzare interfacce utenti poco intuitive e difficili da usare.

Un suggerimento per identificare i requisiti rilevanti in un processo di progettazione di sistemi informatici viene dato dalla normativa ISO 13407, anche conosciuta come Human-centered design process (UCD).

La filosofia di base si può riassumere in una frase: "fondare il progetto sui reali bisogni degli utenti".

Secondo l'ISO 13407:

> "La progettazione centrata sull'essere umano (human-centred design) è un approccio allo sviluppo dei sistemi interattivi specificamente orientato alla creazione di sistemi usabili. È un'attività multi-disciplinare che incorpora la conoscenza e le tecniche dei fattori umani e dell'ergonomia. L'applicazione dei fattori umani e dell'ergonomia alla progettazione dei sistemi interattivi ne potenzia l'efficacia e l'efficienza, migliora le condizioni del lavoro umano e contrasta i possibili effetti avversi dell'uso sulla salute, sulla sicurezza e sulle prestazioni. Applicare l'ergonomia alla progettazione dei sistemi richiede che si tenga conto delle capacità, delle abilità, delle limitazioni e delle necessità umane. I sistemi human-centred supportano gli utenti e li motivano a imparare. I benefici possono includere una maggiore produttività, una migliore qualità del lavoro, riduzione dei costi di supporto e di addestramento e una migliore soddisfazione dell'utente".

Possiamo sintetizzare in un insieme di punti le indicazioni che la normativa ci indica come guida all'individuazione dei requisiti e quindi alla definizione degli obiettivi di un sistema applicativo usabile; è necessario cioè definire:

- le prestazioni richieste al nuovo sistema in relazione agli obiettivi operativi ed economico/finanziari;
- i requisiti normativi o legislativi rilevanti, compresi quelli relativi alla sicurezza e alla salute;
- la comunicazione e la cooperazione fra gli utenti e gli altri attori rilevanti;
- le attività degli utenti, inclusa la ripartizione dei compiti, il loro benessere e le loro motivazioni;
- le prestazioni dei diversi compiti;
- la progettazione dei flussi di lavoro e dell'organizzazione;
- la gestione del cambiamento indotto dal nuovo sistema, incluse le attività di addestramento e il personale coinvolto;
- la fattibilità delle diverse operazioni, comprese quelle di manutenzione;
- la progettazione dei posti di lavoro e l'interfaccia uomo-computer.

Prima di affrontare lo studio di una metodologia standardizzata per la definizione dei requisiti è necessario introdurre una loro classificazione.

### Classificazione dei requisiti

I requisiti software possono essere classificati secondo due diversi punti di vista:

- **livello di dettaglio:**
    - requisiti utente (user requirements);
    - requisiti di sistema (system requirements);
- **tipo di requisito che rappresentano:**
    - requisiti funzionali;
    - requisiti non funzionali;
    - requisiti di dominio.

#### Livello di dettaglio

Analizzando i requisiti sulla base del livello di dettaglio, per ciascuna delle due categorie individuate abbiamo livelli di astrazione e formalismo diversi:

- i **requisiti utente** sono quelli che "osserva il cliente", cioè le esigenze sentite dall'utente finale e descritte con il linguaggio del cliente: vengono sottoposti al team di sviluppo che ne propone una soluzione, a volte con diverse alternative (sono anche chiamati requisiti aperti);
- i **requisiti di sistema** sono quelli imposti da vincoli esistenti, come per esempio l'utilizzo di apparecchiature esistenti all'interno della azienda o di interfacciamento con sistemi aziendali già in funzione o anche di natura fiscale e/o legislativa (rispetto della normativa sulla sicurezza e sulla privacy, contabilità e bilancio secondo la normativa CEE ecc.).

Sono solitamente molto strutturati e vincolanti, scritti in linguaggi tecnici e/o semi-formali e/o formali e non lasciano margini di "inventiva" data la loro natura (sono requisiti più restrittivi o requisiti chiusi): spesso non sono conosciuti all'utente ma noti solo al programmatore.

> **Esempio** — In un progetto dove vi è un unico requisito utente elenchiamo i possibili requisiti di sistema:
> 
> Requisito utente:
> 
> - l'applicazione deve permettere di rappresentare e visualizzare file esterni prodotti da altri pacchetti software.
> 
> Requisito di sistema:
> 
> - l'utente deve poter definire il tipo dei file esterni;
> - l'utente deve poter associare a ogni file esterno il prodotto che lo ha generato;
> - a ogni tipo di file deve essere associata una specifica icona per visualizzarlo sullo schermo;
> - l'icona che rappresenta il tipo di file esterno deve poter essere scelta dall'utente;
> - selezionando l'icona, il sistema deve mandare in esecuzione una applicazione in grado di visualizzare il contenuto del file.

#### Tipo di requisito

Se invece analizziamo i requisiti sulla base del tipo, abbiamo tre possibili raggruppamenti:

1. I **requisiti funzionali** (Functional Requirement) descrivono le funzionalità che il sistema deve avere e tutti i servizi che dovrà offrire agli utenti.
    
    I requisiti funzionali devono essere:
    
    - completi: devono indicare tutti i servizi richiesti dagli utenti;
    - coerenti: i requisiti non devono avere definizioni contraddittorie.
    
    Abbiamo già detto come per grossi sistemi sia difficile ottenere requisiti completi e coerenti dato che spesso i vari stakeholder hanno esigenze diverse, spesso in contrasto.
    
2. I **requisiti non funzionali** (Non-Functional Requirement) sono quelli imposti dalle modalità operative, dal ciclo di vita del prodotto, nel caso di un sistema di produzione, oppure dalla "catena del freddo" nel caso di un prodotto alimentare surgelato, o dalle precedenze nel triage in un pronto soccorso ecc., o del rispetto della normativa vigente: il sistema deve rispettare questi vincoli perché imposti dalla organizzazione e dall'esterno.
    
    > **Esempio** — Un esempio tipico è il tempo di risposta che deve avere il sistema per ciascuna operazione richiesta dall'utente oppure la possibilità di utilizzare il sistema sia su una piattaforma fissa (PC) che mobile (smartphone).
    
    Per i requisiti non funzionali sono state proposte diverse classificazioni: riportiamo di seguito quella di Ian Sommerville dove definisce un primo livello composto da tre tipologie di requisiti:
    
    - di prodotto,
    - organizzativi,
    - esterni.
3. I **requisiti di dominio** (Domain Requirements) sono dipendenti dal dominio in cui il sistema deve operare, come la riservatezza nel caso di dati sensibili, le leggi della fisica e/o della tecnologia nel caso di impianti industriali, la sicurezza sul lavoro specifica per ogni tipo e settore di attività ecc.
    
    Un esempio tipico è la richiesta di login (user ID e password) per accedere a un'area dati protetta.
    

> **Esempio — Carta di credito**
> 
> Una banca rilascia ai suoi clienti una carta di credito con la quale è possibile effettuare il pagamento degli acquisti e, presso uno sportello, effettuare di prelievo di contanti, visualizzare il saldo e l'estratto conto. Il sistema deve garantire un tempo di risposta inferiore al minuto, deve essere sviluppato su architettura X86 e deve essere disponibile a persone portatori di Handicap. Le operazioni di pagamento possono essere fatte entro un limite massimo mensile e quelle allo sportello richiedono una autenticazione tramite un codice segreto memorizzato sulla carta. Il sistema deve essere facilmente espandibile e adattabile alle future esigenze bancarie.
> 
> Già nella descrizione del progetto possiamo evidenziare la differenza tra requisiti funzionali, non funzionali e di dominio: i requisiti funzionali riguardano le funzionalità (pagamenti, prelievi, saldo, estratto conto), i requisiti non funzionali i vincoli operativi (tempo di risposta, architettura X86, accessibilità per portatori di handicap, espandibilità), i requisiti di dominio le regole specifiche del settore (autenticazione con codice segreto, limiti mensili).

Una seconda classificazione è chiamata **modello FURPS** (del 1987), ottenuto come acronimo di:

- **Functionality:** caratteristiche e capacità del programma, funzioni fornite, sicurezza dell'intero sistema;
- **Usability** (funzionalità): legata alla semplicità di apprendimento e utilizzo del sistema da parte degli utenti (convenzioni per le interfacce utenti; organizzazione dell'Help in linea; tipologia e livello della manualistica);
- **Reliability** (affidabilità): il sistema deve garantire nel tempo le funzioni richieste per un determinato range di situazioni e fornire risposte sempre corrette (frequenza e severità delle failure, accuratezza degli output, capacità di recupero dalle failure, predicibilità del programma);
- **Performance** (prestazione): sono i requisiti legati al tempo di risposta del sistema, cioè la velocità nel fornire i risultati, la quantità di risorse utilizzate, il throughput e quindi l'efficienza;
- **Supportability** (supportabilità): l'adattabilità del sistema alle modifiche che devono essere apportate durante il suo esercizio (manutenibilità, estendibilità, adattabilità, compatibilità e configurabilità).

A questi vanno aggiunti i vincoli (o pseudorequisiti):

- implementazione: vincoli sull'implementazione del sistema, incluso l'uso di tool specifici, linguaggi di programmazione, o piattaforme hardware;
- interfacce: vincoli imposti da sistemi esterni, incluso sistemi legacy e formati di cambio;
- operazioni: vincoli sull'amministrazione e sulla gestione del sistema;
- packaging: vincoli sulla consegna del sistema (vincoli sui mezzi di installazione);
- legali: riguardano licenze, regolamentazioni e certificazioni.

### I requisiti: l'anello debole dello sviluppo software

Un celebre studio effettuato dallo Standish Group su un campione di 8000 progetti riporta risultati sconfortanti: 16% di successi, 53% di fallimenti parziali (gravi problemi sulla funzionalità, sui costi e/o sui tempi), 31% di fallimenti completi (progetto cancellato).

Se si analizzano nel dettaglio le motivazioni per le quali i progetti falliscono, tra i primi otto fattori ne individuiamo cinque relativi a problemi connessi con i requisiti: requisiti incompleti, mancato coinvolgimento dell'utente, attese irrealistiche, cambiamento dei requisiti in corso d'opera, progetto cancellato perché non più utile.

|Motivo del fallimento|Percentuale|
|---|---|
|Requisiti incompleti|13,1|
|Mancato coinvolgimento dell'utente|12,4|
|Mancanza di risorse|10,6|
|Attese irrealistiche|9,9|
|Mancanza del supporto della direzione|9,3|
|Cambiamento dei requisiti|8,7|
|Mancanza di pianificazione|8,1|
|Non serviva più|7,5|

L'intero ambito dei rapporti tra i progettisti di sistemi e i loro clienti risulta essere la causa prevalente del fallimento di un progetto software (51,6% sull'80% delle principali cause).

La maggior parte delle volte il fallimento del sistema viene "scoperto" solo alla messa in opera del sistema, individuando una non conformità rispetto ai requisiti attesi o concordati che ne determina la mancata accettazione del prodotto da parte del committente: solo in questo momento emergono i conflitti di interpretazione che incrinano i rapporti tra le parti.

Le principali cause che determinano questo ritardo nell'individuazione del problema sono:

- insufficiente azione di interazione e discussione tra gli attori coinvolti;
- insufficiente individuazione dei conflitti tra requisiti, sempre presenti in ogni progetto;
- mancato coinvolgimento degli utenti nella verifica dei requisiti individuati dagli analisti;
- mancato coinvolgimento degli utenti nell'esprimere feedback sulle ipotesi prospettate dai progettisti;
- insufficiente controllo sull'evoluzione dei requisiti durante l'intero ciclo di vita del sistema;
- rinvio della presa in carico del nuovo requisito sopraggiunto in corso d'opera a una release successiva;
- mancato accordo sui contenuti e/o i costi e/o i tempi durante la rinegoziazione per l'aggiunta di un requisito sopraggiunto in corso d'opera.

È importante introdurre una metodologia di specifica da utilizzarsi in tutte le fasi di analisi: la raccolta dei requisiti deve necessariamente essere fatta prima che i progettisti inizino a proporre qualche soluzione, in quanto sono essenziali sia durante la fase di realizzazione che dopo che il sistema è stato realizzato, cioè durante la fase di collaudo.

Negli ultimi anni sono nati strumenti dedicati alla gestione dei requisiti (requirements management tools), che verranno trattati nella prossima Lezione.

---

### Verifica di fine Lezione 1

#### Verifica... le conoscenze — Scelta multipla

1. Quale tra i seguenti non è un requisito utente? a) Requisiti funzionali b) Requisiti utente c) Requisiti di sistema d) Requisiti non funzionali e) Requisiti di dominio
    
2. Quali tra i seguenti requisiti non appartiene al primo livello della classificazione di Sommerville? a) Di prodotto b) Di sistema c) Esterni d) Organizzativi
    
3. Una classificazione che viene chiamata modello FURPS è ottenuta come acronimo di: (Indica quello errato) a) Usability b) Functionality c) Reliability d) Portability e) Supportability
    

#### Verifica... le competenze

Date le seguenti situazioni, si richiede di individuare ogni tipo di requisito e per i requisiti non funzionali di predisporre una tabella per la valutazione quantitativa.

1. Si deve realizzare un software per la gestione di un telefono cellulare, in particolare per poter inserire un testo in due circostanze: 1) composizione di SMS; 2) immissione nuovo nome/numero in rubrica. Esistono delle regole generali che disciplinano l'immissione del testo, per esempio: come si cambia fra maiuscole e minuscole, come si attiva/disattiva la modalità T9. Gli SMS devono essere raggruppati per destinatario (sia quelli spediti che quelli ricevuti) e ricercati anche in base al giorno di trasmissione/ricezione. La rubrica deve permettere l'immissione di più numeri per lo stesso nominativo, indicando per ciascuno di essi il gestore telefonico e il numero di minuti di conversazione effettuata. L'accesso alla rubrica deve essere protetto da password.
    
2. Si deve realizzare un sistema per la gestione di un ufficio postale: descrivilo in termini di un insieme composto da due moduli funzionali (Posta e Banca) e per ciascuno di essi indica: i servizi che offre agli utenti, la modalità con cui gli utenti possono usufruirne. Individua le possibili interazioni tra i due moduli, e poi considera la possibilità di usare parte di tali servizi tramite Web: identifica quali funzionalità possono essere comuni e quali limitazioni devono essere definite.
    
3. Si deve realizzare un sistema per un ristorante per gestire i clienti, i tavoli (con il relativo numero di posti), le prenotazioni (effettuate dai clienti per un certo giorno e ora, e per un certo numero di persone). Alle prenotazioni vengono assegnati uno o più tavoli (divisi in fumatori/non fumatori), i camerieri (che servono i clienti al tavolo) e il conto (composto dalle singole portate ordinate). Dei clienti interessano il nome e il numero di telefono, mentre dei camerieri interessano, nome e anni di servizio. Ogni portata ha un suo costo unitario previsto dal listino e al cliente viene presentato il conto dove vengono indicate le singole portate col loro nome, il prezzo unitario e la quantità ordinata che permette di calcolare il totale per portata e il conto totale da pagare.
    
4. Si deve realizzare un sistema software per una azienda costituita da diversi dipartimenti dove sono addetti un certo numero di impiegati con mansioni differenti: ogni impiegato è in forza solo a uno specifico dipartimento, e di lui sono memorizzati i dati anagrafici e gli stipendi percepiti. Ogni dipartimento ha un suo nome, un direttore, un numero di telefono, la data di afferenza di ognuno degli impiegati che vi lavorano per poter calcolare i costi mensili, in termini di risorse umane. Gli impiegati partecipano inoltre a vari progetti aziendali, dei quali viene indicato il nome e il budget: in questo caso lo stipendio non è a carico del dipartimento ma del progetto.
    
5. Si vuole progettare un sistema per la gestione di un campionato di calcio. Il sistema deve consentire la creazione del calendario delle partite e la designazione degli arbitri, con codice fiscale, nome, cognome e città di nascita. Il calendario è composto da un certo numero X di gironi, ognuno dei quali è composto da Y giornate, a loro volta composte da partite tra K squadre. Delle partite interessano il numero progressivo in schedina, la data, l'arbitro designato, le squadre (casa e ospite) e il risultato finale (che l'arbitro avrà il compito di memorizzare nel sistema, a fine gara, tramite un SMS). Ogni squadra ha un proprio dirigente e un allenatore che decide quali giocatori convocare per le varie partite: le squadre sono individuate da un nome, dalla città e regione di provenienza. Il sistema deve anche gestire la classifica generale e dei marcatori, consultabile da Internet sia con un PC sia mediante uno smartphone.
    

---

## Lezione 2 — Raccolta e analisi dei requisiti

**In questa lezione impareremo:**

- la fase di esplorazione
- le tecniche di esplorazione

### Premessa

Per poter effettuare la stesura del documento SRS (Specifica dei Requisiti Software) è necessario effettuare la raccolta dei requisiti (Products Requirements) e la loro analisi.

Abbiamo visto che queste due fasi rientrano nella ingegneria dei requisiti (Requirements Engineering), che possiamo ricordare come una sequenza di quattro attività:

- raccolta dei requisiti;
- analisi dei requisiti;
- stesura della documentazione dei requisiti SRS;
- verifica e approvazione dei requisiti.

La raccolta dei requisiti è considerata l'attività più difficile, perché richiede la collaborazione tra più gruppi di partecipanti con differenti background.

> "The most difficult part of building a software system is to decide, precisely, what must be built. No other part of the work can undermine so badly the resulting software if not done correctly. No other part is so difficult to fix later." (Fred Brooks)

In questa Lezione ci occuperemo dei primi due punti, cioè della raccolta e dall'analisi dei requisiti, che prende anche il nome di fase di esplorazione.

### Tipi di raccolta dei requisiti

A seconda del tipo di progetto la raccolta di requisiti degli attori potrebbe essere integrata da altre analisi; sostanzialmente abbiamo tre tipi di realizzazione:

1. **greenfield engineering:** questa è la situazione in cui lo sviluppo parte da zero e nella azienda non esiste un precedente sistema da sostituire o integrare: la "fonte" dei requisiti è l'azienda committente, nella figura del cliente e degli stakeholder (attori); lo sviluppatore, però, deve anche valutare e ricercare la disponibilità sul mercato di un prodotto in grado di soddisfare le esigenze individuate da confrontare e/o proporre in alternativa allo sviluppo ex novo;
    
2. **re-engineering:** in questa situazione esiste già nella azienda un sistema che deve essere riprogettato perché tecnologicamente obsoleto rispetto alle nuove tecnologie o per estendere le funzionalità del sistema: l'analisi del sistema esistente è alla base del nuovo progetto perché si possono analizzare i suoi pregi e difetti, possono essere evidenziate le funzionalità che devono "migrare" nel nuovo sistema e possono essere valutate, per migliorare quelle che non soddisfacevano gli utenti, e integrate con le nuove esigenze e con le nuove possibilità offerte dalla tecnologia;
    
3. **interface engineering:** è questa la situazione dove si è nella impossibilità di sostituire completamente il software esistente ma si deve adeguare almeno l'interfaccia utente con i nuovi ambienti operativi: le funzionalità non sono "toccate" e quindi non è necessario raccogliere nuovi requisiti perché rimane inalterato nello "strato inferiore" il sistema legacy con i suoi servizi che vengono interfacciati con il nuovo ambiente, riprogettando semplicemente le interfacce.
    

> **Sistema legacy** — Il termine inglese legacy è utilizzato per indicare qualcosa di valore ottenuto attraverso un'eredità. Associato a un sistema informativo, pertanto, il termine legacy ne evidenzia le caratteristiche di "valore aziendale" e di "provenienza dal passato". Nell'ambito dei sistemi informativi il termine legacy non sta a indicare qualcosa di vecchio ma, al contrario, uno strumento su cui l'azienda fa affidamento anche per il futuro: la convivenza fra questi sistemi e quelli realizzati con nuovi paradigmi e tecnologie è un dato imprescindibile.

> **Esempio — Comune di XYZ**
> 
> Il Comune di XYZ intende automatizzare la gestione delle informazioni relative alle contravvenzioni elevate sul suo territorio. In particolare, intende dotare ogni vigile di un dispositivo palmare che gli consenta di comunicare al sistema informatico il veicolo a cui è stata comminata la contravvenzione, il luogo in cui è stata elevata e la natura dell'infrazione. Il sistema informatico provvederà a notificare, tramite posta ordinaria, la contravvenzione al cittadino interessato. Il Comune bandisce una gara per la realizzazione e manutenzione del sistema, che viene vinta dalla Ditta ABC.
> 
> Quali sono gli attori coinvolti in questa applicazione software?
> 
> - Committente: Comune di XYZ
> - Esperto del domino: funzionario del Comune, o altro professionista designato, esperto del Codice della Strada
> - Utenti finali: vigili
> - Progettista // personale della ditta ABC
> - Analista
> - Programmatore
> - Manutentore

### La fase di esplorazione

La raccolta dei requisiti è anche detta **fase di esplorazione** in quanto il problema da risolvere deve essere proprio esplorato, cioè "sviscerato" in ogni sua minima componente, analizzato e affrontato in ogni suo minimo aspetto per individuare tutti i bisogni e definirne le priorità.

La letteratura anglosassone attribuisce a questa fase i termini elicitation o discovery, cioè elicitazione e scoperta, poiché spesso i requisiti vengono "scoperti" in quanto sono difficili da essere individuati.

Per poter produrre il documento dei requisiti è necessario raccogliere il maggior numero possibile d'informazioni sugli obiettivi e sulle necessità riguardo al sistema da costruire, e quindi procedere con l'esplorazione del sistema.

- Il primo passo della fase di esplorazione è quello di esaminare le richieste del committente, cioè colui che ha richiesto lo sviluppo del progetto, che ha approvato e sottoscritto il preventivo ed è di fatto il principale referente (cliente).
- Il secondo passo della fase di esplorazione consiste nella definizione degli stakeholder (attori), cioè di tutti coloro che, in un modo o nell'altro, hanno qualche interesse nel prodotto, o la cui attività sarà influenzata, direttamente o indirettamente, da esso: si procede con il loro coinvolgimento (engagement) al progetto.

#### Lo stakeholder engagement

Engagement è un sostantivo che significa coinvolgimento, ma allo stesso tempo richiama al concetto del "dedicarsi, occuparsi", nel senso che gli interlocutori coinvolti nello sviluppo partecipano attivamente al processo.

Gli ingegneri del software devono avviare un processo di dialogo con gli attori che inneschi una comunicazione interattiva in modo da confrontare reciprocamente le diverse aspettative di ciascuno di loro per impostare o rivedere politiche e strategie dell'impresa, integrando eventualmente quello che emerge da questa attività: spesso il punto di vista dei dipendenti è diverso da quello della azienda e frequentemente solo chi operativamente esegue determinate attività è a conoscenza di particolari criticità.

È importante dare a questa fase il giusto peso, senza sottovalutarne l'importanza: coinvolgere vuol dire comunicare interattivamente, confrontarsi, dialogare, saper ascoltare, prendere degli impegni verso gli attori e non significa fare dei sondaggi, proporre soluzioni, comunicare delle scelte fatte da altri. Gli attori devono sentirsi "importanti" per la realizzazione del progetto (come, di fatto, lo sono) e devono far parte a tutti gli effetti del gruppo di lavoro.

È però anche importante individuare criteri di selezione che garantiscano la rappresentatività e inclusività degli stakeholder affinché il processo porti a risultati utili alla definizione dei requisiti e quindi al successivo sviluppo del progetto.

La raccolta dei requisiti dagli stakeholder viene anche chiamata **requirements elicitation**.

È necessario conoscere tutti i "punti di vista" (viewpoint), cioè analizzare il sistema dalle prospettive di tutti i possibili suoi utilizzatori e/o componenti che possono interagire con esso per individuarne tutti i requisiti e comprendere come questi possono essere realizzati.

### Tecniche di esplorazione

La tabella seguente riporta le tecniche principali che possono essere utilizzate nella fase di esplorazione per la raccolta dei requisiti.

|Strumenti|Obiettivi|Vantaggi|Svantaggi|
|---|---|---|---|
|Interviste individuali|Esplorare determinati aspetti del problema e determinati punti di vista.|L'intervistatore può controllare il corso dell'intervista, orientandola verso quei temi sui quali l'intervistato è in grado di fornire i contributi più utili.|Richiedono molto tempo. Gli intervistati potrebbero evitare di esprimersi con franchezza su alcuni aspetti delicati.|
|Focus group|Mettere a fuoco un determinato argomento, sul quale possono esserci diversi punti di vista.|Fanno emergere le aree di consenso e di conflitto. Possono far emergere soluzioni condivise dal gruppo.|La loro conduzione richiede esperienza. Possono emergere figure dominanti che monopolizzano la discussione.|
|Osservazioni sul campo|Comprendere il contesto delle attività dell'utente.|Permettono di ottenere una consapevolezza sull'uso reale del prodotto che le altre tecniche non danno.|Possono essere difficili da effettuare e richiedere molto tempo e risorse.|
|Suggerimenti spontanei degli utenti|Individuare specifiche necessità di miglioramento di un prodotto.|Hanno bassi costi di raccolta. Possono essere molto specifici.|Hanno normalmente carattere episodico.|
|Questionari|Rispondere a domande specifiche.|Si possono raggiungere molte persone con poco sforzo.|Vanno progettati con grande accuratezza, in caso contrario le risposte potrebbero risultare poco informative. Il tasso di risposta può essere basso.|
|Analisi della concorrenza e delle best practice|Individuare le soluzioni migliori adottate nel settore di interesse.|Evitare di "reinventare la ruota" e ottenere vantaggio competitivo.|L'analisi di solito è costosa (tempo e risorse).|
|Scenari e casi d'uso|Descrivere ogni singola operazione che il sistema deve effettuare.|Sono poi utilizzati in fase di collaudo per verificare le funzionalità del sistema.|Gli intervistati spesso non sono in grado di descrivere le criticità.|

#### Interviste individuali

La migliore fonte per reperire i requisiti è quella delle interviste individuali.

L'indagine inizia con l'intervista al cliente/committente che è il maggior referente del progetto (anche perché "è lui che paga") e quindi ha chiari gli obiettivi che devono essere perseguiti e i tempi di realizzazione del sistema.

Sarà inoltre il cliente stesso a indicare al team di analisi gli stakeholder più significativi per ogni categoria di personale, con i quali procedere con le interviste: sarà sempre lui che, alla fine della stesura del documento, verrà coinvolto nella revisione e validazione.

Più persone vengono intervistate e più possibilità ci sono di avere nuove indicazioni utili ma anche di ottenere suggerimenti contraddittori, dato che ciascuno osserva un requisito solo dal proprio punto di vista e lo esprime in termini diversi: è essenziale valutare caso per caso le persone intervistare e selezionarle in modo opportuno, dopo averle suddivise in gruppi omogenei di utenti.

> **Esempio — Modalità di individuazione degli attori**
> 
> L'individuazione degli attori può essere fatta avvalendosi del seguente campione di domande:
> 
> - Chi o cosa usa il sistema? Che compito svolge?
> - Chi ottiene informazioni dal sistema e a chi ne fornisce?
> - Quali gruppi di utenti eseguono le principali funzioni del sistema?
> - Quali gruppi di utenti eseguono le funzioni secondarie, come la manutenzione e l'amministrazione?
> - Sono presenti funzioni o azioni che vengono eseguite a intervalli prestabiliti?
> - Sono presenti funzioni svolte da una sola persona?
> - Quali sono i dipendenti che da più anni sono nella organizzazione?
> - Chi sono gli attori esterni all'organizzazione che interagiscono con essa?
> - Con quale sistema hardware o software il sistema interagisce?

##### Strutturazione delle interviste

È possibile effettuare interviste con diversi livelli di strutturazione.

**A) Interviste non strutturate:** sono dei dialoghi dove l'intervistatore pone un insieme di domande aperte prestabilite allo stakeholder e dalle risposte può prendere spunti per avviare una indagine approfondita su eventuali nuovi requisiti o aspetti diversi di operazioni già individuate.

> **Esempio — Domande da effettuare agli stakeholder**
> 
> Il colloquio può iniziare semplicemente con una sequenza di domande del tipo:
> 
> - Quali sono le attività che svolgi regolarmente?
> - Descrivi il flusso normale delle tue attività.
> - Descrivi cosa può andar male nell'esecuzione del flusso normale.
> - Cosa non funziona nel sistema attuale?
> - Come intendi utilizzare il sistema?
> - Come credi che il sistema debba essere utilizzato?
> - Cosa ti aspetti quando il sistema parte?
> - …

**B) Interviste strutturate:** sono simili ai questionari (che tratteremo in seguito) ma sono somministrati verbalmente dall'intervistatore e consistono in un insieme di domande specifiche su di una particolare funzione o requisito che è già stato individuato ma richiede una indagine su tutti i possibili utilizzatori. Proprio per la loro natura strutturata sono utilizzate per ricavarne dati statistici facilmente interpretabili.

**C) Interviste semi-strutturate:** sono una via di mezzo delle prime due, cioè sono interviste che contengono sia risposte aperte che domande specifiche a risposta chiusa.

Non è semplice condurre una buona intervista: un fattore importante è l'esperienza dell'intervistatore che deve avere ottime capacità di relazione e deve essere in grado di mettere l'intervistato a proprio agio, garantirne l'anonimato delle risposte, parlare con lo stesso linguaggio dell'intervistato, senza suggerire le soluzioni ma cercando di individuare i requisiti.

La maggior difficoltà è quella di individuare i requisiti impliciti che le persone considerano ovvi, e quindi non evidenziano nel colloquio poiché spesso rivelano come le operazioni dovrebbero essere svolte "in teoria" e non come sono svolte "in pratica".

#### Questionari

I questionari sono il metodo più semplice per ottenere con bassi costi delle informazioni in forma strutturata facilmente elaborabili in modo automatico per ottenere delle statistiche. Sono composti da un insieme di domande alle quali gli utenti rispondono scegliendo una risposta tra le cinque proposte: completamente d'accordo, d'accordo, incerto, in disaccordo, in completo disaccordo (scala di Likert).

A ciascuna risposta è associato un numero compreso fra 1 e 5 e con questi valori si potrà calcolare la media delle risposte a ciascun gruppo di affermazioni correlate a uno stesso argomento.

Possono essere utilizzati solo in fase di consuntivazione per ottenere un giudizio sul sistema appena realizzato, prima della sua messa in funzione, anche perché sono facilmente realizzabili e somministrabili a tutti gli utenti (esistono software che realizzano questionari da sottoporre online producendo direttamente i risultati).

L'attendibilità delle risposte, però, generalmente è bassa.

#### Focus group

I focus group sono interviste di gruppo che vengono gestite sul modello dei brainstorming partendo con l'analisi di un singolo argomento e cercando di far esprimere tutti i partecipanti in modo da ricercare gli elementi di condivisione e di contrasto.

Il mediatore deve essere in grado di gestire il gruppo, soprattutto nei casi di divergenza di opinioni, facendo in modo che la discussione non degeneri in lite e annotando ogni osservazione utile per la definizione e/o puntualizzazione dei requisiti.

#### Osservazioni sul campo

L'osservazione sul campo consiste nell'affiancare l'utente nelle sue operazioni quotidiane per visionare direttamente quali operazioni svolge nella attività quotidiana: spesso l'attore fatica a descrivere il proprio lavoro, soprattutto se questo utilizza strumenti software dei quali non ha particolari conoscenze tecniche ma solo operative.

Spesso l'utente non è in grado di evidenziare le criticità delle sue funzioni e quindi l'analisi congiunta "sul campo" con il responsabile dello sviluppo permette di scoprire dettagli importanti per la definizione dei requisiti.

È una attività molto onerosa, che richiede parecchio tempo e una conoscenza preventiva delle singole attività per individuare quando è più significativo effettuare l'osservazione; inoltre vengono osservate le funzioni "già presenti" e quindi difficilmente permette di individuare nuove funzioni che potrebbero migliorare il lavoro.

#### Suggerimenti spontanei degli utenti

Gli utenti suggeriscono come il prodotto deve essere realizzato anche nella fase delle interviste, inoltre possono ulteriormente contribuire fornendo indicazioni su appositi forum che vengono aperti sul Web contestualmente all'inizio della attività di sviluppo: gli utenti segnalano spontaneamente miglioramenti desiderabili e condividono o meno i suggerimenti proposti dagli altri utenti.

#### Analisi della concorrenza e delle best practice

Tra le attività svolte nella fase di esplorazione dei requisiti è di fondamentale importanza il confronto con prodotti concorrenti simili già presenti sul mercato per "attingere" dalle best practice qualche indicazione preziosa, nonché compararne i prezzi, i punti di forza e riconoscere i punti di debolezza.

> **Best practice** — Il termine di best practice rientra nel più ampio processo di benchmarking: metodo di confronto finalizzato a identificare, comprendere e adattare pratiche particolarmente significative (riconosciute come best practice o high performance) messe in atto da altre organizzazioni, al fine di migliorare le prestazioni della propria attività.

Questa operazione è particolarmente difficile da effettuarsi nelle situazioni di sviluppo ad hoc altamente specializzato dove è difficile, se non impossibile, trovare altre realizzazioni già implementate: in generale, però, parte del sistema da sviluppare lo si può trovare già realizzato e quindi da queste realizzazioni si possono trarre preziose indicazioni.

La ricerca di soluzioni già esistenti o simili deve essere fatta all'inizio del progetto, non appena sono definiti gli obiettivi essenziali; è importante anche sottoporre le soluzioni adottate da terzi agli stakeholder in modo che possano valutarle e commentarle per verificare la loro possibile integrazione nel nuovo sistema e la loro applicabilità nel contesto corrente.

#### Casi d'uso

Sono la descrizione degli esempi d'uso del sistema, cioè delle singole operazioni e attività che devono essere implementate nel sistema; per ciascun caso d'uso viene specificata la normale sequenza di eventi necessaria per compiere quell'operazione e le eventuali sequenze di eventi alternative in caso di errore per le situazioni non previste o per i "casi limite di funzionamento".

Per la loro importanza, che non si limita alla fase di analisi dato che i casi d'uso sono una componente fondamentale dalla fase di verifica e collaudo del sistema, verranno trattati dettagliatamente nella prossima Lezione, a loro riservata.

### Problemi nella fase di esplorazione

Il primo problema che si incontra nella definizione dei requisiti è che spesso l'utente confonde i desideri con i requisiti e li considera entrambi come reali bisogni.

Il secondo problema è quello della comunicazione tra gli interlocutori e la comprensione delle reali necessità: la metafora più comune in questo senso è quella conosciuta come best practice metafora dell'altalena, che aiuta a comprendere perché le parole (influenzate dal gergo) non sono indicate per descrivere il problema.

È chiaro come l'esigenza descritta dal cliente "con sue parole" venga interpretata diversamente da tutti gli interlocutori nelle diverse fasi del ciclo di vita dello sviluppo del prodotto: è interessante infine osservare come lo stesso cliente abbia una diversa percezione di quello che realmente gli serve rispetto a quello di cui "dichiara di avere bisogno".

La difficoltà di comprensione delle esigenze del cliente rende difficile la realizzazione del sistema.

La fase di esplorazione è estremamente delicata e, come abbiamo visto, non sempre è di semplice realizzazione in quanto spesso presenta notevoli difficoltà, che possono essere suddividere in quattro tipologie.

1. **Problemi di ambito:** durante le interviste è difficile individuare il livello di dettaglio e di approfondimento che deve essere rispettato, rischiando da una parte di non entrare abbastanza nello specifico e tralasciare magari aspetti e dettagli che invece sono di importanza essenziale nell'impostazione del sistema, oppure di "sconfinare" in aree esterne a quelle specifiche di competenza dello stakeholder interrogato delle quali ha solo una conoscenza parziale e quindi potrebbe esprimere valutazioni dannose.
    
2. **Problemi di comprensione:** la difficoltà di comunicazione è stata già più volte sottolineata ed è dovuta dal fatto che gli stakeholder utilizzano un linguaggio tecnico differente da chi raccoglie i requisiti e tende a non dare il giusto peso e la corretta importanza alle attività che svolgono, trascurando gli aspetti che ritengono ovvi e limitandosi a descriverle superficialmente. Va sempre tenuto presente che gli stakeholder non sono esperti di informatica e spesso le loro richieste sono di difficile realizzazione oppure potrebbero avere costi elevati non contemplati dal budget del cliente.
    
3. **Problemi di conflitto:** il medesimo requisito può essere descritto in modo differente da stakeholder che appartengono a gruppi diversi e, al limite, le descrizioni potrebbero essere anche incompatibili tra di loro. I conflitti devono emergere in questa fase e devono essere affrontati in modo da trovare una "mediazione" che soddisfi tutti i contendenti.
    
4. **Problemi di volatilità:** i requisiti individuati non rimangono stabili per tutto il ciclo di vita del progetto, anzi, è anche possibile che si evolvano e mutino anche all'interno della singola fase di analisi. Le cause principali di questa dinamicità sono legate a eventi esterni come l'evoluzione tecnologica, i mercati, le leggi e gli obblighi fiscali, oppure a eventi interni, come il ricambio del management o la ristrutturazione dell'organizzazione del committente, acquisizioni o vendite societarie, nuove strategie di mercato, di produzione ecc.
    

È difficile stabilire la correttezza e la completezza dei requisiti, specialmente prima che il sistema venga realizzato e quindi collaudato: dato che la specifica dei requisiti serve come base per lo sviluppo, questi devono essere rivisti con grande attenzione sia dal committente che dal team di progettazione e validati prima che si prosegua con le successive fasi di realizzazione.

---

### Mettiti alla prova — Definizione dei requisiti

Si vuole realizzare un sistema per la gestione di un'agenzia turistica che propone ai clienti viaggi e crociere organizzate da terzi, esegue le operazioni di biglietteria (aerea, navale, ferroviaria) e, su richiesta di un gruppo di almeno 15 persone, progetta viaggi personalizzati.

Il progetto deve sottostare ai seguenti vincoli:

- a) il sistema viene realizzato come installazione sia per la sede dell'agenzia sia per le consultazioni online;
- b) gli impiegati dell'agenzia sono abilitati a effettuare tutte le operazioni (prenotazione, biglietteria, incasso ecc.);
- c) non sono ammessi pagamenti in contanti.

Ti viene richiesto di effettuare la definizione dei requisiti applicando i seguenti punti:

1. individuazione degli stakeholder;
2. specifica dei requisiti utilizzando almeno tre tecniche di esplorazione;
3. classificazione dei singoli casi d'uso, elencando per ciascuno di essi eventuali situazioni particolari, distinguendo le operazioni che possono essere fatte in agenzia (in presenza) da quelle che sono usufruibili online;
4. individuazione di eventuali problemi di conflitto tra le operazioni e/o i requisiti.

---

### Verifica di fine Lezione 2

#### Verifica... le conoscenze — Scelta multipla

1. Quale tra le seguenti non è una attività della ingegneria dei requisiti? a) Raccolta dei requisiti b) Collaudo dei requisiti c) Analisi dei requisiti d) Approvazione dei requisiti e) Stesura della documentazione dei requisiti srs
    
2. Quale tra le seguenti non è una tipologia di progetto? a) Greenfield engineering b) Reverce engineering c) Re-engineering d) Interface engineering
    
3. Quale tra le seguenti tecniche di esplorazione fa emergere aree di conflitto? a) Interviste individuali b) Focus group c) Osservazioni sul campo d) Suggerimenti spontanei degli utenti e) Questionari f) Analisi della concorrenza e delle best practices g) Scenari e casi d'uso
    
4. Quali tra le seguenti tecniche di esplorazione richiedono molto tempo? a) Interviste individuali b) Focus group c) Osservazioni sul campo d) Suggerimenti spontanei degli utenti e) Questionari f) Analisi della concorrenza e delle best practices g) Scenari e casi d'uso
    
5. Quale problemi non sono connessi alla fase di esplorazione? a) Problemi di ambito b) Problemi di conflitto c) Problemi di comprensione d) Problemi di volatilità e) Problemi di sviluppo
    

#### Verifica... le conoscenze — Vero/Falso

1. Se esiste già nella azienda un sistema che deve essere riprogettato si parla di re-engineering.
2. Il termine legacy è utilizzato per indicare qualcosa di valore ottenuto attraverso un'eredità.
3. Nell'ambito dei sistemi informativi il termine legacy sta a indicare qualcosa di vecchio.
4. Con Stakeholder Engagement si intende la scelta degli attori.
5. La raccolta di informazioni dagli stakeholder può essere fatta sotto forma di sondaggio.
6. La migliore fonte per reperire i requisiti è quella della interviste individuali.
7. Agli stakeholder è necessario effettuare interviste strutturate.
8. L'attendibilità delle risposte ai questionari è generalmente buona.
9. I requisiti individuati non rimangono stabili per tutto il ciclo di vita del progetto.
10. I requisiti individuati non possono variare nella fase di analisi.

---

## Lezione 3 — Attori, casi d'uso e scenari

**In questa lezione impareremo:**

- a individuare gli scenari d'uso
- a descrivere i casi d'uso in UML
- a documentare i casi d'uso

### Introduzione

Abbiamo visto come i requisiti funzionali catturano il comportamento atteso del sistema in termini di servizi, compiti e funzioni: la metodologia più semplice che viene utilizzata per rappresentare i requisiti funzionali è quella che si basa sui casi d'uso, utilizzata soprattutto nel modello di sviluppo classico o quella introdotta dalla metodologia agile con la scrittura delle user stories.

Durante la fase di analisi la metodologia classica dei casi d'uso viene utilizzata per catturare il comportamento esterno del sistema da sviluppare, senza dover specificare come tale comportamento viene realizzato, cioè considerando il sistema come una "scatola nera" (black box).

Viene descritto in un diagramma il comportamento, offerto o richiesto, di una funzione desiderata dal sistema, individuando chi (o che cosa) compie l'azione o interagisce col sistema (attore) e che cosa viene fatto (caso d'uso).

In sintesi, due domande ci aiutano in questa fase di progetto:

- chi interagisce con il sistema? => attori;
- cosa fanno? => casi d'uso.

Le user stories dei modelli agili scrivono i requisiti in questa forma:

- situazione (as a): il ruolo dell'attore;
- motivazione (i want): lo scopo del requisito, esigenza e/o funzione desiderata;
- aspettativa (so that): il risultato desiderato, il valore ottenuto.

Descriveremo entrambe le modalità nel dettaglio, sia quella classica che quella agile, dando maggior spazio alla metodologia classica, data la sua maggiore diffusione, ma proporremo anche un esempio di user stories per valutarne l'efficacia.

### Attore (actor)

Con attori si indicano tutte le entità, interne o esterne, che interagiscono con il sistema: queste devono essere in grado di prendere delle decisioni autonome fornendo informazioni in input e/o ricevendo informazione in output; non necessariamente sono "esseri umani" in quanto anche altri sistemi possono interagire con il sistema che si sta progettando e, quindi, anch'essi sono degli attori.

Un attore può quindi essere singolo utente, una classe omogenea di utenti, un "ruolo" che gli utenti possono svolgere, un altro sottosistema, una parte del sistema non ancora sviluppata, un trigger temporale ecc.

> **Attore** — Un attore specifica un ruolo assunto da un utente o altra entità che interagisce con il sistema nell'ambito di un'unità di funzionamento (caso d'uso).

Gli attori eseguono casi d'uso: nella fase di analisi si cercano prima gli attori e per ciascuno di essi si descrivono i singoli casi d'uso.

### Caso d'uso (use case)

Il termine use case viene introdotto da Ivar Jacobson per il metodo Objectory con questo "nuovo nome", ma non è altro che la tecnica consolidata che si basa sullo studio degli scenari di operatività degli utilizzatori di un sistema.

> **Use case** — Un caso d'uso è una sequenza di transazioni in un sistema il cui compito è di conseguire un risultato di valore misurabile per un singolo attore del sistema. (I. Jacobson, 1992).

In altre parole i casi d'uso sono le funzionalità che il sistema mette a disposizione dei suoi utilizzatori, cioè i "modi" in cui il sistema può essere utilizzato, cosa ci si aspetta dall'operatività del sistema ("what?"), i compiti che svolge, i servizi che offre ecc.

Un caso d'uso è avviato da un attore con un particolare obiettivo e si conclude con successo quando l'obiettivo è raggiunto.

Vedremo come viene descritta nel caso d'uso la sequenza di interazioni tra sistema e attori necessaria a realizzare il servizio richiesto anche indicando le possibili sequenze e/o alternative con cui può essere raggiunto l'obiettivo.

Una specifica situazione nell'esecuzione del caso d'uso prende il nome di scenario e la lista completa di tutti i casi d'uso e di tutti gli scenari specifica tutti i differenti modi di usare il sistema.

> **Esempio — Negozio online**
> 
> Descriviamo una generica situazione di un negozio online: a titolo d'esempio elenchiamo alcuni possibili casi d'uso:
> 
> - registrare un nuovo utente;
> - modificare i dati di un utente;
> - acquistare un prodotto;
> - ricercare un prodotto nel catalogo;
> - inserire un nuovo prodotto in catalogo;
> - modificare i dati di un prodotto.
> 
> Ciascuno di questi casi d'uso corrisponde a una precisa funzionalità che un "soggetto" deve eseguire con il nuovo sistema: possiamo individuare in questo esempio quattro diversi attori che devono interagire con il sistema software, cioè l'Utente visitatore, l'Utente registrato, l'Amministratore del sistema e il Sistema bancario, e ciascuno di questi attori eseguirà specifici casi d'uso, anche comuni a più attori.
> 
> In particolare nel nostro esempio avremo:
> 
> - A) l'Utente visitatore: ricercare un prodotto nel catalogo, registrarsi come nuovo cliente
> - B) l'Utente registrato: modificare i dati di un utente, ricercare un prodotto nel catalogo, acquistare un prodotto
> - C) l'Amministratore del sistema: inserire un nuovo prodotto in catalogo, modificare i dati di un prodotto
> - D) Sistema bancario: regolare l'acquisto di un prodotto
> 
> Se un caso d'uso coinvolge più attori, quello che persegue lo scopo che il caso d'uso deve soddisfare sarà considerato l'attore principale: nel nostro esempio nel caso acquistare un prodotto l'Utente registrato è l'attore principale mentre il Sistema bancario è l'attore secondario.

---

### Mettiti alla prova — Casi d'uso / Attori

Dati i seguenti casi d'uso per un sistema di vendita online di biglietti ferroviari: consultare gli orari, prenotare uno o più posti, comperare un biglietto, scrivere un reclamo, viaggiare, aggiornare gli orari; individua gli attori e per ciascuno di essi dettagli gli specifici casi d'uso.

---

### Scenario

Uno scenario rappresenta una particolare interazione tra uno o più attori e il sistema, cioè uno scenario è un'istanza di un caso d'uso.

Uno scenario d'uso è quindi la descrizione che uno specifico attore fornisce, in linguaggio comune, del suo utilizzo del sistema, o meglio, della "sequenza di operazioni" che egli effettua per una possibile situazione di utilizzo del sistema.

Per descrivere completamente un caso d'uso è opportuno individuare i diversi scenari, cioè "i diversi percorsi possibili": non potendo "naturalmente" descrivere tutti gli scenari possibili è necessario almeno individuare i casi più significativi così da poter descrivere al meglio almeno le diverse interazioni che ci possono essere fra più casi d'uso.

Il diagramma dei casi d'uso (use case diagram) è il primo tipo di diagramma a essere creato in un processo o ciclo di sviluppo, nell'ambito dell'analisi dei requisiti dato che serve a modellare i requisiti funzionali di un sistema.

Osserviamo infine che oltre, a descrivere i requisiti d'utente nelle fasi iniziali dell'analisi del sistema, gli scenari vengono anche utilizzati al termine della realizzazione per la validazione dell'architettura durante la fase di collaudo del sistema, per verificarne il "soddisfacimento" dei requisiti.

> **Esempio — Un semplice scenario: negozio online**
> 
> SCENARIO: Acquisto di un prodotto
> 
> Il cliente naviga nel catalogo e raccoglie gli articoli desiderati in un carrello della spesa "virtuale". Quando il cliente desidera pagare, descrive la modalità di spedizione e fornisce la necessaria informazione riguardante la propria carta di credito prima di confermare l'acquisto. Il sistema controlla se la carta di credito è valida e conferma l'acquisto sia immediatamente che con un successivo messaggio di posta elettronica.
> 
> Questo scenario descrive come potrebbero andare le cose, ma se per esempio la carta di credito fosse scaduta la parte terminale dello scenario sarebbe diversa: Il sistema controlla se la carta di credito è valida ed essendo scaduta invia un messaggio di posta elettronica segnalando il problema al cliente.
> 
> Potrebbe esserci un altro problema sempre legato al pagamento, per esempio se il credito non fosse sufficiente, modificando nuovamente la parte terminale dello scenario: Il sistema controlla se la carta di credito è valida ed essendo il credito insufficiente invia un messaggio di posta elettronica segnalando il problema al cliente.

> **Esempio — Negozio online (seguito)**
> 
> Considerando l'esempio precedente del negozio online, il caso d'uso Acquisto di un prodotto ha i seguenti tre scenari corrispondenti a:
> 
> 1. successo della transazione;
> 2. invalidità della carta di credito;
> 3. insufficienza del credito sulla carta.

Uno scenario può anche essere descritto mediante un "dialogo" che rappresenta l'interazione tra gli utilizzatori e il sistema:

- il cliente richiede l'elenco dei prodotti
- il sistema propone i prodotti disponibili
- il cliente sceglie i prodotti che desidera
- il sistema fornisce il costo totale dei prodotti selezionati
- il cliente conferma l'ordine
- il sistema comunica l'accettazione dell'ordine

#### Tipi di scenari

Esistono diversi tipi di scenari:

- **As-is scenario:** serve per descrivere la situazione attuale esistente nell'organizzazione e solitamente viene utilizzato durante il re-engineering: agli utenti viene detto di descrivere il sistema che stanno utilizzando;
- **Visionary scenario:** viene usato principalmente dal committente tipicamente nelle situazioni di greenfield engineering o nel re-engineering per descrivere il sistema futuro o desiderato;
- **Evaluation scenario:** descrive i task che gli utenti dovrebbero svolgere nel sistema per i quali sarà poi valutato (per esempio: emettere un biglietto, prenotare un posto, validare un pagamento ecc.);
- **Training scenario:** è un tutorial che indica passo per passo come un neofita può imparare la corretta interazione con il sistema (per esempio i passi necessari per emettere un biglietto: selezionare lo spettacolo, scegliere l'orario, cercare il posto, cercare la tariffa ecc.).

La definizione degli scenari può essere il primo passo nella definizione dei requisiti che avvicina i progettisti e gli sviluppatori agli stakeholder: la descrizione delle situazioni d'uso concrete è la base su cui lavorare per sviluppare il nuovo prodotto che dovrà soddisfare le esigenze reali, tipiche delle attività di ogni giorno.

La descrizione dettagliata degli scenari con esempi pratici aiuta ogni componente del gruppo di lavoro a comprendere senza pericolo di ambiguità le funzionalità desiderate.

Gli scenari possono essere utilizzati in diverse attività del ciclo di vita del software: come vedremo i casi d'uso saranno fondamentali anche nella fase di verifica e collaudo in quanto il sistema deve implementare tutti i casi d'uso descritti negli scenari.

#### Individuazione degli scenari

L'individuazione degli scenari è sicuramente più difficile da effettuarsi nel caso che il sistema sia da realizzarsi ex novo, cioè se non esiste nella organizzazione: nel caso di greenfield engineering non bisogna aspettarsi che il cliente proponga e descriva gli scenari ma questa operazione deve essere fatta in modo coordinato tra team di sviluppo e cliente usando tecniche evolutive e incrementali.

Si può partire con semplici domande del tipo:

- Quali sono i compiti primari che ciascun attore vuole che esegua il sistema?
- Quali dati saranno creati, memorizzati, modificati, cancellati, o aggiunti dall'utente nel sistema?
- Di quali cambiamenti esterni l'attore deve informare il sistema? Quanto spesso? Quando?
- Di quali cambiamenti o eventi deve essere informato l'attore dal sistema? Entro quanto?

Quindi si riesamina assieme al cliente e agli stakeholder quanto è emerso da una "prima analisi" e si procede successivamente mediante affinamenti successivi: la continua interazione con il cliente aiuta gli analisti che man mano descrivono gli scenari acquisiscono una maggiore conoscenza dei requisiti.

È importante focalizzare l'attenzione sulle funzionalità generate dall'interazione e non dalle attività oppure da come queste vengono svolte all'interno del sistema.

L'individuazione degli scenari è più agevole se il sistema già esiste, cioè nelle situazioni di interface engineering o re-engineering: in questo caso si parte da situazioni esistenti, ed è però necessario insistere sull'osservazione dettagliata delle funzioni per non ignorare particolari che gli stakeholder considerano scontati perché consueti e spesso eseguiti in automatico ma che sono ignoti agli sviluppatori.

### Descrizione dei casi d'uso

Utilizziamo i diagrammi UML per la rappresentazione del caso d'uso: con questi possiamo descrivere i singoli scenari e anche indicare le relazioni esistenti tra essi.

Gli attori sono rappresentati con omini stilizzati e il nome dell'attore viene indicato sotto l'omino, i casi d'uso con ellissi e il loro nome è indicato all'interno dell'ellisse.

Anche se vengono indicati graficamente con degli omini sappiamo che gli attori coinvolti in un caso d'uso possono anche non essere umani: per esempio, se un sistema si interfaccia con un altro mediante una linea telefonica per comunicare o ricevere dati oppure per richiedere un servizio non necessariamente è necessaria la presenza umana. In questo caso nel diagramma al posto del nome dell'attore viene genericamente indicato `<sistema>` per indicare che l'attore non è umano.

Tra un attore e un caso d'uso viene indicata l'associazione mediante un segmento che li congiunge: in questo modo viene indicata una (o più) delle tre possibili situazioni:

- l'attore esegue il caso d'uso;
- l'attore fornisce informazioni al caso d'uso;
- l'attore riceve informazioni dal caso d'uso.

In questo modo si è ottenuto un componente di quello che prende il nome di **Use Case Diagram (UCD)**: l'Use Case Diagram mostra come i casi d'uso sono collegati con gli attori e tra di loro.

La direzione della freccia non specifica la direzione del flusso dei dati e viene messa solamente nei casi in cui possono esserci ambiguità in presenza di più attori per individuare l'attore principale.

### Diagramma di contesto

Un diagramma che rappresenta tutti i casi d'uso di un sistema si chiama **diagramma di contesto** del sistema, perché indica i "confini" dello stesso e tutti gli attori che lo utilizzano.

Il sistema viene indicato con un riquadro che contiene i casi d'uso e ne riporta il nome.

> **Esempio — Centralino e chiamate telefoniche**
> 
> Si vuole realizzare un sistema di gestione delle chiamate telefoniche per un ufficio dove oltre alla linea diretta è presente anche un centralino per chi non conosce il numero degli interni.
> 
> Gli attori in questo sistema sono solamente due, gli utenti e la centralinista, ed elenchiamo i casi d'uso:
> 
> - l'utente effettua una chiamata diretta;
> - la chiamata dell'utente viene accettata;
> - la chiamata dell'utente viene trasferita;
> - l'utente effettua una chiamata indiretta tramite centralinista;
> - il centralinista interrompe una chiamata.

---

### Mettiti alla prova — Diagramma dei casi d'uso

1. Realizza il diagramma dei casi d'uso di un sistema di vendita online dei biglietti del treno.
2. Realizza il diagramma dei casi d'uso di un sistema di prenotazione posti per un concerto.
3. Realizza il diagramma dei casi d'uso di un sistema di vendita dischi vinile e CD, indicando le diverse possibili alternative di spedizione dei prodotti al cliente.

---

### Relazioni tra casi d'uso

Anche nella stesura degli use case si applica la metodologia top-down, partendo da un elenco dove la descrizione è generica e ad alto livello per poi raggiungere mediante affinamenti (e decomposizioni) un livello di dettaglio soddisfacente.

Nel processo di affinamento si possono individuare "segmenti" già "sviluppati" in altri progetti oppure individuare delle relazioni tra più use case e descriverle in modalità grafico nei diagrammi UML.

È possibile riutilizzare gli use case, secondo tre modalità.

**1. Inclusione (inclusion):** questa modalità permette di utilizzare i passi appartenenti a una sequenza di uno use case e inglobarli in un altro use case, cioè serve a rappresentare un caso d'uso che ne utilizza un altro.

Per rappresentare graficamente l'inclusione si traccia una freccia tratteggiata che punta sul caso da cui dipende l'altro caso, con la etichetta `<<include>>`.

La parola include racchiusa tra doppie parentesi formate dai simboli "<<" e ">>" prende il nome di stereotipo: `<<include>>` è uno stereotipo.

> **Esempio — Negozio online (seguito)**
> 
> Nel nostro esempio abbiamo indicato genericamente la funzione Acquista prodotto con la sequenza di operazioni che permettono di effettuare l'acquisto: questa attività è scomponibile in diverse parti, tra le quali sicuramente è presente la fase di Autenticazione, fase che potrebbe anche essere utilizzata in un ulteriore caso d'uso come la Verifica dello stato dell'ordine (da noi non considerata): quindi Autenticazione sarà indicata separatamente in un altro caso d'uso a se stante, e nella descrizione dei casi d'uso che la includono viene indicata col seguente diagramma con stereotipo `<<include>>`.

Un errore tipico è nel posizionamento della freccia, che deve andare dal caso più esterno al caso comune (non viceversa).

**2. Estensione (extension):** tramite questo metodo è possibile creare un nuovo use case semplicemente aggiungendo dei passi a uno use case esistente: in questo modo è possibile integrare l'use case aggiungendo comportamenti alternativi o eccezionali (opzionali) che estendono il caso d'uso generale.

Anche in questo caso si utilizza una linea tratteggiata con una freccia finale insieme con uno stereotipo che mostra la parola `<<extend>>` tra parentesi.

La relazione extend va utilizzata quando abbiamo uno use case simile a un altro che però fa qualcosa in più.

> **Esempio — Negozio online (seguito)**
> 
> Aggiungiamo al nostro negozio online un Help on Line che, per esempio, può essere richiamato durante l'acquisto di un prodotto: la situazione nel diagramma utilizza lo stereotipo `<<extend>>` dalla freccia che parte dall'Help on Line verso Acquista prodotto.

Un errore tipico è nel posizionamento della freccia, che deve andare dal caso variante al caso standard (non viceversa).

È bene osservare una semplice regola per effettuare un utilizzo corretto (e moderato!) delle inclusion ed extension:

- utilizzare include quando si sta ripetendo la descrizione di un comportamento presente già in uno o più differenti use case e il suo utilizzo è sempre richiesto;
- utilizzare extends quando si descrive una variazione al comportamento normale (utilizzo opzionale).

**3. Generalizzazione (generalization):** uno use case può inoltre ereditare le caratteristiche di un altro use case (come nel caso di ereditarietà delle classi nella OOP): lo use case figlio eredita il comportamento e il significato dal padre e in più aggiunge le sue caratteristiche specifiche.

Come per le classi la relazione di ereditarietà deve soddisfare la relazione IS-A, nel caso di use case è possibile applicare lo use case figlio dove è possibile applicare il padre.

La generalizzazione viene rappresentata con una linea continua che ha un triangolo aperto che parte dai figli e punta al padre.

> **Esempio — Negozio online (seguito)**
> 
> Nell'esempio del negozio online potremmo avere due tipi di prodotti, libri e CD: per descrivere che possono essere entrambi delle "specializzazioni" della funzione Acquista prodotto (che è il caso generale) si usa la notazione di generalizzazione con i figli Acquista libro e Acquista CD che puntano al padre Acquista prodotto.

La relazione di generalizzazione può esistere anche tra attori: sempre nell'esempio del negozio online potremmo avere due tipi di clienti, gli utenti privati o le ditte (con partita IVA), che il sistema deve trattare in modo differente (scontrino fiscale per i primi e fattura per i secondi); li rappresentiamo con il diagramma di generalizzazione.

### Documentazione dei casi d'uso

La descrizione dei casi d'uso del sistema costituisce un capitolo molto importante del documento di specifica dei requisiti: a ogni caso d'uso mostrato nel diagramma deve essere associata una descrizione per renderlo comprensibile a tutti coloro che lo devono poi leggere e verificare, tra i quali sono presenti gli stakeholder che non hanno conoscenze informatiche.

Quindi si utilizza il linguaggio naturale in modo semplice e chiaro, in modo da non creare ambiguità. Lo schema adottato da tutti i progettisti è quello riportato di seguito, dove in ogni caso d'uso si descrivono tutti gli scenari, a partire da quello principale che è quello che accade nella grande maggioranza dei casi, detto basic flow o "happy path":

```
NOME DEL CASO D'USO <xyz>
Descrizione              <operazione effettuata>
Scopo                    <sintesi della attività>
Attori                   <descrizione degli attori coinvolti nel caso d'uso>
Attore primario          <se un attore ha prevalenza sugli altri sull'esito del caso d'uso>
Use Case d'extend        <use case che potrebbe seguire a quello corrente>
Scenario principale      <nome dello scenario principale>
1. Entry condition (precondizione):
   <è un vincolo che il sistema deve rispettare affinché il caso d'uso possa iniziare;
    si incomincia con "questo caso d'uso inizia quando…">
2. Flusso di Eventi:
   <descrizione in linguaggio naturale informale>
3. Exit condition (postcondizione):
   <è una condizione che è verificata quando il caso d'uso termina (può essere diversa
    a seconda dello scenario effettivamente seguito): si incomincia con "questo caso d'uso
    termina quando…">
Scenari alternativi       <descrizione delle modalità alternative di esecuzione del caso>
4. Flussi alternativi:
5. Eccezioni:
   <descrizione di cosa accade in tutte le situazioni di errore, cioè quando non va a
    buon fine il caso principale>
Requisiti speciali:       <sono eventuali requisiti non funzionali (cioè non relativi alle funzionalità del sistema
                           nell'assolvere al caso d'uso) e i vincoli>
Extension Points:         <sono relazioni con eventuali altri casi d'uso correlati>
Frequenza stimata di utilizzo: <per decidere le priorità nel piano di sviluppo>
Criticità:                <per stimare il rischio legato al requisito>
Specializza il caso d'uso (opzionale)  <nome del caso d'uso generico del quale il caso d'uso corrente costituisce una specializzazione>
Generalizza il caso d'uso (opzionale)  <nome del caso d'uso specifico del quale il caso d'uso corrente costituisce una generalizzazione>
```

Lo schema descritto è un'interpretazione di quello specificato da Ivar Jacobson, ideatore assieme a Grady Booch e James Rumbaugh dell'UML.

> **Esempio — Descrizione degli scenari del negozio online**
> 
> Vediamo, sempre nell'esempio negozio online, che come scenario principale abbiamo il successo dell'acquisto, mentre gli scenari indesiderati (alternative flows) possono per esempio essere:
> 
> - carta di credito non accettata;
> - disponibilità di credito non sufficiente;
> - collegamento con i servizi interbancari interrotto;
> - disponibilità di un prodotto terminata.
> 
> **NOME DEL CASO D'USO: ACQUISTO DI UNO O PIÙ PRODOTTI**

| Campo               | Valore                                             |
| ------------------- | -------------------------------------------------- |
| Descrizione         | Un utente registrato effettua un acquisto online   |
| Scopo               | Scelta prodotto, aggiornamento carrello, pagamento |
| Attori              | Utente, Sistema bancario                           |
| Attore principale   | Utente                                             |
| Use Case d'extend   | Organizzazione spedizione prodotti, fatturazione   |
| Scenario principale | Acquisto andato a buon fine                        |

> Entry condition: Per poter fare un acquisto online l'utente deve essere registrato.
> 
> Flusso di eventi:
> 
> 1. Il cliente ricerca nel catalogo e inserisce nel carrello uno o più articoli.
> 2. Il cliente va "alla cassa".
> 3. Il sistema presenta il conto degli articoli selezionati.
> 4. Il cliente inserisce le informazioni per la spedizione (indirizzo, tempo di consegna).
> 5. Il sistema fornisce il conto totale, comprese le spese di spedizione.
> 6. Il cliente inserisce le informazioni riguardo la sua carta di credito.
> 7. Il sistema autorizza l'acquisto.
> 8. Il sistema conferma il perfezionamento con successo dell'ordine.
> 9. Il sistema invia una e-mail di conferma dell'acquisto all'indirizzo indicato dal cliente.
> 
> Exit condition: Se il cliente conferma l'ordine esso viene passato al magazzino, se invece l'utente lo annulla il sistema rimane inalterato.
> 
> Scenari alternativi — Flussi alternativi: Nessuno
> 
> Eccezioni:
> 
> - a) Carta di credito non valida: Il sistema al passo 7 del Basic Flow non autorizza l'acquisto. Il sistema avverte l'utente e gli consente di reinserire i dati.
> - b) Credito non sufficiente: Il sistema al passo 7 del Basic Flow non autorizza l'acquisto. Il sistema avverte l'utente del credito esaurito e gli consente di reinserire i dati di una diversa carta di credito.
> - c) Collegamento con i servizi interbancari interrotto: Il sistema salva il carrello dell'utente e lo invita a riprovare a perfezionare l'ordine in seguito.
> - d) altre situazioni
> 
> Requisiti speciali: Il sistema deve garantire che l'inoltro dell'ordine al magazzino avvenga entro le 24 ore successive alla sua conferma. Gli articoli richiesti dagli utenti devono essere presenti in magazzino almeno il 90% delle volte.
> 
> Extension Points: Sistema di consegna della merce
> 
> Frequenza stimata di utilizzo: Un utente al minuto
> 
> Criticità: Tempo di risposta

Alistair Cockburn, autore di un libro sui casi d'uso, dà le seguenti indicazioni:

> "Molti si sentono colpevoli se lo scenario principale di un caso d'uso è breve, così lo allungano per arrivare a quindici, o anche trentacinque righe. Personalmente, io non ho mai scritto uno scenario principale più lungo di nove passi. Non che il nove sia un numero magico; il fatto è che, quando ho individuato i sotto-goal a un giusto livello e ho eliminato i dettagli che riguardano la progettazione, mi restano sempre meno di nove passi. A volte, lo scenario principale di un caso d'uso può essere anche di soli tre passi.
> 
> Il valore maggiore di un caso d'uso non è nello scenario principale, ma nei comportamenti alternativi. Lo scenario principale può occupare da un quarto a un decimo della lunghezza totale di un caso d'uso, perché ci possono essere molte alternative da descrivere. Se lo scenario principale fosse lungo trentacinque passi, l'intero caso d'uso occuperebbe dieci pagine, e sarebbe troppo lungo da leggere e da comprendere. Se lo scenario principale contiene da tre a nove passi, la descrizione complessiva potrebbe essere di solo due o tre pagine, il che è più che sufficiente.
> 
> Se potete evitare di includere troppi dettagli dell'interfaccia utente, i casi d'uso saranno molto più facili da leggere. E i casi d'uso leggibili possono in effetti venire letti. Casi d'uso lunghi e illeggibili vengono soltanto firmati – di solito con sgradevoli conseguenze sul progetto, alcuni mesi più tardi."

### Le user stories del modello agile

Nei modelli agili i requisiti si scrivono mediante le **user stories** che, come abbiamo indicato all'inizio della Lezione, sono composte da tre parti:

1. situazione (as a);
2. motivazione (i want);
3. aspettativa (so that).

> **Esempio** — Una user story di un utente di un sito di prenotazione concerti è la seguente:
> 
> - come appassionato di musica (ruolo)
> - voglio consultare il programma dei concerti (scopo o funzione)
> - per riservarmi un posto (valore ottenuto).

A partire dalla user story che, come possiamo osservare si tratta semplicemente di un caso d'uso "arricchito" con la definizione dei ruoli, si procede con la definizione delle feature che deve avere il prodotto software.

Naturalmente è necessario che ogni step sia analizzato per individuare tutte le possibili situazioni in cui il sistema si può trovare.

Si deve inoltre predisporre per ogni opzione tutti i possibili test che devono essere effettuati.

---

### Esercizi

1–14. [Esercizi su biglietteria ferroviaria, sportello servizi comunali e altri sistemi — consultare il testo originale per i testi completi degli esercizi da pag. 332 a pag. 333.]

---

## Lezione 4 — La documentazione dei requisiti

**In questa lezione impareremo:**

- il documento di Specifica dei Requisiti Software (SRS)
- le caratteristiche e la struttura di un SRS
- la validazione e convalida delle specifiche di un SRS

### Generalità

Il lavoro di individuazione dei requisiti termina con la stesura del documento di **Specifica dei Requisiti Software (SRS)**: questo è un documento ufficiale e descrive quello che è richiesto allo sviluppatore del sistema come risultato del lavoro di analisi tra il cliente, l'utente e lo sviluppatore.

Un errore nell'SRS produrrà errori nel sistema finale: la rimozione di un difetto scoperto dopo il rilascio del sistema può costare fino a 100 volte quella di un difetto individuato in fase di progettazione.

Nel documento SRS deve essere presente una analisi approfondita dell'utente, delle sue reali necessità, l'elenco dei singoli requisiti specificati e completati con i relativi casi d'uso.

Per la buona riuscita dello sviluppo del sistema l'SRS deve essere di alta qualità in quanto questo documento aiuta lo sviluppatore a comprendere il dominio di applicazione, riduce i tempi di sviluppo e fornisce un punto di riferimento per la convalida del prodotto.

Abbiamo quindi tre tipologie di informazioni che devono "emergere" nell'analisi:

- **analisi degli utenti:**
    - a quali categorie di utenti è destinato il prodotto?
    - quali sono le loro caratteristiche e le loro priorità?
- **analisi dei bisogni:**
    - quali sono le necessità di ciascuna categoria di utenti?
    - quali sono prioritari?
- **analisi del contesto d'uso:**
    - quali saranno i diversi contesti d'uso del prodotto da parte delle diverse categorie di utenti?
    - quali sono prioritari?

Nel documento dei requisiti (Requirements Documents), quindi, dopo una parte generale che descrive il sistema e le informazioni sulla richiesta del committente vengono raccolti in modo organizzato i requisiti individuati e su come ha avuto luogo la loro determinazione, e vengono allegati i diagrammi d'uso e le rispettive schede che li descrivono.

Per redigere un efficace documento SRS gli sviluppatori seguono i suggerimenti dello IEEE Std 830-1998 – Recommended Practice for Software Requirements Specifications. Esistono anche altri modi per scrivere SRS di qualità, comunque lo standard IEEE 830-1998 è quello più diffuso ed è quello al quale anche noi faremo riferimento.

### Requirements Documents proposto da Sommerville

Esistono diversi standard che propongono la forma del documento SRS e la metodologia di compilazione: noi descriveremo la proposta di Sommerville che si ispira allo Standard IEEE/ANSI 830-1998.

```
1 Introduzione
  1. Scopo del documento dei requisiti
  2. Scopo del prodotto
  3. Definizione, acronimi ed abbreviazioni (glossario)
  4. Riferimenti
  5. Overview dell'intero documento

2 Descrizione generale
  1. Prospettive sul prodotto
  2. Funzioni del prodotto
  3. Caratteristiche degli utenti
  4. Vincoli generali
  5. Assunzioni e dipendenze

3 Requisiti specifici
  1. Definizione dei Requisiti funzionali (requisiti utente)
  2. Definizione dei Requisiti non funzionali (requisiti utente)
  3. Architettura: strutturazione in sottosistemi a cui riferire i requisiti
  4. Specifiche dei Requisiti di sistema
  5. Modelli del sistema
  6. Evoluzione del sistema

4 Appendici
  1. Individuazione ed eventuale descrizione della piattaforma hardware
  2. Requisiti di DataBase
  3. Piani di Test

5 Indici
```

All'interno del documento vengono utilizzati i seguenti termini IEEE:

- **contratto (Contract):** il documento (legale) stilato tra committente e fornitore (la specifica dei requisiti potrebbe/dovrebbe essere la parte integrante del contratto);
- **committente (Customer):** colui che paga il prodotto che di solito (ma non necessariamente) è colui che decide i requisiti;
- **fornitore (Supplier):** chi produce il prodotto / sviluppa per il committente;
- **utente (User):** la persona che usa e interagisce direttamente col sistema (spesso si identifica col committente).

Per ciascuna funzionalità descritta nella sezione 3.1 devono essere specificati gli input, l'output e l'azione elaborativa. Per le altre componenti del SRS non sono necessarie ulteriori spiegazioni.

Vediamo, in un esempio, come viene effettuata la descrizione di una singola specifica funzionalità (requisito utente) che, come più volte detto, deve rispondere alla seguente domanda: Cosa deve fare il sistema software?

> **Esempio — Negozio online: funzionalità inserimento articolo**
> 
> Descriviamo la funzionalità di inserimento di un articolo nel carrello del negozio online descritto nelle precedenti lezioni:
> 
> **3.x Inserisci articolo nel carrello**
> 
> Utenti della funzionalità: clienti registrati
> 
> Introduzione: la funzionalità consente l'immissione di un nuovo articolo nel carrello di acquisto
> 
> Precondizione: l'utente si è precedentemente autenticato come cliente registrato
> 
> Input:
> 
> - codice articolo: obbligatorio
> - quantità: obbligatorio (di default proposto 1)
> 
> Elaborazione:
> 
> - viene presentata una videata di ricerca degli articoli a più livelli e modalità
> - selezionato un articolo, si visualizza un form per l'immissione dei dati di input
> - viene effettuata la lettura dei dati di input
> - viene verificato che la quantità sia ammissibile
> - viene verificata la disponibilità dell'articolo e eventualmente segnalati i tempi di attesa
> 
> Output:
> 
> - aggiunta di una riga nel carrello
> - segnalazione di errore nel caso di articolo già presente

> **Esempio — Negozio online: funzionalità elenco clienti attivi**
> 
> **3.y Elenco Clienti Attivi**
> 
> Utenti della funzionalità: Titolare
> 
> Introduzione: La funzionalità visualizza la lista dei clienti che hanno effettuato acquisiti nell'ultimo anno con il totale degli acquisti effettuati e con possibilità di stampa. Consente, se richiesto, di selezionare un cliente, di visualizzarne la scheda personale e l'elenco degli articoli acquistati ed eventualmente di stamparla.
> 
> Precondizione: L'utente si è precedentemente autenticato come titolare del negozio.
> 
> Input (tutti facoltativi, ma almeno uno obbligatorio per effettuare la ricerca):
> 
> - Nome titolare, Cognome titolare, Città, Codice Fiscale, P.I.V.A., E-mail (un solo indirizzo)
> 
> Elaborazione: Il sistema presenta una lista con l'elenco dei clienti con la possibilità di ricerca. Selezionando un cliente dalla lista è possibile richiedere la visualizzazione o la stampa della sua scheda riportante tutti i dati anagrafici e contabili del cliente.
> 
> Output: La lista con l'elenco dei clienti, visualizzata a schermo o stampata, riporta per ciascuno di essi: Nome – Cognome – Città – Numero Acquisiti – Data ultimo acquisto – Totale fatturato.

---

### Mettiti alla prova — Documento dei requisiti

Descrivi le seguenti funzionalità:

- inserimento di un cliente con verifica e-mail;
- cancellazione di una voce dal carrello;
- elenco degli articoli, con indicazione delle movimentazioni di carico/scarico.

Il documento completo IEEE830.pdf è disponibile nella cartella Materiali della sezione dedicata a questo volume del sito http://www.hoepliscuola.it.

---

### Realizzare un efficace documento SRS

Il documento SRS riporta in modo corretto e non ambiguo le specifiche dei requisiti del software ma non descrive alcun dettaglio progettuale o implementativo e non impone vincoli addizionali al prodotto software, quali per esempio qualità, oggetto di documenti specifici.

Lo standard IEEE 830-1998 descrive alcune caratteristiche fondamentali di cui un efficace SRS deve essere in possesso, a partire dalla validazione dei requisiti.

### Validazione dei requisiti

Durante il processo di sviluppo i requisiti devono essere continuamente validati da cliente e utenti; la validazione dei requisiti richiede di controllare:

- **correttezza:** un SRS è corretto se, e solo se, il sistema software soddisfa appieno ciascun requisito in esso riportato; una specifica è corretta se rappresenta accuratamente il sistema che il cliente richiede e che gli sviluppatori intendono sviluppare;
    
- **completezza:** una specifica è completa se tutti i possibili scenari per il sistema sono descritti, inclusi i comportamenti eccezionali dovuti a una qualunque combinazione di ingressi (validi o non validi); deve inoltre riportare i riferimenti alle figure, diagrammi e tabelle, la definizione dei termini e delle unità di misure utilizzati;
    
- **consistente:** nessun requisito deve essere in conflitto con altri requisiti;
    
- **coerenza:** i requisiti non devono contraddirsi tra di loro;
    
- **chiarezza:** una specifica è chiara se non è possibile interpretarla in due modi diversi; non possiamo quindi avere ambiguità di descrizione, dovute alla terminologia o semplicemente alla scarsa oppure elevata presenza di dettagli;
    
- **realismo:** la specifica dei requisiti è realistica se può essere implementata tenendo conto dei vincoli presenti nel dominio del sistema;
    
- **modificabilità:** la struttura e lo stile dell'SRS devono essere tali da consentire facili modifiche, preservando consistenza e completezza (un SRS con ridondanze non si modifica facilmente);
    
- **verificabilità:** la specifica dei requisiti è verificabile se, e soltanto se, una volta che il sistema è stato costruito, test ripetuti possono essere delineati per dimostrare che il sistema soddisfa i requisiti. Un requisito è verificato se esiste un procedimento (di costo compatibile) tramite il quale una persona o una macchina può stabilire se il software soddisfa il requisito.
    
    Esempi di requisiti non verificabili:
    
    - il programma deve funzionare bene,
    - il programma dovrebbe avere una buona interfaccia,
    - il tempo di risposta deve essere di norma 10 secondi;
    
    Esempi di requisiti verificabili:
    
    - il tempo di risposta all'evento X deve stare entro 10 secondi;
    - il tempo di risposta all'evento Y deve stare entro 10 secondi nel 60% dei casi;
- **tracciabilità:** la definizione IEEE riporta "se l'origine di ciascun requisito è chiara e può essere referenziata nello sviluppo futuro ogni funzione del sistema deve poter essere individuata e ricondotta al corrispondente requisito funzionale".
    
    È necessario tracciare le dipendenze tra i requisiti e le funzioni del sistema, oltre che per effettuare lo sviluppo di test per poter successivamente introdurre eventuali cambiamenti del sistema.
    
    La tracciabilità può essere realizzata assegnando un numero univoco a ciascun requisito `<tipo-requisito><numero-requisito>` e collegando i requisiti ai vari aspetti del sistema, una volta che anch'essi sono stati catalogati e numerati, mediante una tabella a doppia entrata.
    
    Il documento dei requisiti dovrebbe essere organizzato in modo tale che le modifiche possano essere eseguite senza la riscrittura del documento.
    

#### Tracciabilità di un SRS

Un SRS è tracciabile se:

- è chiara l'origine di ogni requisito (tracciatura all'indietro, ai documenti precedenti);
- ogni requisito ha un nome o un numero (tracciatura in avanti per i requisiti futuri).

### La convalida delle specifiche

La stesura del SRS deve seguire pari passo lo sviluppo del prodotto software dato che generalmente non è possibile specificare tutti i dettagli durante la fase iniziale di raccolta dei requisiti anche perché i requisiti possono cambiare in corso d'opera (sistemi complessi possono avere anche anni come tempi di sviluppo e nel frattempo gli obiettivi/bisogni di una organizzazione possono cambiare).

Anche se la stesura del documento viene realizzata scrupolosamente spesso si commettono errori che, se scoperti in fase avanzata di realizzazione, possono provocare enormi danni (ritardo nello sviluppo e quindi lievitazione dei costi).

I tipi di errori più frequenti sono:

- **requisiti non chiari:** i requisiti sono espressi male o sono state omesse delle informazioni; in questo caso i requisiti devono essere riscritti;
- **informazioni mancanti:** le informazioni mancano dal documento dei requisiti; l'ingegnere dei requisiti deve raccogliere delle altre informazioni;
- **conflitto tra requisiti:** sono presenti contraddizioni fra i vari requisiti oppure tra i requisiti e l'ambiente operativo; una negoziazione con il cliente può aiutare a rimuovere il conflitto;
- **requisiti non realistici:** il cliente dovrebbe essere consultato, i requisiti cancellati, modificati e resi più realistici.

L'individuazione di queste indicazioni viene fatta aiutandosi con una check list che solitamente comprende non più di 10 domande da sottoporre all'utente finale.

> **Esempio di check list per la convalida dei requisiti**
> 
> 1. Sono state definite tutte le risorse hardware?
> 2. È stato specificato il tempo di risposta delle funzioni?
> 3. Sono state specificate tutte le interfacce esterne, hardware, software e relativamente ai dati?
> 4. Sono state specificate tutte le funzioni richieste dall'utente?
> 5. È possibile testare ogni requisito?
> 6. Sono state specificate tutte le risposte a condizioni eccezionali?
> 7. È stato definito lo stato iniziale del sistema?
> 8. Sono state specificate le future possibili modifiche?

Non è semplice individuare gli errori presenti in un documento SRS e a tal fine è importante effettuare frequenti revisioni e ispezioni coinvolgendo sempre un rappresentante di tutti gli attori compreso l'autore del documento, il cliente, un progettista, un esperto di qualità: prima di organizzare le riunioni specifiche è necessario consegnare una copia del documento da analizzare a tutti i partecipanti invitandoli a rivedere il documento prima della riunione per poter segnalare in quella sede eventuali osservazioni.

È anche molto utile far leggere il documento a qualcuno diverso dall'autore per coglierne potenziali problemi di ambiguità o incompletezza (Tecnica di Reading).

Il primo metodo per eliminare gli errori resta comunque sempre quello "di non farli": concludiamo quindi questa trattazione indicando alcuni semplici consigli per ottenere una specifica precisa e priva di ambiguità:

- evitare termini troppo generici o troppo precisi;
- mantenere un livello di astrazione costante;
- riferirsi allo stesso concetto sempre nello stesso modo così da evitare l'uso di sinonimi (termini diversi con il medesimo significato) e omonimi (termini uguali con differenti significati);
- usare frasi brevi e semplici possibilmente uniformandone la struttura;
- dividere il testo in paragrafi e dedicare ogni paragrafo alla descrizione di una specifica entità della realtà modellata, evidenziandola in ogni paragrafo.

---

### Mettiti alla prova — Documento dei requisiti secondo lo standard IEEE 830-1998

In riferimento al sistema negozio online illustrato in precedenza, descrivi le seguenti funzionalità nel documento SRS secondo lo schema proposto dallo standard IEEE 830-1998:

- 3.e Registrazione di un nuovo cliente
- 3.f Cancellazione di un vecchio cliente
- 3.g Variazione dei dati di un nuovo cliente
- 3.h Inserimento di un nuovo articolo in magazzino
- 3.i Eliminazione di un vecchio articolo in magazzino

---

### Verifica di fine Lezione 4

#### Verifica... le competenze

**1. Situazione: biblioteca scolastica**

Il sistema dovrà archiviare i dati di una biblioteca scolastica dove oltre ai libri, ai giornali e alle riviste, è presente una sezione multimediale con video, nastri audio e CD-ROM.

Il sistema dovrà permettere agli utenti di fare delle ricerche per titolo, autore, categoria o codice ISBN mentre il bibliotecario deve poter stampare l'elenco dei ritardi di consegna per poter fare i dovuti solleciti.

Il sistema dovrà riconoscere l'utente attraverso la stessa smart card che lo identifica all'interno della scuola, utilizzata per esempio per rilevare le presenze e i ritardi.

Dopo aver individuato e realizzato i diagrammi dei casi d'uso, descrivi le seguenti funzionalità nel documento SRS secondo lo schema proposto dallo standard IEEE 830-1998:

- 3.m Inserimento di una nuova categoria
- 3.n Cancellazione di un alunno
- 3.o Inserimento di un nuovo libro
- 3.p Elenco dei ritardi di consegna per i libri in base a una data specifica
- 3.q Elenco dei ritardi di consegna per una classe dell'istituto

**2. Situazione: gite scolastiche**

Il sistema richiesto serve per gestire le gite scolastiche e deve essere in grado di memorizzare nuovi itinerari con le seguenti informazioni: destinazione, giorni, tipo, descrizione, numero minimo e massimo di partecipanti, costo, anno di corso, optional.

Possono essere presenti più escursioni/itinerari per la medesima destinazione.

I tipi si distinguono in base alla regione e/o alla nazione di destinazione.

Gli optional riguardano il vitto, se è compreso, escluso, solo cena ecc.

Il sistema deve permettere di prenotare un itinerario da parte di una o più classi, in base al numero richiesto di partecipanti: all'atto della prenotazione devono essere raccolte le autorizzazioni da parte dei genitori per gli alunni minorenni e un acconto pari al 10% dell'importo.

Il sistema deve permettere di modificare/cancellare un itinerario solo se non sono state fatte prenotazioni: deve anche permettere di annullare una escursione prenotata in caso di motivazioni gravi (eventi atmosferici, bellici, motivi didattici ecc.).

Un singolo alunno può rinunciare a una gita portando la documentazione medica: in questo caso il costo totale a saldo deve essere ripartito sul resto della comitiva.

Dopo aver individuato e realizzato i diagrammi dei casi d'uso, descrivi le seguenti funzionalità nel documento SRS secondo lo schema proposto dallo standard IEEE 830-1998:

- 3.k Inserimento di un nuovo itinerario per una vecchia destinazione
- 3.l Inserimento di un nuovo itinerario per una nuova destinazione
- 3.m Cancellazione di un alunno da una gita
- 3.n Stampa del programma di un particolare itinerario scelto in base alla destinazione
- 3.n Elenco delle escursioni per tutte le classi di un anno di corso
- 3.n Elenco delle escursioni effettuate da una classe nei diversi anni

---

## Lezione 5 — Dai requisiti alla scrittura di un buon codice: i principi S.O.L.I.D.

**In questa lezione impareremo:**

- i concetti generali della metodologia Agile
- i principi di progettazione S.O.L.I.D.

### Introduzione

Terminata la raccolta e la specifica dei requisiti, la successiva fase del ciclo di sviluppo del modello classico prevede il progetto del sistema e delle classi.

Nel contesto di pratiche con metodologia Agile lo sviluppo si basa su principi come la collaborazione interfunzionale, l'attenzione al valore per il cliente, la delivery iterativa e incrementale (presto e spesso), il costante aumento della qualità, la limitazione del lavoro in corso (WiP-Work in Progress) e il miglioramento continuo.

I team Agile (denominati spesso team Scrum o team di delivery), che formano il motore alla base del successo degli approcci Agile, sappiamo essere composti da un gruppo stabile di poche persone (7/9 persone): il prodotto non viene realizzato con un unico processo, ma attraverso una serie di cicli di rifinitura (detti "Sprint") che da un lato aggiungono nuove funzioni e dall'altro raffinano quelle esistenti.

Nella realizzazione di uno Sprint è doveroso mettere in pratica i sani principi che stanno alla base della OOP per trarre quindi i vantaggi da concetti come basso accoppiamento, alta coesione e forte incapsulamento.

Per meglio sfruttare questi principi è opportuno che al termine della fase di raccolta e analisi dei requisiti questi vengano osservati proprio da "questo punto di vista", cioè si effettui l'analisi delle dipendenze in quanto una buona gestione delle dipendenze porta a un codice maggiormente flessibile, robusto e riutilizzabile, cioè porta a scrivere delle "buone classi".

Robert C. Martin, conosciuto al mondo come **"Uncle Bob"** (zio Bob), indica i cinque principi di progettazione orientata agli oggetti (OOD) come linee guida per lo sviluppo di software estendibile e mantenibile, focalizzandosi sulla gestione delle dipendenze più che sugli aspetti strettamente legati alla modellazione in sé.

Possiamo scrivere un codice migliore se sfruttiamo i principi di progettazione conosciuti sotto l'acronimo **S.O.L.I.D.**

S.O.L.I.D. è un acronimo ottenuto dai cinque principi di seguito riportati:

|Sigla|Principio|
|---|---|
|SRP|The Single Responsibility Principle|
|OCP|The Open/Closed Principle|
|LSP|The Liskov Substitution Principle|
|ISP|The Interface Segregation Principle|
|DIP|The Dependency Inversion Principle|

Descriveremo sinteticamente questi principi che aiutano soprattutto il programmatore poco esperto a ottenere un codice di qualità che mantenga una forte coesione e un basso accoppiamento tra le entità del sistema: naturalmente si tratta di consigli e non di obblighi e, quindi, questi strumenti devono essere utilizzati in base ai requisiti e agli obiettivi e applicativi.

### S: Single responsibility principle o principio di singola responsabilità

Il principio di singola responsabilità dice che:

> "A class should have one and only one reason to change, meaning that a class should have only one job." "Ogni classe/oggetto si deve focalizzare su una singola responsabilità e deve avere quindi un solo motivo per cambiare."

Quindi ogni elemento di un applicativo software, che sia una classe, un metodo o anche una semplice variabile, deve avere una singola responsabilità, e tale responsabilità deve essere interamente incapsulata dall'elemento stesso.

In altre parole, ogni oggetto deve eseguire una cosa sola: non deve assolutamente offrire servizi non allineati con la sua responsabilità, per "nessun motivo al mondo".

Con responsabilità di una classe intendiamo una caratteristica o una entità del dominio, di particolare importanza nella applicazione: se assegniamo molte responsabilità a una classe abbiamo una maggiore probabilità che in seguito questa debba essere cambiata e più modifiche vengono effettuate su di essa maggiore è la probabilità che si introducano errori nel resto del sistema.

Quindi è ragionevole associare una responsabilità a un solo "motivo per cambiare".

Gli obiettivi che si vogliono perseguire con questo principio sono:

- la realizzazione di oggetti piccoli e concisi: serve a evitare il problema di classi enormi e monolitiche;
- agevolare la testabilità: per un metodo che svolge più di una attività è più difficile scrivere test piuttosto che per un oggetto che ha un'unica funzionalità;
- migliorare la leggibilità: è certamente più facile leggere un codice breve e conciso che non metodi lunghi e articolati;
- favorire il disaccoppiamento: porta a diminuire per quanto possibile l'accoppiamento tra le entità coinvolte in uno o più processi;
- garantire una manutenzione più semplice.

Infine, il benefico generale che si ottiene con la separazione di un programma in piccole parti, ciascuna con la propria responsabilità, è quello di aumentare significativamente il riutilizzo del codice.

Questa idea è applicabile a tutti i diversi livelli del software, a partire da una classe, un metodo, un'interfaccia GUI e così via.

Come verifica di aver rispettato quanto enunciato in questo principio dovete cercare di trovare più di un motivo per cui una classe può cambiare: se lo trovate … allora quella classe ha più di una responsabilità e, quindi, merita di essere "ristrutturata".

### O: Open/closed principle o principio aperto/chiuso

Il principio aperto/chiuso dice che:

> "Objects or entities should be open for extension, but closed for modification." "Il nostro codice deve essere aperto alle estensioni ma chiuso alle modifiche."

Questo principio afferma che un oggetto o un'entità (software) devono essere aperti alle estensioni ma chiusi alle modifiche, cioè deve essere possibile estendere il comportamento di una classe senza modificarne l'implementazione, quindi aggiungere nuove funzionalità ed estendere una classe senza cambiare il suo comportamento interno.

Lo strumento che la OOP mette a disposizione per soddisfare questo principio è l'uso dell'ereditarietà, basandosi sulle classi astratte o interfacce, ovvero sfruttando il concetto di polimorfismo.

In questo modo non c'è limite al numero di implementazioni di ciascuna astrazione senza modificare il codice che già usa queste astrazioni: possiamo in qualunque momento aggiungere nuovi comportamenti a una classe senza essere costretti a ricompilare tutta l'applicazione.

Con questo principio si vuole ridurre la possibilità di introdurre errori alle funzionalità esistenti, in seguito all'aggiunta di altre funzionalità nella classe.

Questo principio deve essere adottato assieme al principio di sostituzione di Liskov.

### L: Liskov substitution principle o principio di sostituzione

La definizione "matematica" del principio di sostituzione di Liskov è la seguente:

> "Let q(x) be a property provable about objects of x of type T. Then q(y) should be provable for objects y of type S where S is a subtype of T." "Se q(x) è una proprietà che si può dimostrare essere valida per oggetti x di tipo T, allora q(y) deve essere valida per oggetti y di tipo S dove S è un sottotipo di T."

Possiamo dare una semplice "traduzione" e interpretazione in "è sempre possibile sostituire un sottotipo col suo supertipo", cioè in una funzione che utilizza un riferimento a una classe base si deve poter utilizzare al suo posto una qualsiasi delle classi derivate, senza conoscerne l'implementazione e senza apportare alcuna modifica.

Quando si affronta lo studio della OOP ci troviamo tutti a riflettere, nella realizzazione delle gerarchie delle classi, sulla fatidica domanda "is-a": ora Liskov, perfeziona questa relazione con una domanda come "può sostituire un" e ponendola come condizione per definire le classi derivate: un oggetto è sostituibile con un altro oggetto in tutte le situazioni, senza nessuna eccezione.

Suggeriamo di prestare particolare attenzione ai concetti di precondizioni e postcondizioni relative al ciclo di vita di una classe e delle classi da essa ereditate: non si deve scrivere una classe base partendo da determinate precondizioni e sapendo di dover pensare come specializzarla in una a essa derivata, ma che ne presenti altre di tutt'altra forma.

> **Liskov** — Il principio prende il nome da Barbara Liskov, che per prima ha descritto il problema nel 1988.

### I: Interface segregation principle o principio di segregazione delle interfacce

Il principio di segregazione delle interfacce dice che:

> "A client should never be forced to implement an interface that it doesn't use or clients shouldn't be forced to depend on methods they do not use." "Un client (più in generale una classe) non dovrebbe dipendere da metodi che non usa, perciò è preferibile che le interfacce siano molte (in linea di principio), piccole e coese."

Quindi è preferibile che in una classe client le interfacce siano molte, specifiche e piccole (composte da pochi metodi), una per ciascun ruolo che l'oggetto stesso gioca nei diversi contesti, piuttosto che poche, generali e grandi: in base a questo principio ciascun client dipende da un insieme minimo di metodi, ovvero quelli appartenenti alle interfacce che effettivamente usa.

La motivazione alla base di questo principio è da ricercare nel fatto che, troppo spesso, una classe è influenzata dal cambiamento di un'interfaccia anche se non la usa: il suo rispetto ne comporta quindi un possibile risparmio di operazioni inutili in occasione della manutenzione del sistema.

### D: Dependency inversion principle o principio di inversione delle dipendenze

Uncle Bob descrive il principio di inversione delle dipendenze come una combinazione del principio aperto/chiuso e del principio di sostituzione di Liskov, e lo definisce così:

> "Entities must depend on abstractions not on concretions. It states that the high level module must not depend on the low level module, but they should depend on abstractions." "I moduli di alto livello non devono dipendere da quelli di basso livello. Entrambi devono dipendere da astrazioni; le astrazioni non devono dipendere dai dettagli."

Anche se, cronologicamente, questo è il quinto principio, cioè l'ultimo, per importanza è sicuramente il primo: "sono i dettagli che dipendono dalle astrazioni, non viceversa".

Una classe di un alto livello non deve dipendere dall'implementazione di classi o entità di un livello inferiore: non bisogna progettare le classi pensando alle implementazioni ma concentrandosi solo sulle interfacce.

Le conseguenze principali di questo principio sono di avere un basso accoppiamento tra i livelli dell'architettura, ma di poter sostituire automaticamente l'implementazione di un livello inferiore, senza pregiudicare il funzionamento di quelli superiori.

In tale modo le classi dipendono da astrazioni piuttosto che da implementazioni concrete.

### Conclusione

I principi di progettazione Object-oriented appena descritti consentono di scrivere un codice flessibile e, in generale, migliore: è importante conoscere l'aspetto teorico ma, ancora più, capire quando e in che misura questi principi devono essere applicati ed essere in grado di riconoscere se ne stiamo violando qualcuno compromettendo la flessibilità del codice.

È necessario tenere sempre presente i principi S.O.L.I.D., sia quando si effettua il refactoring di sistemi legacy, sia quando ci si appresta per la prima volta a progettare le classi.

L'utilizzo di questi principi aiuta gli sviluppatori a estendere, modificare e testare il codice in modo più efficace: quindi riportiamo nella tabella che segue i principi S.O.L.I.D., con una breve descrizione tratta dai libri di "zio Bob", da imparare "rigorosamente" a memoria!

|Sigla|Principio|Descrizione|
|---|---|---|
|SRP|The Single Responsibility Principle|Una classe dovrebbe avere uno e unico motivo per cambiare.|
|OCP|The Open/Closed Principle|Una qualsiasi entità software (classe, modulo, funzione ecc.) dovrebbe avere meccanismi che permettono di estenderne il comportamento senza apportare modifiche al codice preesistente: quindi aperte alle estensioni ma chiuse alle modifiche.|
|LSP|The Liskov Substitution Principle|Le classi derivate devono sempre poter essere sostituite dalle classi da cui queste derivano (superclassi) in maniera trasparente.|
|ISP|The Interface Segregation Principle|Una classe client non dovrebbe dipendere da metodi che non usa, e che, pertanto, è preferibile che le interfacce siano molte, specifiche e piccole, composte da pochi metodi, piuttosto che poche, generali e grandi.|
|DIP|The Dependency Inversion Principle|Una classe dovrebbe dipendere da astrazioni e non da concrete e specifiche implementazioni.|

---

### Verifica di fine Lezione 5

#### Verifica... le conoscenze — Scelta multipla

1. Quali tra i seguenti non sono concetti delle metodologie Agili? a) Basso accoppiamento b) Alto accoppiamento c) Bassa coesione d) Alta coesione e) Debole incapsulamento f) Forte incapsulamento
    
2. Da quale termine è stata presa l'iniziale S di S.O.L.I.D.? a) Substitution b) Single c) Segregation d) Satisfaction
    
3. Da quale termine è stata presa l'iniziale O di S.O.L.I.D.? a) Outlet b) Objective c) Open d) Orientation
    
4. Da quale termine è stata presa l'iniziale L di S.O.L.I.D.? a) Linked b) Lineare c) Listed d) Liskov
    
5. Da quale termine è stata presa l'iniziale I di S.O.L.I.D.? a) Integrate b) Interactive c) Inversion d) Interface
    
6. Da quale termine è stata presa l'iniziale D di S.O.L.I.D.? a) Double b) Derived c) Detection d) Dependency
    

#### Verifica... le conoscenze — Vero/Falso

1. Ogni classe/oggetto si deve focalizzare su una singola responsabilità.
2. Ogni classe/oggetto deve avere quindi un solo motivo per cambiare.
3. È necessario aumentare per quanto possibile l'accoppiamento tra le entità.
4. Il codice deve essere aperto alle estensioni.
5. Il codice deve essere aperto alle modifiche.
6. Le classi astratte favoriscono il principio Open/Close.
7. Deve essere sempre possibile sostituire un sottotipo col suo supertipo.
8. La sostituzione col supertipo sostituisce la regola IS-A.
9. È sconsigliato che in una classe client le interfacce siano molte.
10. I moduli di alto livello non devono dipendere da quelli di basso livello.
11. Sono i dettagli che dipendono dalle astrazioni, non viceversa.
12. I principi S.O.L.I.D. non sono indicati in caso di refactoring di sistemi legacy.

---

## Esercizi in Laboratorio 1 — La realizzazione degli Use Case Diagram con StarUML

### Generalità

Esistono molti prodotti che permettono di realizzare gli schemi UML, tra i quali ricordiamo:

- **StarUML**, scaricabile e utilizzabile gratuitamente in modalità valutazione all'indirizzo http://staruml.io/download;
- **Visual Paradigm for UML Community Edition**, scaricabile gratuitamente all'indirizzo http://www.visual-paradigm.com/;
- **ArgoUML**, pacchetto open source di modellizzazione dei diagrammi con lo standard UML 1.4 diagrams scaricabile gratuitamente all'indirizzo http://argouml.tigris.org (richiede JVM Java);
- **Microsoft Visio**, strumento a pagamento per la creazione di diagrammi che offre anche la possibilità di condivisione dei progetti sul Web in tempo reale.

In questa Esercitazione presenteremo StarUML, un progetto open source per lo sviluppo rapido, flessibile, estensibile di diagrammi UML, secondo il paradigma MDA (Model Driven Architecture).

La metodologia Model Driven Architecture (MDA) fornisce un insieme di linee guida (standard) intese a permettere un approccio integrato allo sviluppo del software, dove i modelli sono considerati parte integrante del processo di implementazione.

StarUML è ricco di funzioni, flessibile ed estendibile grazie alla sua architettura a plug-in e alla disponibilità di apposite API; con una semplice interfaccia IDE consente la composizione dei diagrammi UML di base: Use Case, Class, Sequence, Collaboration, Statechart, Activity, Component e Deployment.

Attualmente StarUML3 è aggiornato all'UML 2.x ed è disponibile per le piattaforme macOS (ver.10.9 o superiore), Windows (ver. 7 o superiore), Linux (64 bit oppure 32 bit).

Con l'installazione degli appositi plug-in, StarUML fornisce pieno supporto ai linguaggi più diffusi quali C/C++, Java, Visual Basic, Delphi, JScript, VBScript, C#, VB.NET e offre funzionalità uniche come quelle che consentono la creazione automatica di documenti della suite Microsoft Office (Word, Excel, PowerPoint).

È apprezzata particolarmente la possibilità di effettuare la generazione del codice a partire dai diagrammi.

### Mettiti alla prova — Diagramma dei casi d'uso con StarUML

Disegna il diagramma dei casi d'uso nelle seguenti situazioni.

1. Sistema biblioteca: il bibliotecario può effettuare il prestito dei libri, riceve i libri restituiti dagli utenti, effettua la gestione dei libri (classifica i libri nuovi, ripone i libri sugli scaffali, segnala i libri danneggiati, ordina nuovi libri).
    
2. Sistema ordini: i clienti registrati effettuano gli ordini; i clienti effettuano il pagamento comunicando i dati dell'acquisto al sistema che procede a processare l'ordine; se la merce è disponibile, l'ordine viene evaso, altrimenti si colloca in attesa; quando un fornitore consegna della merce si verifica se sono presenti ordini in attesa per procedere con l'evasione; si individua quali ordini possono essere evasi; si effettuano le assegnazioni della nuova merce agli ordini in attesa e la merce rimanente viene sistemata in magazzino.
    
3. Negozio di musica: un negozio di musica vende anche libri e riviste musicali. Si intende automatizzare l'intero processo, dall'approvvigionamento alla vendita, a partire dalla gestione del magazzino (VerificaDispProdotto, EffettuaOrdineFornitore).
    
4. Sistema bancario: disegna il diagramma dei casi d'uso per la funzionalità 4.1 Apertura conto corrente (scenario: il cliente si presenta in banca, l'addetto riceve il cliente e fornisce spiegazioni, il cliente accetta le condizioni e fornisce i propri dati, l'addetto verifica se il cliente è censito in anagrafica, l'addetto crea il nuovo conto corrente, l'addetto segnala il numero di conto al cliente).
    

---

## Esercizi in Laboratorio 2 — La realizzazione degli Use Case Diagram con ArgoUML

### Premessa

In questa esercitazione utilizzeremo ArgoUML per disegnare il diagramma dei casi d'uso, cioè l'Use Case Diagram (scaricato all'indirizzo https://argouml.it.uptodown.com/windows).

### Mettiti alla prova — Diagramma dei casi d'uso in ArgoUML

1. Installa il programma ArgoUML.
2. Disegna i diagrammi dei casi d'uso per tutti gli esercizi presenti nell'Esercizio in Laboratorio 1.
3. Quindi realizza il diagramma dei casi d'uso di un sistema di vendita online dei biglietti ferroviari.

---

---

# Unità 5 — Documentazione del software

**Lezioni:**

- Lezione 1 — La documentazione del progetto
- Lezione 2 — La documentazione del codice

**Esercizi in Laboratorio:**

- L1 — La documentazione automatica con Javadoc
- L2 — Il software Doxygen
- L3 — Il controllo delle versioni con Git
- L4 — Il controllo delle versioni con Subversion e TortoiseSVN

---

### Conoscenze

- Comprendere la necessità di documentare
- Sapere quali sono i documenti necessari in un progetto
- Conoscere il concetto di documentazione interna ed esterna
- Apprendere le modalità per realizzare la documentazione esterna di sistema e utente
- Acquisire una tecnica di documentazione del codice
- Conoscere i principali tool di documentazione automatica del codice

### Competenze

- Saper organizzare la documentazione del progetto
- Saper definire uno standard di documentazione
- Saper formattare il codice
- Saper effettuare la documentazione del codice
- Saper condividere componenti di un progetto con il team di sviluppo

### Abilità

- Utilizzare Javadoc come strumento di documentazione automatica
- Installare e utilizzare Doxygen come strumento di documentazione automatica
- Installare e configurare GIT in locale e in remoto
- Installare e configurare Subversion e TortoiseSVN
- Utilizzare TortoiseSVN per effettuare il controllo delle versioni

> I file relativi a esempi, esercizi, esercizi in laboratorio e a eventuali soluzioni di questa Unità sono scaricabili dal sito.

---

## Lezione 1 — La documentazione del progetto

**In questa lezione impareremo:**

- la necessità di documentare
- la documentazione esterna di sistema
- la documentazione esterna utente
- i tool di documentazione del codice

### Generalità

Documentare il software è sicuramente una attività non gradita dagli sviluppatori e spesso viene eseguita dagli stessi solo al termine dello sviluppo unicamente con lo scopo di completare il pacchetto software prima della consegna al cliente: è invece importante che venga effettuata contemporaneamente alle diverse fasi di realizzazione del progetto.

Infatti la documentazione, man mano che viene prodotta, diviene un supporto al processo di sviluppo del software e quindi deve essere redatta durante lo svolgimento del progetto stesso e non al suo termine solo al fine di completare il "corredo" del pacchetto software.

La stesura della documentazione deve quindi seguire il più possibile le fasi definite nel processo di sviluppo del sistema e deve prevedere la compilazione di un insieme di documenti in relazione temporale con il completamento delle stesse.

Lo sforzo dedicato alla documentazione del software non deve essere visto come un'attività costosa e noiosa, alla quale associare la minima priorità, poiché i benefici di una buona documentazione sono sempre tangibili: non a caso molti fattori di qualità sono direttamente o indirettamente influenzati in maniera positiva dalla presenza di documentazione.

Non esiste uno standard che descrive rigorosamente i documenti che devono essere prodotti: in questa Lezione si è cercato di riunire tutta la serie di elaborati cartacei che dovrebbero essere prodotti durante lo sviluppo di un prodotto software di medie dimensioni, come indicato dai maggiori teorici dell'ingegneria del software.

### Standard della documentazione

È importante definire un proprio standard nella produzione della documentazione da mantenere per tutti i documenti che vengono prodotti; elenchiamo di seguito un insieme di punti che devono essere definiti dal responsabile del progetto prima dell'inizio del progetto stesso.

**A. Standard per la produzione di un documento:**

- per i documenti: descrivono la struttura, il contenuto e l'editing del documento;
- per la presentazione di un documento: definiscono i font, stili, l'uso di un logo ecc.

> **Esempio** — Tutti i documenti dovranno contenere:
> 
> - il nome e il logo della società;
> - l'elenco dei nominativi dei redattori, con le rispettive firme e la data;
> - l'elenco dei nominativi di chi ha approvato il documento con le rispettive firme e la data;
> - l'oggetto del contenuto ed eventualmente un sommario.
> 
> Inoltre tutte le pagine dei documenti devono essere numerate progressivamente, indicando sempre anche il totale delle pagine (per esempio, pag. 4 di 10).

**B. Standard per la manutenzione di un documento:**

- per l'identificazione di un documento: come i documenti sono codificati per essere univocamente identificati;
- per l'aggiunta di un documento: come i documenti vanno codificati e validati; come gestire le versioni con il registro delle funzionalità apportate con i vari riferimenti, il numero e la data;
- per l'aggiornamento di documenti: definire come le modifiche di una precedente versione si riflettono in un documento, con i vari riferimenti, il numero e la data.

Nella documentazione un aspetto fondamentale è quello di permettere la tracciabilità delle modifiche apportate al software o alla architettura del sistema: se è agevole risalire a tutta la "cronologia" che ha portato a un modifica o alla realizzazione di codice si riduce notevolmente lo sforzo necessario per comprenderlo.

**C. Standard per la distribuzione di un documento:**

- standard per lo scambio/condivisione di documenti: come i documenti vanno memorizzati e scambiati/condivisi tra differenti sistemi di documentazione.

> **Esempio** — Per esempio, si può stabilire che per poter permettere lo scambio di documenti elettronici prodotti usando differenti sistemi e computer, sia in modo diretto che per l'inoltro per mezzo di e-mail, il loro formato sia lo standard XML.

### Documentazione del progetto

La bontà di un progetto viene valutata anche in base alla documentazione acclusa: occorre pertanto che la documentazione sia redatta in forma standard, completa e comprensibile e, a parità di contenuto e di chiarezza, è preferibile che la documentazione sia il più possibile concisa perché un testo lungo non invoglia la lettura.

La documentazione del progetto si compone di tre parti:

1. il manuale per l'utente;
2. la documentazione tecnica (che comprende anche il codice sorgente);
3. le prove di collaudo.

Possiamo classificare la documentazione di un progetto secondo quattro modalità:

- **A. esterna o interna:**
    
    - esterna: separata dal programma vero e proprio,
    - interna: sotto forma di commenti o help contenuti nel file sorgente;
- **B. in linea o fuori linea:**
    
    - in linea: richiamabile su richiesta durante l'esecuzione del programma,
    - fuori linea: sotto forma di manuale consultabile separatamente;
- **C. globale o locale:**
    
    - globale: riguardante il programma nel suo complesso,
    - locale: sotto forma di commenti inseriti nel codice sorgente in punti specifici del programma;
- **D. per l'utente o per il programmatore:**
    
    - rivolta all'utente: per chi usa il programma, generalmente organizzata in: manuale d'uso, manuale di installazione, help in linea;
    - rivolta al programmatore: è specifica per il personale tecnico interessato alla struttura del programma per lo sviluppo o per la sua manutenzione, e comprende: documentazione inerente il progetto e il management del progetto, documentazione del codice.

La documentazione di un sistema quindi non riguarda soltanto il codice sorgente che costituisce il programma vero e proprio ma anche:

- le specifiche funzionali e non funzionali del sistema;
- le scelte di progetto riguardanti l'architettura generale, le strutture degli archivi e dei dati in memoria centrale e i principali algoritmi utilizzati;
- le modalità d'uso del programma;
- i collaudi effettuati e i loro risultati.

In questa Lezione descriviamo la documentazione esterna, mentre la documentazione interna sarà trattata nella prossima Lezione.

### La documentazione esterna

Dopo l'approvazione del preventivo si avvia la realizzazione di un sistema software e viene nominato un direttore generale responsabile del progetto (project manager).

La prima attività del project manager è proprio la stesura dell'elenco dei documenti necessari allo svolgimento del progetto che devono tenere traccia scritta di tutte le attività inerenti al progetto stesso. Questa documentazione deve consentire alla direzione di pianificare e controllare lo svolgimento del progetto ma anche di analizzare a posteriori ciò che è accaduto, in un'ottica di miglioramento sia dell'organizzazione che del processo di produzione del software.

Possiamo individuare due gruppi di documenti:

1. **documentazione inerente il management del progetto:**
    
    - organigramma
    - diario di progetto
    - verbale
    - piano di progetto
    - norme di progetto
    - offerta
    - contratto per lo sviluppo, la fornitura del software e l'assistenza all'avviamento
    - piano di gestione della qualità
    - relazione finale
2. **documentazione del progetto:**
    
    - analisi del dominio
    - analisi dei requisiti (documento SRS)
    - specifica architetturale
    - specifica di dettaglio
    - piano delle prove
    - risultati delle prove
    - manuale d'uso

Ogni documento redatto dal gruppo di progetto deve comparire nel diario di progetto che il project manager mantiene costantemente aggiornato anche perché le eventuali verifiche ispettive terranno conto solo ed esclusivamente dei documenti elencati nel diario di progetto.

### Documentazione inerente il management del progetto

#### Organigramma

È un documento che contiene l'elenco dei membri del gruppo di progetto con la descrizione dei ruoli assegnati a ciascuno di essi e viene redatto dal project manager prima dell'inizio delle attività. Ogni ruolo viene descritto indicando le competenze di ciascun membro del progetto ed è soggetto a modifiche dato che nel corso dell'evoluzione del progetto l'assegnazione di qualche ruolo potrebbe essere rivista.

Viene sottoscritto da tutti membri del team in modo che ciascuno conosca i propri incarichi.

Non è soggetto a numerazione di versioni in quanto è a uso solo del project manager: in casi di variazione dell'organigramma può essere sostituito con un nuovo documento.

#### Diario di progetto

Rappresenta il registro ufficiale della documentazione del progetto e contiene l'elenco di tutti i movimenti relativi all'archivio dei documenti del progetto e del software che si sta sviluppando. Ogni movimento viene registrato indicando la data in cui avviene, una descrizione comprendente il suo riferimento univoco (codifica) e la versione del documento (o del prodotto), il nominativo e il ruolo del consegnatario o del ricevente.

Tutti i documenti entranti nell'archivio devono essere approvati dal project manager.

#### Verbale

Tutte le riunioni del gruppo devono essere verbalizzate, sia che vengano fatte solo dal gruppo di sviluppo sia che prevedano la presenza del committente e/o degli stakeholder.

Ogni riunione viene convocata specificando precedentemente l'ordine del giorno e comunicandolo a tutte le persone che devono parteciparvi: lo svolgimento di una riunione segue tale ordine e nel verbale, dopo l'indicazione della data, del luogo in cui si è tenuta la riunione e dell'elenco delle persone presenti, si riporta sinteticamente quando emerso dalla discussione indicando nominalmente gli interventi in modo da poterli tracciare.

Al termine della riunione viene redatto un verbale che riporta il nome del compilatore e che, dopo una rilettura, viene fatto firmare da tutti i presenti.

È buona norma aggiungere come ultimo punto dell'ordine del giorno la voce "Varie ed eventuali" in modo da poter affrontare anche la discussione di esigenze sopraggiunte successivamente alla convocazione della riunione.

#### Piano di progetto

Il project manager deve compilare e tenere aggiornato il piano del progetto che contiene le attività pianificate, in particolare:

1. la definizione degli obiettivi;
2. l'analisi dei rischi: piano gestione rischi, sintesi rischi individuati, strategie di prevenzione;
3. descrizione del modello di processo di sviluppo e delle singole fasi (milestones);
4. stima dei costi;
5. attività di progetto (Work Breakdown Structure, Diagramma di Gantt);
6. consuntivo attività;
7. strumenti utilizzati.

Il piano di progetto si divide in due parti, pianificazione, che serve per stimare realisticamente le risorse, i costi e i tempi necessari alla realizzazione del progetto e consuntivazione, per confrontare e avere un riscontro tangibile tra le attività effettuate e quelle previste, individuare i punti di discordanza e rendere possibile la pianificazione delle attività future.

Il piano di progetto è corredato da un documento che tiene conto, nel corso del tempo, delle variazioni che sono state apportate, il registro delle modifiche, indicando la causa, la data e un numero progressivo, che indica la versione del piano e lo identifica univocamente.

#### Norme di progetto

Il project manager ha anche il compito di redigere un documento che contiene le norme che devono essere rispettate durante lo svolgimento del progetto; è generalmente strutturato in due parti.

**1. Convenzioni generali:**

- documentazione del progetto: convenzioni utilizzate per stilarla, per identificarla, per archiviarla, diffonderla, approvarne i contenuti e integrarli;
- comunicazione: come viene organizzata la comunicazione tra i membri del gruppo di sviluppo e verso l'esterno, le regole di utilizzo della posta elettronica, le modalità di comunicazione e di gestione dei problemi;
- organizzazione dello spazio di lavoro: come organizzare i file di progetto, dove archiviarli, come viene strutturata la directory e le varie cartelle, la modalità di accesso e condivisione, l'indirizzo IP o URL del server che conterrà i codici sorgenti e la documentazione, la modalità di aggiornamento e integrazione dei file e dei documenti ecc.;
- uso degli strumenti: elenco degli strumenti utilizzati, delle piattaforme di sviluppo, dei compilatori, delle convenzioni usate per l'analisi, la progettazione, la codifica e la verifica del prodotto, e inoltre per la gestione delle versioni.

**2. Norme di sviluppo:**

- norme di analisi: norme che riguardano le attività inerenti lo svolgimento delle attività di analisi;
- norme di progettazione: modalità per lo svolgimento delle attività di progettazione e descrizione delle convenzioni adottate per la stesura della documentazione (per esempio, il formato dei diagrammi UML, le modalità di specifica dei singoli componenti ecc.);
- norme di codifica: sono previste singole sezioni dedicate ai diversi linguaggi di programmazione usati nel progetto, dove elencare le convenzioni e gli standard di codifica (regole per l'indentazione, il naming delle variabili, l'intestazione dei file, le modalità di utilizzo degli strumenti di documentazione automatica utilizzati: per esempio Javadoc o Doxygen descritti in seguito).

#### Offerta

L'offerta (o preventivo) è il documento che viene sottoposto al cliente prima dell'inizio dello sviluppo del sistema e deve essere firmato dallo stesso per accettazione: viene stilata generalmente dal project manager e da un commerciale e comprende una breve descrizione del prodotto offerto, i dettagli economici, l'analisi dei requisiti e i tempi di consegna con l'indicazione delle eventuali penali.

#### Contratto per lo sviluppo, la fornitura del software e l'assistenza all'avviamento

Al momento della firma per accettazione dell'offerta viene redatto il contratto per lo sviluppo, la fornitura del software e l'assistenza all'avviamento che, oltre alle Condizioni Generali e agli elementi essenziali del contratto, riporta le clausole accidentali raccomandate:

a) limiti delle responsabilità della software house (oltre a quanto previsto dalla legge); b) modalità di utilizzo corretto del software prodotto; c) proprietà dei materiali (software) e degli elaborati; d) tipo di fornitura del codice (sorgente e/o oggetto); e) criteri, modalità, obiettivi del collaudo; f) termini di consegna; g) eventuali penali; h) periodo di prova del software a decorrere dalla data di collaudo; i) tipo di assistenza nel periodo di avviamento; l) attività del cliente che costituiranno parte delle obbligazioni contrattuali del cliente:

1. indicazione del responsabile del progetto che è referente per il cliente;
2. definizione completa dei requisiti di progetto (specifiche di sistema, specifiche software);
3. partecipazione al collaudo e approvazione;
4. attività di installazione e configurazione sistema (ambiente di produzione e ambiente di test) se non facenti parte esplicitamente delle attività di progetto del professionista.

#### Piano di gestione della qualità

A seconda delle diverse certificazioni di qualità possedute dalla azienda sviluppatrice deve essere definito il piano della qualità comprendente le politiche e gli obiettivi prefissi, in esso devono essere indicati gli strumenti e le procedure di controllo indicando tempi, tecniche, metodi (Management reviews, Technical reviews, Inspections, Audits), azioni da intraprendere in caso di non conformità e anomalie.

#### Relazione finale

Alla conclusione dello sviluppo e del collaudo del sistema viene redatta dal project manager la relazione finale, che contiene la descrizione delle funzionalità implementate, dell'architettura del software e dell'hardware dove è stato installato e collaudato il sistema, le informazioni sui linguaggi di programmazione e sull'ambiente di sviluppo impiegati, la descrizione delle strutture dei dati realizzate, dell'interfaccia software per l'utente e delle risorse utilizzate dal progetto, la documentazione del collaudo fatto in presenza del committente e da lui sottoscritto come approvazione della fornitura.

Alla relazione finale viene generalmente allegato il manuale operativo per il corretto utilizzo del programma e dei dati da esso generati e viene proposto al cliente un contratto di manutenzione del software per specificare gli accordi economici sullo sviluppo successivo per le migliorie, per lo sviluppo di funzionalità per esigenze tecnico-organizzative al momento non previste e gli eventuali adeguamenti legislativi e un contratto di assistenza, che può essere, per esempio, costituito da un "pacchetto" di giornate di assistenza oltre che alla assistenza telefonica o fatta mediante accesso remoto.

### Documentazione del progetto

#### Analisi del dominio

Nell'analisi del dominio sono presenti i dati necessari a conoscere l'ambito di sviluppo del prodotto, una breve descrizione della azienda e del progetto da realizzare, la descrizione dei compiti e delle procedure e una analisi dettagliata del dominio, a partire dalla definizione del glossario contenente le definizioni, gli acronimi e le abbreviazioni d'uso comune nel settore d'intervento, le caratteristiche dei clienti e degli utenti, la descrizione della concorrenza e dei prodotti software competitori da loro utilizzati.

#### Analisi dei requisiti

Il documento di Specifica dei Requisiti Software (SRS) è stato descritto nella Lezione 4 dell'Unità di Apprendimento 4 e descrive quello che è richiesto allo sviluppatore del sistema come risultato del lavoro di analisi tra il cliente, l'utente e lo sviluppatore.

#### Specifica architetturale

In questo documento viene descritta l'architettura del sistema, la sua decomposizione in moduli funzionali con la definizione delle informazioni che vengono scambiate tra di essi e con l'ambiente esterno, la descrizione dell'articolazione del programma in sotto programmi con particolare riguardo all'albero di chiamata dei sotto programmi stessi. Nel caso di programmazione a oggetti vengono descritte le singole classi, le gerarchie, la modellizzazione dinamica e comportamentale dei singoli componenti. Vengono inoltre descritte le interfacce utente e i dati presenti in ciascuna di esse.

#### Specifica di dettaglio

Nella specifica di dettaglio si riprendono i componenti software (modulo, funzioni o classi) identificati nel disegno e vengono descritte le loro specifiche funzionalità, l'algoritmo utilizzato, il significato delle variabili passate come parametri, le eventuali variabili globali utilizzate, le variabili locali di cui fa uso e quelle di particolare significatività e i singoli casi d'uso.

Viene quindi allegato il codice sorgente e il modello logico del database.

#### Piano delle prove

Definiamo dapprima con batteria di prove una sequenza di singoli casi di prova correlati che prevede la verifica di una funzionalità del sistema in corrispondenza di determinati input, che deve essere così documentata:

- classificazione della prova: identificativo, titolo, elenco delle componenti coinvolte nella verifica, descrizione degli obiettivi in termini di funzionalità, livello d'importanza della prova;
- istruzioni per il verificatore: descrizione dei dati in ingresso, singoli o di sequenze particolari;
- risultati attesi: risultati attesi e/o comportamenti in casi estremi;
- istruzioni di ripristino: modalità di recovery in caso di fallimento della prova.

Il piano delle prove è un documento che può essere articolato in due sezioni:

1. definizione delle prove di integrazione: generalmente il sistema deve interagire con altri preesistenti, sia interni che esterni, e quindi devono essere pianificate le batterie di prove e descritta la strategia di integrazione; devono essere descritti i driver e gli stub utilizzati per le prove di modulo e per le prove condotte a ogni passo d'integrazione, eventualmente allegando i codici sorgenti;
    
2. definizione delle prove di collaudo (del sistema completo): dopo aver verificato singolarmente le unità funzionali del sistema è necessario pianificare le batterie di prove per la verifica delle funzionalità nel suo complesso e il soddisfacimento dei requisiti software prefissati.
    

Il collaudo termina con la stesura del documento di accettazione nel quale il cliente sottoscrive il suo soddisfacimento per il prodotto che gli è stato consegnato.

#### Risultati delle prove

Per ogni caso/batteria di prove viene prodotto un report da parte del verificatore che riporta la data del test, il tipo di prova identificato con il riferimento univoco, i dati di prova utilizzati e l'esito, commentando eventuali risultati inattesi e situazioni indesiderate ed eventualmente fornendo le indicazioni per una eventuale ripetizione della prova.

#### Manuale d'uso (o manuale utente)

Il manuale utente ha lo scopo di mettere l'utente in grado di utilizzare il programma senza problemi e deve essere redatto in un linguaggio semplice, di facile comprensione per ciascun utente del sistema, tenendo conto che sicuramente ci saranno persone senza conoscenze informatiche approfondite. La documentazione utente comprende:

- documentazione cartacea: manuale d'uso, manuale di installazione (se il prodotto viene pacchettizzato e installato dal cliente);
- documentazione elettronica: help online, eventuale sito di riferimento.

Disegni, schemi e sequenze guidate nella descrizione delle operazioni agevolano la loro comprensione: più la documentazione è chiara ed esaustiva e meno gli utenti telefoneranno per richiedere assistenza operativa!

Sia il formato cartaceo che quello elettronico devono contenere le sezioni seguenti:

- introduzione: dopo una breve descrizione dell'utilizzo del manuale vengono descritti i servizi forniti dal programma e l'ambiente hardware/software in cui il sistema funziona (tipo di calcolatore, memoria di massa e di lavoro necessarie, tipo e versione del sistema operativo, tipo e versione del linguaggio di programmazione utilizzato) e una descrizione delle modalità di avvio del programma;
- istruzioni d'uso: la descrizione di ogni singola funzione e di ogni singola voce del menu (se esiste), possibilmente integrata con un esempio guidato dove vengono elencate le singole azioni richieste (e permesse) all'utente; per ogni caso devono essere elencate le possibili situazioni di errore con l'elenco delle cause e l'indicazione dei possibili interventi necessari alla loro risoluzione;
- appendice: viene riportato il glossario, l'elenco dei messaggi di errore comuni a tutto il sistema, una sezione di come risolvere le principali situazioni critiche.

### Tool di documentazione

Per aiutare gli sviluppatori a produrre la documentazione del codice sono presenti tool di documentazione automatica che analizzano il codice individuando appositi contrassegni (tag) predisposti dal programmatore. L'aggiunta di commenti all'interno del codice è una metodologia di documentazione interna che viene effettuata per facilitarne la lettura, per spiegarne il funzionamento e per favorire la collaborazione tra diversi sviluppatori: utilizzando una notazione specifica per questi commenti si ottiene il doppio beneficio di commentare il codice predisponendo gli elementi necessari per poi ottenere automaticamente la generazione della documentazione dei programmi sorgenti.

È però necessario porre molta attenzione per rispettare gli standard previsti dal generatore automatico che si intende utilizzare, sia nella forma che nella completezza necessaria per produrre un documento esaustivo, chiaro e ben dettagliato.

È consigliabile produrre questa documentazione durante lo sviluppo, anche perché la persona più indicata per descrivere un programma è proprio chi lo sta scrivendo: in questo modo il documento viene costantemente aggiornato, in linea con l'evoluzione del software e risulta pronto "contemporaneamente" con il codice da collaudare. Può quindi essere utilizzato dai collaudatori durante le operazioni di test, permettendo di risparmiare notevoli risorse, sia in termini di tempo che naturalmente di denaro.

Nessun programmatore ama scrivere relazioni e documenti: avere uno strumento di generazione automatica delle documentazione del codice lo libera da un compito "noioso" e poco gratificante e gli permette di utilizzare "meglio" il proprio tempo.

#### Tool esistenti

I principali tool appositamente sviluppati per effettuare la generazione automatica della documentazione sono Javadoc e Doxygen.

- **Javadoc** è stato sviluppato direttamente dalla Sun Microsystems nel 1990 durante lo sviluppo del linguaggio Java per documentare proprio la sua progettazione e venne distribuito insieme al kit di sviluppo per la documentazione di progetti scritti in questo linguaggio. Col passare degli anni il tool è cresciuto assieme al linguaggio, divenendo sempre più ricco e completo, e aggiungendo la possibilità per l'utilizzatore di personalizzare il contenuto e il formato di output della documentazione.
    
- **Doxygen** è un sistema multipiattaforma per la generazione di documentazione tecnica di un qualsiasi prodotto software e fu sviluppato come progetto open source a partire dal 1997 su proposta di Dimitri van Heesch. A differenza di Javadoc utilizzabile solo per Java, Doxygen tool può essere utilizzato con codice sorgente scritto in diversi linguaggi: C++, C, Java, Objective C, Python, IDL, PHP e C#.
    

Sia Doxygen che Javadoc analizzano il codice sorgente ed estraggono informazioni dalla dichiarazione di strutture dati e da commenti scritti con una particolare sintassi, generando un ipertesto o un formato HTML oppure anche un formato pdf: li descriveremo entrambi.

---

### Verifica di fine Lezione 1

#### Verifica... le conoscenze — Vero/Falso

1. La documentazione è un supporto al processo di sviluppo del software.
2. La documentazione quindi deve essere redatta durante lo svolgimento del progetto.
3. La documentazione di un sistema riguarda soltanto il codice sorgente.
4. L'offerta rientra tra la documentazione inerente il management del progetto.
5. Il piano di gestione della qualità non è tra i documenti del management del progetto.
6. Tra le norme di progetto rientra l'elenco degli strumenti utilizzati.
7. Nel contratto per lo sviluppo sono presenti i tempi di consegna e le eventuali penali.
8. Col contratto per lo sviluppo viene proposto al cliente un contratto di manutenzione.
9. Alla relazione finale viene generalmente allegato il manuale operativo.
10. Nel manuale utente sono presenti gli esiti delle prove delle funzionalità del prodotto.

#### Verifica... le conoscenze — Scelta multipla

1. Quale tra i seguenti non è uno standard utilizzato nella produzione della documentazione? a) Standard per la produzione di un documento b) Standard per la manutenzione di un documento c) Standard per la pubblicazione di un documento d) Standard per la distribuzione di un documento
    
2. Quale tra i seguenti non è uno standard di manutenzione di un documento? a) L'identificazione di un documento b) L'editing di un documento c) L'aggiunta di un documento d) L'aggiornamento di documenti
    
3. La documentazione di un sistema riguarda anche: (Indica quello inesatto) a) Le specifiche funzionali e non funzionali del sistema b) Le scelte di progetto riguardanti l'architettura generale c) Lo studio di fattibilità d) Le strutture degli archivi e dei dati in memoria centrale e i principali algoritmi utilizzati e) Le modalità d'uso del programma f) I collaudi effettuati e i loro risultati
    
4. Quale tra i seguenti documenti non appartiene alla documentazione del management del progetto? a) Organigramma b) Diario di progetto c) Verbale d) Analisi del dominio e) Norme di progetto f) Offerta g) Contratto per lo sviluppo, la fornitura del software e l'assistenza all'avviamento h) Piano di gestione della qualità i) Relazione finale
    
5. Quale tra i seguenti documenti non appartiene alla documentazione del progetto? a) analisi dei requisiti (documento SRS) b) specifica architetturale c) specifica di dettaglio d) piano di progetto e) piano delle prove f) risultati delle prove g) manuale d'uso
    
6. Il piano del progetto contiene le attività pianificate, in particolare: (Indica quello non presente) a) la definizione degli obiettivi b) l'analisi dei rischi c) la descrizione del modello di processo di sviluppo e delle singole fasi d) la stima dei costi e) l'attività di progetto (Work Breakdown Structure, Diagramma di Gantt) f) il piano dei collaudi g) il consuntivo attività h) gli strumenti utilizzati
    

---

## Esercizi in Laboratorio 1 — La documentazione automatica con Javadoc

Javadoc è stato realizzato direttamente dalla Sun Microsystems nel 1990, durante lo sviluppo del linguaggio Java, per documentare proprio la sua progettazione e, alla fine di essa, venne distribuito insieme al kit di sviluppo per la documentazione di progetti scritti in questo linguaggio. Nel passare degli anni il tool è cresciuto assieme al linguaggio, divenendo sempre più ricco e completo, e aggiungendo la possibilità all'utilizzatore di personalizzare il contenuto e il formato di output della documentazione.

### Generazione Automatica di Documentazione Tecnica

Javadoc è uno strumento che permette di documentare i sorgenti di un programma all'interno dei sorgenti stessi: anziché scrivere la documentazione di un programma in un file separato, il programmatore inserisce nel codice sorgente dei commenti con una particolare sintassi, che verrà mostrata in seguito.

Tali commenti vengono estratti dal programma Javadoc che li converte in un formato più semplice per la consultazione (generalmente in formato HTML); viene effettuato un parsing dei file sorgenti, ovvero un'analisi di tale codice, tramite il compilatore Java.

Il Javadoc può essere eseguito su interi package, su singoli file o su entrambi.

Nel caso di documentazione di un package è possibile memorizzare in un'apposita cartella (una sottocartella che deve avere il nome "doc-files") altri file che possono essere importati nella documentazione, come immagini, esempi di codice o altri file HTML.

Avviando l'esecuzione del parser del codice di Javadoc, viene analizzato il file sorgente, individuati i tag specifici che identificano i commenti e generato un ipertesto HTML di una o più pagine che descrivono package, classi, interfacce, costruttori, metodi e attributi.

Nella documentazione sono presenti sezioni riepilogative, pagine di indice, l'elenco dei metodi e altri strumenti per facilitarne la consultazione.

Il processo di generazione di Javadoc consiste in tre semplici fasi:

- l'inserimento dei commenti di spiegazione del codice sorgente che il programmatore esegue manualmente contemporaneamente alla scrittura dello stesso;
- la predisposizione di eventuali file da associare al documento, inserendo gli opportuni comandi nelle sezioni dove vuole che questi vengano inseriti;
- la generazione vera e propria dell'ipertesto, tramite il comando Javadoc.

> **Esempio** — Per generare la documentazione della classe Prova.java all'interno della cartella è sufficiente digitare al prompt dei comandi la seguente istruzione:
> 
> ```
> javadoc Prova.java –d doc
> ```

### Realizzazione di un Javadoc

In generale un commento Javadoc è un testo HTML racchiuso tra i tag `/**` e `*/`.

La documentazione minima dovrebbe comprendere la descrizione di ciascun package, classe, interfaccia, metodo pubblico, attributo pubblico e quindi va inserito un commento prima di ciascuno di essi.

All'interno del commento Javadoc è possibile inserire uno o più tag, che iniziano con il simbolo `@`.

#### Tags per documentazione di classi

- `@author [nome]` — Aggiunge "Author:" seguito dal nome specificato: è possibile inserire più autori, presentati in ordine cronologico.
- `@version [versione]` — Aggiunge "Version:" seguita dalla versione specificata.
- `@see [riferimento]` — Aggiunge "See Also:" seguito dal riferimento indicato.

#### Tags per documentazione di metodi

- `@param [nome del parametro] [descrizione]` — Aggiunge il parametro specificato e la sua descrizione alla sezione "Parameters:" del metodo corrente: per ogni parametro va inserito un tag rispettando lo stesso ordine del metodo.
- `@returns [descrizione]` — Aggiunge "Returns:" seguito dalla descrizione specificata indica il tipo restituito e l'insieme dei valori possibili. Non previsto per costruttori e per metodi che non restituiscono alcun valore (void).
- `@throws [nome completo della classe] [descrizione]` — Aggiunge "Throws:" seguito dal nome della classe specificata (che costituisce l'eccezione) e dalla sua descrizione. Sono ammessi più tag @exception per ognuna delle eccezioni che compaiono nella sua clausola throws, presentate in ordine alfabetico.

#### Tabella dei tag disponibili

|Tag|Descrizione|
|---|---|
|@author|viene seguito da una stringa che identifica l'autore dell'entità documentata.|
|@version|specifica la versione dell'entità documentata, spesso indicata con la versione del software nella quale è stata introdotta; è seguita da un testo descrittivo.|
|@deprecated|identifica un'entità destinata a scomparire nelle future versioni del software ma ancora in uso; viene seguito da una descrizione testuale che solitamente indica l'entità con cui verrà rimpiazzata.|
|@exception / @throws|indicano un'entità che può sollevare eccezioni, sono sinonimi e sono seguiti dal nome della classe, ovvero il nome dell'eccezione che può essere generata, e da una descrizione testuale.|
|@param|indica un parametro passato nel costruttore dell'entità documentata; è seguito dal nome del parametro e da una descrizione testuale.|
|@return|specifica cosa può essere restituito come risultato dopo l'esecuzione dell'entità associata; viene seguito da una descrizione testuale.|
|@see|indica un link o un riferimento in relazione con l'entità documentata, può essere espresso in diversi modi: seguito da semplice testo, seguito da link html, oppure, nel caso di riferimenti ad altre entità della documentazione, nella forma "package.classe#metodo testovisualizzato".|

Una volta commentati in modo adeguato tutti i sorgenti è possibile specificare le impostazioni per la generazione della Javadoc.

Per queste possibilità e per tutte le modalità di utilizzo del tool Javadoc si rimanda alla documentazione di riferimento del "linguaggio" all'indirizzo: http://docs.oracle.com/javase/10/docs/api/jdk.javadoc-summary.html

### Mettiti alla prova — Documentazione automatica con Javadoc

Riprendi gli esempi e gli esercizi scritti in Java delle Unità di Apprendimento precedenti e completali con i tag Javadoc creando l'ipertesto completo.

1. Unità di Apprendimento 1: Laboratorio 10
2. Unità di Apprendimento 1: Laboratorio 11
3. Unità di Apprendimento 1: Laboratorio 12
4. Unità di Apprendimento 2: Laboratorio 9
5. Unità di Apprendimento 2: Laboratorio 10
6. Unità di Apprendimento 2: Laboratorio 11
7. Unità di Apprendimento 2: Laboratorio 12

---

## Esercizi in Laboratorio 2 — Il software Doxygen

### Cos'è Doxygen

Doxygen è un tool per la generazione automatica della documentazione di codice sorgente (C, Java ecc.) partendo dai singoli commenti presenti nel codice stesso, opportunamente formattati.

La formattazione avviene inserendo dei commenti nel codice per impaginare una documentazione utilizzando particolari tag.

Doxygen è molto simile a Javadoc e utilizza una sintassi dei comandi praticamente uguale: anch'esso genera un ipertesto HTML ma aggiunge molte funzionalità tra cui la generazione dei file in formato Latex e la creazione, a partire da esso, di un documento: il Reference Manual.

### Installare Doxygen

Per installare Doxygen è necessario utilizzare un computer connesso a Internet: nella home page del sito http://www.doxygen.nl si può individuare il link per effettuare il download sia del programma che del manuale.

> **Latex** — Latex (scritto anche L^A T_E X) è un linguaggio di markup usato per la preparazione di testi basato sul programma di composizione tipografica T_E X.

Se avete installato Cygwin non c'è bisogno di installare Doxygen in quanto è già presente nell'ambiente: per verificarlo basta digitare `doxygen` al prompt.

### Generazione della documentazione da Linux/Cygwin

Creiamo un nuovo progetto e predisponiamo il file di configurazione di default con il comando:

```
doxygen -g <nomefile>
```

dove sostituiamo `<nomefile>` col nome che vogliamo assegnare al nostro file, per esempio `config_DG`.

Si prosegue editando il file di configurazione appena generato settando i seguenti parametri:

```
PROJECT_NAME = nome del progetto
OUTPUT_DIRECTORY = cartella in cui generare la documentazione
INPUT = percorso del codice sorgente
FILE_PATTERNS = Estensioni da considerare, per esempio .h,.cpp, .cc ecc...
```

La documentazione verrà generata in formato HTML nella cartella html. Per generare la documentazione automatica in qualsiasi momento è sufficiente digitare:

```
doxygen <nomefile>
```

### Elenco dei comandi

I commenti possono essere:

```
// commento su linea singola
/*
* commento su più linee
*/
```

I commenti utilizzano alcuni particolari tag di formattazione che, uniti a particolari parole riservate, permettono di far risaltare nella documentazione diverse informazioni.

I tag devono essere scritti compresi tra `/*` e `*/`:

|Tag|Descrizione|Esempio|
|---|---|---|
|`\fn`|serve per identificare il nome della funzione|`\fn int somma(int a, int b)`|
|`\brief`|permette di visualizzare un commento|`\brief funz. che somma i valori interi a e b`|
|`\param`|permette di identificare sulla documentazione un parametro di funzione e di applicarvi una descrizione|`\param int a: Primo valore da sommare`|
|`\return`|permette di descrivere ciò che ritorna la funzione|`\return int: la funzione ritorna la somma int dei due parametri`|
|`\date`|permette di visualizzare sulla documentazione una data|`\date 12/10/2010`|
|`\author`|permette di stampare il nome dell'autore dell'ultima modifica o chi ha creato la funzione|`\author Zio Pino`|
|`\file`|permette di visualizzare sulla documentazione il file sorgente su cui si trova la funzione in questione|`\file primoesempio.c`|
|`\version`|permette di visualizzare sulla documentazione la versione del file|`\version 4.1`|
|`\bug`|permette di visualizzare sulla documentazione l'ultimo bug trovato|`\bug problema corretto Out of Range`|
|`\class`|permette di visualizzare sulla documentazione il nome della classe che si commenta|`\class <nome della classe>`|
|`\warning`|permette di visualizzare sulla documentazione un avvertimento|`\warning la funzione ritorna int, ma la somma può dare un double`|
|`\example`|permette di specificare un file di esempio. Nell'html verrà richiamato un file sorgente di esempio|`\example nomefile_esempio.c`|

Per realizzare una documentazione semplice ma completa è sufficiente avere l'accortezza di inserire i tag di commento almeno in quattro posizioni:

**1. All'inizio di ogni file inserire le seguenti righe:**

```
/*
 @file fileName.cc .cpp .h ecc ecc ecc
 @author name, mail
 @version 1.0
 */
```

**2. Prima della dichiarazione di una classe:**

```
/** Descrizione classe...
 @code
 ... eventuale codice di esempio ...
 @endcode
 */
```

**3. Prima di ogni metodo (o ridefinizione o template):**

```
/**
 Descrizione metodo...
 @param a parametro 1
 @param b parametro 2
 @return valore di ritorno
 @throws eccezioni...
*/
```

**4. Prima di ogni attributo:**

```
/** descrizione */
```

In questo modo si otterrà una documentazione completa ed esaustiva.

### GraphViz

GraphViz è un tool che deve esser scaricato a parte e che può essere utilizzato separatamente o integrato al Doxygen.

In breve ci permette di creare un grafo che mostra dove una funzione viene chiamata e da chi oppure che cosa chiama al suo interno.

### Mettiti alla prova — Software Doxygen

1. Scarica il file Mucca.java, aggiungi almeno altri tre metodi e copiala in una nuova directory di cygwin\home\tuonome chiamandola: progettoJava
    
    - a) lancia `doxygen –g documenta`
    - b) quindi digita il comando `doxygen documenta`
    - c) entra nelle sottodirectory create e osserva (ls) i vari output generati
    - d) visualizza con un browser il file index.html
    - e) entra nella sottodirectory latex e digita semplicemente `make`: viene compilato automaticamente il manuale in PDF
2. Per comprendere le potenzialità di Doxygen, guarda i seguenti esempi di documentazione:
    
    - http://api.kde.org/
    - http://www.opensg.org/doxygen/
    - http://www.abisource.com/doxygen/index.html

---

## Esercizi in Laboratorio 3 — Il controllo delle versioni con Git

### Premessa

Lo sviluppo del software è un processo lungo, generalmente fatto in squadra, che non termina con la consegna del prodotto: la manutenzione, sia adattativa che migliorativa, segue il prodotto sino alla sua dismissione o sostituzione con nuove soluzioni alternative.

Raramente un segmento di codice rimane invariato nel tempo, sia per le eventuali modifiche fatte in fase di sviluppo, sia per quelle successive al suo rilascio.

È necessario introdurre un sistema di identificazione del codice in modo che sia sempre possibile conoscere le sue funzionalità e l'evoluzione che le stesse hanno avuto nel tempo.

Spesso si utilizza un sistema di numerazione mediante tre contatori su tre livelli che vengono incrementati a partire da 1.0.0:

- **major level (release):** indica una modifica sostanziale nel prodotto che può implicare modifiche nell'architettura, per esempio una nuova veste grafica oppure il passaggio a una nuova piattaforma;
- **minor level (versione):** si migliorano le funzionalità esistenti oppure si aggiungono nuove funzionalità alla versione precedente e/o aggiornamenti di natura fiscale;
- **patch level (correzione):** si rimuovono errori/malfunzionamenti.

```
 2. 14. 11
 |   |   |
major level  minor level  patch level
```

Non esiste comunque una regola standard, vi quindi sono molti metodi differenti per la gestione dei numeri di versione e, di fatto, è sufficiente tenere a mente due regole essenziali:

1. ogni programmatore deve assegnare un numero a ogni nuova versione del programma;
2. a ogni evoluzione del software il numero deve essere maggiore del precedente.

### I sistemi di versionamento

Un sistema di controllo di versione (VCS-Version Control Systems) consente di gestire le modifiche apportate ai file di un progetto su cui tipicamente lavorano più persone.

Scopo di un VCS è di realizzare una corretta gestione delle modifiche garantendo le seguenti caratteristiche:

- **reversibilità:** la capacità di un VCS di poter sempre tornare indietro in un qualsiasi punto della storia del codice sorgente: può capitare di accorgersi di aver introdotto un errore (al posto di una miglioria!) ed è necessario ripristinare l'ultima versione stabile del software.
- **concorrenza:** la prerogativa che permette a più persone di apportare modifiche allo stesso progetto, facilitando il processo di integrazione di pezzi di codice sviluppati da due o più sviluppatori.
- **annotazione:** la funzione che consente di aggiungere spiegazioni e osservazioni alle modifiche apportate; a ogni versione si possono aggiungere delle note che spiegano le modifiche effettuate, le migliorie apportate e ogni altra informazione che può essere utile a tutto il team di lavoro.

Tutti i programmatori sono stati formati col vecchio dogma: "se qualcosa funziona, non cambiarla"; ora, con i sistemi VCS, è possibile apportare modifiche e migliorie senza il timore di "non poter più tornare indietro".

### VCS centralizzati e distribuiti

Esistono due tipologie di sistemi VCS:

1. i **sistemi di versionamento centralizzati CVCS**, progettati per avere una singola copia completa del repository, ospitata in uno o più server, dove gli sviluppatori salvano le modifiche che hanno apportato;
    
2. i **sistemi di versionamento distribuiti DVCS**, dove ogni sviluppatore ha una propria copia locale di tutto il repository e può salvare le modifiche ogni volta che vuole.
    

Git è un sistema di versionamento distribuito, che si contrappone a quelli centralizzati come SVN.

Un VCS, che dipende completamente da un server centralizzato, ha come conseguenza che se il server o il collegamento va giù, gli sviluppatori non saranno in grado di salvare le modifiche e se il repository centrale viene danneggiato, e non esiste il backup, la storia del progetto andrà persa.

Anche in Git esiste un server remoto che contiene l'intero repository condiviso da tutti gli sviluppatori ma, se in un certo momento il server che ospita il repository è giù, gli sviluppatori possono continuare a lavorare senza alcun problema, rimandando la registrazione delle modifiche nel repository condiviso a un secondo momento.

Le differenze tra i due tipi di sistemi possono essere riassunte come segue: con un CVCS abbiamo una completa dipendenza da un server remoto per svolgere il controllo di versione, mentre con un DVCS il server remoto è solo un'opzione per condividere le modifiche.

> **Repository** — Archivio nel quale sono raccolti e conservati dati e informazioni corredati da descrizioni (metadati) che li rendono identificabili dagli utenti.

In un sistema di controllo di versione distribuito, ciascun client fa anche da server per se stesso e possiede una copia locale del repository.

### Che cos'è Git

Ogni programmatore, dopo che ha perso il proprio lavoro almeno una volta, inizia a perfezionare e attuare tecniche proprie di salvataggio dei codici sorgenti, rinominando i file o copiando intere directory su dischi esterni, a volte in formato compresso, per ridurre lo spazio occupato.

Spesso è necessario effettuare il salvataggio non solo a scopo di backup, ma anche per storicizzare la versione distribuita ogniqualvolta la si rilasci al cliente finale, anche perché in ogni progetto lo sviluppo delle nuove versioni deve "convivere" con gli aggiornamenti "on fly" dovuti alla correzione di eventuali bug riscontrati dal cliente.

Git è un sistema controllo di versione che ci permette di effettuare queste operazioni "quasi" automaticamente, con un'interfaccia che ci consente di gestire directory piene di file: permette di salvare, ogniqualvolta lo si ritenga necessario, lo stato del proprio lavoro e di poter caricare ognuno degli stati precedentemente salvati.

In poche parole in Git si crea un piccolo file system dove a ogni salvataggio viene generata una cartella con i soli file che sono stati modificati rispetto al salvataggio precedente, così da effettuare un notevole risparmio di spazio.

L'utente effettua il salvataggio con una semplice istruzione, la **commit**, che compie le seguenti operazioni:

- a) apre una "cartella", cioè fissa un'immagine temporale, alla quale l'utente assegna un nome;
- b) copia i file che sono stati modificati rispetto alla versione precedente;
- c) crea un link per i file che non sono stati toccati rispetto alla commit precedente.

Git offre anche la possibilità di lavorare in cloud mettendo a disposizione una piattaforma di hosting repository gratuita: **GitHub**.

### Installiamo Git

Il software è reperibile alla pagina ufficiale https://git-scm.com/downloads:

- su una macchina Linux l'installazione di Git viene effettuata con i seguenti comandi:
    
    ```
    sudo apt-get updatesudo apt-get install git
    ```
    
- su una macchina Windows al termine del download si avvia automaticamente l'installazione di Git.

### Comandi essenziali per utilizzare Git

I comandi di Git sono veramente tanti, ma possiamo iniziare a utilizzarlo limitandoci a quelli che ci servono per le operazioni essenziali delle "attività quotidiane".

#### Salvare lo stato corrente

Come prima operazione posizioniamoci nella directory di lavoro dove sono presenti i nostri file sorgente e creiamo la prima copia di salvataggio con il comando:

```
$ git init
```

Abbiamo creato una copia locale del repository composta da tre "alberi" che verranno mantenuti da Git:

1. il primo è la directory di lavoro che contiene i file attuali;
2. il secondo è l'Index che fa da spazio di transito per i file;
3. il terzo è l'HEAD che punta all'ultimo commit fatto.

Ora aggiungiamo i file creando una copia del repository:

```
$ git add *.
```

Validiamo questa operazione con il comando:

```
$ git commit -m "Il primo backup"
```

All'esecuzione del comando vengono visualizzati i file che sono inseriti in questo "salvataggio".

Potrebbe essere necessario configurare la nostra identità, cioè indicare a Git il nostro nome e il nostro indirizzo e-mail, se questa non risultasse direttamente accessibile da Git sulla macchina dove stiamo lavorando.

Git ha due strutture dati:

1. un indice (index) modificabile che mantiene informazioni sul contenuto della prossima revisione, che costituisce di fatto lo strato intermedio tra DB e l'albero di lavoro;
2. un append-only object DB che contiene quattro tipologie di oggetti:
    - un oggetto blob: è il contenuto di un file che contiene ogni versione;
    - un oggetto tree: è l'equivalente di una directory;
    - un oggetto commit: collega gli oggetti albero in una cronologia e contiene il nome di un oggetto albero, data e ora, messaggio di archiviazione e i nomi di eventuali commit genitori;
    - un oggetto tag: è un contenitore che contiene riferimenti a un altro oggetto e può contenere metadati aggiuntivi riferiti a un altro oggetto come, per esempio, una firma digitale di un oggetto commit per il rilascio dei dati gestiti da Git.

#### Annullare/Ripristino avanzati

Se si vuole ritornare alla versione precedente si utilizza il comando:

```
$ git reset --hard
```

Se si vuole ritornare indietro e dimenticare le modifiche effettuate dopo un certo punto, dapprima visualizziamo tutte le commit che abbiamo eseguito con il comando:

```
$ git log
```

Viene visualizzato per ogni commit recenti il corrispondente codice SHA1: basta riportare le prime 4 cifre del commit al quale vogliamo ritornare e digitare:

```
$ git reset --hard 6409
```

Possiamo anche selezionare degli specifici commit per annullarli, utilizzando il comando:

```
$ git revert 88a9
```

che annulla solo l'ultimo commit con il dato codice hash.

### I branch

È anche possibile effettuare un "ritorno al passato temporaneo", senza cancellare, ma solo per "dare una occhiatina", il comando è il seguente:

```
$ git checkout 6409
```

Con questa operazione preserviamo i commit successivi a quello nel quale ora siamo posizionati.

Questa realtà parallela viene chiamata **ramificazione o branch**.

Questa possibilità viene offerta perché potrebbe essere necessario realizzare degli sviluppi paralleli su un progetto: per esempio abbiamo una versione in produzione che sta per essere rilasciata e viene richiesto lo sviluppo di nuove feature che magari hanno una priorità secondaria e, quindi, non sono urgenti, ma saranno da aggiungere solo dopo la messa in esercizio di una prima tranche.

Con il branching viene creata una ramificazione della versione principale (master) che consiste in una versione identica alla principale su cui si può agire però in maniera indipendente.

Una volta effettuato un branch le operazioni di modifica e commit avvengono appunto nel branch e non nella versione master: quando abbiamo completato le modifiche "di prova" nel nuovo ramo possiamo far confluire tutto nella master.

Al termine dello sviluppo parallelo i due percorsi possono confluire e proseguire assieme mediante un'operazione di **merge**, che riunisce le modifiche in un'unica versione.

Elenchiamo, a titolo di esempio, altri comandi che operano sui branch:

```
$git checkout master      // si torna al branch principale (master)
$git checkout -d <nome_branch>   // cancella un branch
$git merge <nome_branch>      // incorpora nel merge le modifiche fatte in un branch
$git diff [branch_sorgente] [branch target]  // visualizza le differenze tra due branch
```

L'elenco completo dei comandi è disponibile all'indirizzo https://git-scm.com/doc.

> **Esempio — Quattro tipi classici di branching:**
> 
> - **Branch per tecnologia:** un branch comune per versioni su piattaforme diverse (Unix e Windows), con merge finale.
> - **Branch per componente:** sviluppo parallelo di Component A e Component B, con merge nella versione di sviluppo.
> - **Branch per task:** sviluppo parallelo di Task A e Task B con branch e merge successivi.
> - **Branch per release:** Release 1 e Release 2 che evolvono in parallelo con versioni indipendenti.

### Generare un diario delle modifiche (changelog)

Certi progetti richiedono un diario delle modifiche, anche chiamato changelog, ed è possibile crearlo digitando:

```
$ git log > ChangeLog.txt
```

viene quindi creato un file di testo con l'elenco di tutte le rettifiche effettuate.

### Rivedere le modifiche

Ritroverete le modifiche fatte dall'ultimo commit con:

```
$ git diff
```

oppure quelle a partire da ieri con:

```
$ git diff "@{yesterday}"
```

oppure tra una versione specifica e due versioni fa:

```
$ git diff 1b6d "master~2"
```

disponibile anche con il seguente comando:

```
$ git whatchanged --since="2 weeks ago"
```

### Condivisione di un progetto

La condivisione di un progetto permette di soddisfare due esigenze:

- a) lavoro di un utente su macchine diverse (desktop ufficio, desktop domestico, laptop ecc.);
- b) lavoro di gruppo, quindi condivisione di parti di codice.

Possiamo avere due modalità di condivisione dei file:

1. in rete locale;
2. in cloud.

Nelle software house la tendenza odierna è di privilegiare la modalità in cloud perché questa tecnologia garantisce elevati standard di sicurezza e, anche perché, negli ultimi tempi sono stati realizzati prodotti eccellenti e molto semplici, con interfaccia GUI che rendono estremamente agevole la condivisione in gruppo del software sviluppato.

### Condivisione con servizi di hosting

Git è un VCS distribuito, questo significa che, a parte quello locale, possiamo avere una copia del repository ospitata in un server remoto che, oltre a rendere pubblico il codice sorgente del progetto, viene utilizzata per consentire la collaborazione di più soggetti allo sviluppo.

La piattaforma più conosciuta per l'hosting di repository Git è **GitHub** (https://github.com/), ma non offre archivi privati nella versione gratuita.

In alternativa a GitHub, una piattaforma di hosting con repository privati illimitati è **Bitbucket** (scaricabile all'indirizzo https://bitbucket.org/product).

#### Creare un repository remoto

Dopo aver creato il repository remoto, dobbiamo collegarlo al nostro repository locale nel seguente modo:

```
git remote add origin https://github.com/paolocamagni/tpsit.git
```

dove `origin` è il nome che viene dato di default al repository remoto.

Adesso siamo pronti a inviare i file del nostro repository locale a quello remoto con:

```
git push origin
```

L'ultima versione dei file inviata al server remoto viene indicata come HEAD: in pratica HEAD rappresenta la versione corrente del nostro progetto.

Se il server principale ha nuove modifiche introdotte da altri sviluppatori, il push fallisce e lo sviluppatore deve aggiornarsi all'ultima versione, risolvere eventuali conflitti, e provare di nuovo a eseguire il caricamento.

#### Clonare (scaricare) un repository remoto

Nel caso in cui volessimo partecipare a un progetto preesistente per cui esiste già un repository remoto condiviso, si procede con quella che si chiama una clonazione per copiare il repository remoto in locale sulla nostra macchina. Per realizzare ciò si usa:

```
$ git clone https://github.com/paolocamagni/tpsit.git
```

Per mantenere aggiornato il nostro repository locale con le modifiche che apportano gli altri membri del gruppo utilizziamo il seguente comando:

```
git fetch origin
```

Questo comando scarica gli ultimi aggiornamenti presenti nel repository.

È tuttavia importante rilevare che tali modifiche non si fondono con le modifiche apportate da noi: questa operazione va fatta manualmente.

Esiste però il comando pull che permette di aggiornare e automaticamente incorporare le nostre modifiche (merge):

```
$git pull
```

Tutti i conflitti nel momento del merge devono essere risolti e validati:

```
$ git commit -a
```

> Naturalmente perché i comandi pull e push precedenti funzionino bisogna avere accesso SSH.

### Conclusioni

Abbiamo visto come i sistemi di controllo di versione aiutino a soddisfare un'importante esigenza degli sviluppatori: poter identificare senza problemi ogni punto di tutta la storia di un progetto e poter tornare a qualsiasi punto in qualsiasi momento; quindi per soddisfare questa esigenza abbiamo visto come Git mette a disposizione innumerevoli strumenti che rendono la vita degli sviluppatori più semplice, non per niente Git dimostra oggi di essere lo strumento di versioning più gettonato nella comunità dei programmatori.

Le possibilità offerte da Git sono molteplici: noi abbiamo semplicemente "introdotto" i concetti essenziali, rimandando alla documentazione ufficiale lo studio completo del prodotto.

Un altro prodotto di versioning popolare quasi quanto Git è **Bazaar**, scaricabile dall'indirizzo http://bazaar.canonical.com/en/.

Essendo Bazaar molto giovane, i suoi progettisti hanno potuto imparare dagli errori commessi nel passato ed evitarli, così come hanno potuto rendere agevole la portabilità e l'interoperabilità con altri sistemi di controllo di versione.

### Mettiti alla prova — Utilizzo di un VCS

Inizia a utilizzare Git, seguendo quando indicato passo passo nell'Esercitazione, per creare un tuo repository locale dove versionare un progetto al quale stai lavorando.

Dopo aver effettuato almeno dieci salvataggi, crea una situazione di branch dopo il sesto commit e visualizzala con l'interfaccia Git GUI.

Quindi crea un repository su GitHub con nome `<tuonome>/tpsit.git` da condividere con la classe e/o con il tuo gruppo di lavoro e utilizza tutte le opzioni disponibili in modo da comprendere le potenzialità di questo strumento.