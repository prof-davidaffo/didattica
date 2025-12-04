## Capitolo 1 Come funzionano oggi le nostre comunicazioni digitali
Negli ultimi dieci anni la maggior parte delle app di messaggistica ha adottato sistemi di protezione sempre più avanzati per garantire che le conversazioni degli utenti restassero private. Questo progresso non è casuale: è una risposta diretta alla crescita di minacce informatiche, furti di dati, sorveglianza illegittima e abusi tecnologici. Per capire l’impatto della proposta Chat Control è quindi indispensabile comprendere prima **come funziona oggi la sicurezza delle nostre chat**.
### Comunicazioni in chiaro e comunicazioni cifrate
Quando un messaggio viaggia in rete, può farlo in due modi:
* **in chiaro**, leggibile da chiunque intercetti il traffico;
* **cifrato**, cioè trasformato in una sequenza illeggibile a chi non possiede la chiave corretta.
Nelle prime generazioni di servizi digitali, molte comunicazioni erano in chiaro oppure cifrate solo durante il trasporto. Questo significava che il contenuto era vulnerabile sia durante il passaggio nei server, sia nel punto in cui la piattaforma gestiva i dati.
### Crittografia moderna: il salto di qualità
Per risolvere questo problema, le piattaforme hanno progressivamente adottato sistemi crittografici robusti. La crittografia moderna utilizza algoritmi matematici che permettono di rendere un messaggio completamente illeggibile senza la chiave di decifratura. L’obiettivo è impedire che terze parti — hacker, criminali, governi non autorizzati o persino la piattaforma stessa — possano leggere il contenuto.
### La crittografia end-to-end (E2EE)
Il passo più importante per la sicurezza digitale è stato l’introduzione della **crittografia end-to-end**, nota come E2EE. In questo modello:
* il messaggio viene cifrato **sul dispositivo del mittente**;
* viaggia in rete sotto forma di dati illeggibili;
* viene decifrato **solo sul dispositivo del destinatario**.
Nemmeno il provider del servizio — WhatsApp, Signal, Telegram (nelle chat segrete), iMessage — può accedere al contenuto. L’unica cosa che i server possono vedere sono i **metadati**: chi parla con chi, quando e per quanto tempo. Non possono vedere *che cosa* ci si dice.
### Perché l’E2EE è diventato uno standard
L’adozione dell’E2EE è stata accelerata da vari fattori:
* aumento degli attacchi informatici alle piattaforme;
* scandali sulla sorveglianza illegale;
* richiesta crescente di protezione da parte degli utenti;
* necessità di garantire sicurezza a giornalisti, attivisti, minoranze e professionisti che trattano informazioni sensibili.
Oggi l’E2EE è considerato dagli esperti di sicurezza una delle tecnologie più efficaci per proteggere la società digitale.
## Capitolo 2 Cosa cambia con la proposta Chat Control
Per capire l’impatto della proposta dell’Unione Europea è utile confrontare il funzionamento attuale delle comunicazioni digitali con ciò che avverrebbe se venisse introdotto il modello di scansione preventiva lato dispositivo. Il cambiamento non è marginale: rappresenta una trasformazione strutturale del modo in cui i cittadini europei comunicano online.
### L’obiettivo dichiarato: contrastare il materiale pedopornografico (CSAM)
La proposta nasce con un intento apparentemente semplice: individuare e bloccare la diffusione di materiale di abuso su minori. È un obiettivo legittimo e condivisibile, ed è proprio questo che rende il dibattito complesso. L’idea alla base del Chat Control è che, per prevenire questi reati, sia necessario analizzare i contenuti *prima* che vengano cifrati, così da renderli leggibili e confrontabili con database di materiale già noto.
### Il principio del client-side scanning
La svolta introdotta dal Chat Control si chiama **client-side scanning**. Oggi un messaggio viene cifrato e inviato senza che la piattaforma possa leggerne il contenuto. Con la scansione lato dispositivo la catena diventerebbe:
1. L’utente scrive un messaggio o scatta una foto.
2. Il contenuto viene analizzato localmente tramite un algoritmo fornito dalla piattaforma.
3. Se l’algoritmo trova qualcosa di sospetto, genera una segnalazione.
4. Solo *dopo* la scansione il messaggio può essere cifrato e inviato.
L’E2EE rimane formalmente attiva, ma diventa una protezione svuotata: il contenuto non è più privato, perché viene analizzato *prima* che la cifratura possa proteggerlo.
### Una trasformazione concettuale: dalla sicurezza alla sorveglianza preventiva
L’aspetto che preoccupa gli esperti è il cambio di paradigma:
* Oggi i dispositivi comunicano **in modo privato per default**.
* Con il client-side scanning comunicherebbero **sotto analisi costante**.
Non si tratta più di difendersi da minacce esterne. Il controllo verrebbe integrato direttamente nel dispositivo dell’utente, che diventerebbe lo strumento principale di sorveglianza.
### Cosa verrebbe scansionato
La proposta include:
* testi, foto, video;
* messaggi vocali;
* immagini salvate o scattate con la fotocamera;
* file e allegati;
* eventualmente contenuti generati da app di terze parti.
Questa scansione non è puntuale su singoli sospetti, ma prevista come meccanismo di **sorveglianza generalizzata** applicato a tutti.
### Conseguenze dirette sulla crittografia end-to-end
Molte piattaforme hanno dichiarato che, pur non disattivando formalmente la crittografia, il client-side scanning ne annullerebbe la funzione. Il motivo è tecnico e semplice:
* la crittografia protegge il contenuto durante il viaggio;
* il client-side scanning controlla il contenuto **prima** che il viaggio inizi.
È come mettere un lucchetto robustissimo su una lettera, ma avere qualcuno che legge la pagina mentre la scrivi.
### Il problema dell’affidabilità: falsi positivi, dataset imperfetti, AI fallibile
Gli algoritmi proposti per identificare immagini e contenuti illegali si basano su:
* hashing percettivo (può confondere contenuti innocenti);
* reti neurali per la classificazione;
* confronto con database di immagini note.
Tutte queste tecnologie presentano margini d’errore. Ciò può portare a:
* segnalazioni ingiustificate;
* apertura di indagini su contenuti non illegali;
* grave stress psicologico per persone totalmente innocenti.
### Un cambiamento nella relazione cittadino–Stato
L’effetto complessivo è la nascita di un modello in cui la vita digitale non è più considerata privata, ma costantemente verificata. Questo rappresenta un punto di svolta nella storia della tecnologia civile europea.
## Capitolo 3 Il contesto europeo e il mito del “going dark”
Per comprendere davvero la proposta Chat Control non basta analizzare l’aspetto tecnico: bisogna capire **perché** l’Unione Europea sta spingendo verso un modello di sorveglianza preventiva delle comunicazioni digitali. Il contesto politico, istituzionale e narrativo è fondamentale per interpretare ciò che sta accadendo.
### Il ruolo dell’High-Level Group on Access to Data for Effective Law Enforcement
Nel 2022 la Commissione Europea ha istituito un gruppo di esperti chiamato **High-Level Group (HLG) sull’accesso ai dati per l’applicazione della legge**. L’obiettivo dichiarato era esplorare soluzioni per facilitare l’accesso ai dati da parte delle forze dell’ordine, specialmente quando le comunicazioni sono protette da crittografia end-to-end.
Il gruppo ha riunito:
* rappresentanti delle forze dell’ordine;
* funzionari della Commissione;
* esperti tecnici;
* aziende del settore;
* società civile.
Tuttavia, molte organizzazioni — tra cui EDRi (European Digital Rights) — hanno denunciato che il processo:
* non era realmente equilibrato tra sicurezza e diritti;
* dava poco spazio a esperti indipendenti;
* non considerava soluzioni alternative non intrusive.
### Il documento “A Mission Failure”: una bocciatura senza precedenti
EDRi ha pubblicato un’analisi durissima intitolata **“High-Level Group Going Dark Outcome: A Mission Failure”**, in cui evidenzia vari problemi:
* nessuna soluzione tecnica presentata è risultata compatibile con l’E2EE senza compromettere la sicurezza di tutti;
* molte idee discusse sono state considerate “fantascienza tecnologica” da esperti crittografici;
* l’intero processo sembrava orientato alla giustificazione di misure invasive, più che alla ricerca di opzioni realmente equilibrate.
In sintesi: **non esistono soluzioni che consentano di leggere i messaggi cifrati senza indebolire la sicurezza di tutti**. Gli esperti hanno confermato un fatto noto da anni: non esiste la “backdoor buona”.
### La narrativa del “going dark”
Le forze dell’ordine europee e statunitensi utilizzano da anni l’espressione **“going dark”**, sostenendo che la diffusione dell’E2EE stia “oscurando” le capacità investigative. È una narrativa potente, perché mette sicurezza e privacy in apparente conflitto.
Gli esperti però criticano questa visione per diversi motivi:
1. **La disponibilità di dati non è mai stata così alta.**
   Metadati, dati di localizzazione, tracciamenti commerciali, social network, cloud storage: l’accesso delle autorità è di fatto aumentato.
2. **L’E2EE non impedisce le indagini**, come confermano numerosi rapporti.
   Spesso i dispositivi vengono sequestrati e sbloccati tramite tecniche forensi, che restano estremamente efficaci.
3. **La complessità dei crimini digitali richiede competenze, non scorciatoie tecniche.**
4. **Proporre soluzioni invasive per tutti per colpire pochi criminali è inefficiente e sproporzionato.**
La narrativa del “going dark” funziona politicamente, ma è debole tecnicamente.
### Il peso politico del contrasto agli abusi sui minori
Un altro elemento del contesto è la scelta, da parte della Commissione, di legare il dibattito alla lotta al materiale di abuso su minori (CSAM). Un tema estremamente sensibile, che rende difficile criticare la proposta senza temere di apparire “dalla parte sbagliata”.
Molti osservatori sottolineano che questa scelta retorica:
* crea un clima emotivo che ostacola un’analisi razionale;
* sfrutta la gravità del tema per giustificare tecnologie invasive;
* distoglie l’attenzione da soluzioni alternative più efficaci e meno pericolose.
### Pressioni interne ed esterne all’UE
Il contesto politico internazionale spinge nella stessa direzione:
* negli Stati Uniti FBI e DOJ fanno pressioni contro l’E2EE da oltre un decennio;
* nel Regno Unito l’Online Safety Act tenta di introdurre obblighi simili;
* in Australia e India sono già state avviate normative ostili alla crittografia.
L’Europa sembra inserirsi in questa tendenza globale verso la sorveglianza preventiva, con il rischio di diventare un modello per altri Paesi meno democratici.
### Perché questo contesto è essenziale per capire Chat Control
La proposta non nasce nel vuoto. Deriva da:
* pressioni politiche delle forze dell’ordine;
* necessità di mostrarsi “duri” contro i reati digitali;
* una narrativa diffusa che presenta la privacy come un ostacolo alla sicurezza;
* movimenti culturali che normalizzano la sorveglianza.
È quindi fondamentale comprendere che Chat Control non è solo una questione tecnica, ma il risultato di un clima politico in cui la **privacy è sempre più vista come un lusso, non come un diritto**.
## Capitolo 4 Come funziona tecnicamente la scansione dei contenuti
Per valutare la portata del Chat Control è necessario capire in modo chiaro e concreto **come** funzionerebbe la scansione dei messaggi. Questa parte è cruciale perché mostra il cuore del problema: l’introduzione di un meccanismo di controllo permanente all’interno dei dispositivi personali.
### Il principio della scansione locale (client-side scanning)
La scansione locale è un sistema software che si inserisce **tra la creazione del contenuto e la cifratura**. Funziona così:
1. L’utente scrive un messaggio, scatta una foto o registra un audio.
2. Il contenuto viene analizzato dal sistema di controllo presente nel dispositivo.
3. L’algoritmo confronta il contenuto con modelli e database di materiale illegale.
4. Se viene rilevata una corrispondenza o un sospetto, il dispositivo genera una segnalazione.
5. Solo dopo questa verifica il contenuto viene cifrato e inviato.
La cifratura end-to-end resta quindi “in facciata”, ma viene resa irrilevante, perché il contenuto non è più privato **prima** di essere cifrato.
### Il ruolo dell’hashing percettivo
Per individuare immagini di abuso già note, il sistema userebbe tecniche di hashing. Tradizionalmente, un hash è una trasformazione irreversibile che cambia completamente anche per piccole modifiche dell’immagine. Non è utile in questo caso.
Perciò si usa il **perceptual hashing**, una forma di hashing che riconosce immagini “simili” anche se ruotate, ritagliate o leggermente modificate. Questo però comporta problemi:
* immagini innocenti possono risultare simili a immagini presenti nei database;
* basta applicare filtri o modifiche per aggirare il riconoscimento;
* non esiste un valore oggettivo di “somiglianza”, quindi gli errori sono inevitabili.
### L’uso dell’intelligenza artificiale
Per i contenuti non presenti nei database (la grande maggioranza) il sistema userebbe modelli di intelligenza artificiale addestrati per riconoscere situazioni di abuso. Questo comporta tre rischi fondamentali:
* **falsi positivi**: il modello può classificare come sospette immagini innocenti;
* **bias**: errori sistematici legati ai dati usati nell’addestramento;
* **intrusività totale**: qualsiasi foto privata verrebbe analizzata, incluse quelle che non vengono mai inviate.
Gli stessi ricercatori di IA sottolineano che i modelli di classificazione non possono raggiungere affidabilità perfetta su fenomeni tanto complessi.
### Scansione dei testi
Per i messaggi testuali, lo scanning si baserebbe su:
* identificazione di pattern linguistici;
* analisi semantica dei contenuti;
* confronto con frasi presenti nei dataset.
Questo implica che **ogni parola digitata** verrebbe processata e interpretata da un algoritmo prima ancora di essere inviata.
### Cosa succede quando un contenuto viene segnalato
Quando il sistema individua un contenuto “sospetto”, avvengono vari passaggi:
1. Il messaggio o l’immagine sospetti vengono inviati a un revisore umano della piattaforma (o direttamente a un centro di segnalazione).
2. Il revisore valuta se la segnalazione è fondata.
3. Se lo è, viene informata la polizia.
4. Parte un’indagine, anche nel caso in cui l’utente fosse totalmente innocente.
Questo flusso crea diversi problemi:
* possibilità di visualizzazione non autorizzata di contenuti privati;
* rischi legati alla conservazione e gestione dei dati;
* impatto psicologico devastante sulle persone erroneamente accusate.
### L’effetto collaterale inevitabile: la creazione di una backdoor
Molti esperti affermano che il client-side scanning è, di fatto, una forma di backdoor. Anche se viene presentato come un sistema di controllo locale, introduce un punto debole strutturale nel dispositivo:
* un software che può leggere tutto;
* un meccanismo che può essere ampliato per nuove funzioni;
* un accesso che può essere richiesto da altri Stati o governi non democratici.
La storia tecnologica mostra che **qualsiasi porta di accesso legale diventa rapidamente un bersaglio per attacchi illegali**.
### Una sorveglianza totale e normalizzata
Il risultato finale è che ogni dispositivo personale:
* controllerebbe costantemente ciò che l’utente produce;
* lo confronterebbe con database governativi;
* invierebbe segnalazioni alle autorità.
In altre parole: una forma automatizzata di ispezione preventiva dei contenuti privati, mai vista prima in democrazie liberali su questa scala.
## Capitolo 5 Tre storie reali oggi, e cosa potrebbero diventare con Chat Control
Per capire cosa potrebbe significare Chat Control nella pratica non serve immaginare scenari di fantascienza. È sufficiente guardare a casi reali già avvenuti nel mondo del Web 2.0, dove piattaforme centralizzate hanno usato algoritmi e accessi privilegiati ai dati degli utenti. Queste tre storie mostrano cosa accade quando:
* un algoritmo interpreta male un contenuto,
* dei dipendenti abusano del loro accesso,
* un’azienda usa i dati per colpire chi la critica.
  Con Chat Control, la stessa logica verrebbe estesa alle **nostre chat private**.
### Storia 1 Il padre, Google Photos e la foto “sbagliata”
Un padre fotografa l’infezione intima del figlio per inviare le immagini al medico. Le foto finiscono automaticamente su Google Photos.
Gli algoritmi di rilevamento le classificano come potenziale materiale di abuso. Risultato:
* l’account viene sospeso,
* scatta una segnalazione,
* la polizia viene coinvolta,
* alla fine l’uomo è riconosciuto innocente,
* ma l’account viene comunque eliminato con tutti i dati collegati.
**Cosa succederebbe con Chat Control?**
La stessa dinamica verrebbe spostata *dentro lo smartphone*:
* la foto viene analizzata prima ancora di essere inviata,
* il sistema locale la classifica come sospetta,
* la segnalazione parte automaticamente verso centri di analisi e forze dell’ordine,
* l’utente non ha alcun controllo sul processo.
La differenza è che:
* oggi puoi teoricamente uscire da Google Photos,
* con Chat Control la scansione sarebbe **obbligatoria per legge** in tutte le app di messaggistica.
Un singolo errore algoritmico potrebbe bastare per aprire un fascicolo su una famiglia innocente.
### Storia 2 I dipendenti-spioni di Amazon e Tesla
Inchieste giornalistiche hanno rivelato che alcuni dipendenti:
* di Amazon Ring potevano vedere e condividere video delle telecamere di sorveglianza degli utenti,
* di Tesla potevano accedere a clip registrate dalle auto, incluse scene private riprese nei garage o nei vialetti.
In entrambi i casi:
* c’è un’infrastruttura centralizzata con accesso privilegiato,
* alcuni dipendenti hanno abusato di quell’accesso per guardare e condividere contenuti privati.
**Cosa succederebbe con Chat Control?**
Per far funzionare la scansione su miliardi di messaggi servirebbe:
* un’infrastruttura centrale per gestire segnalazioni e revisione dei contenuti “sospetti”,
* personale umano che controlla cosa è stato segnalato dall’algoritmo.
Questo significa che:
* esisterebbero persone con il potere di vedere frammenti delle tue chat, foto, audio “sospetti”,
* basterebbe pochissimo per ripetere gli abusi già visti con video delle telecamere e clip delle auto,
* l’oggetto del voyeurismo non sarebbero più solo i video di sorveglianza, ma la vita intima delle persone: chat personali, foto private, immagini di minori, momenti di vulnerabilità.
Quello che oggi è accaduto in contesti limitati (Ring, Tesla) diventerebbe una possibilità strutturale a livello di **tutta la popolazione**.
### Storia 3 TikTok e il monitoraggio dei giornalisti
Alcuni articoli hanno raccontato come TikTok abbia usato i dati interni per:
* monitorare giornalisti critici,
* tracciare la loro posizione fisica,
* incrociare i loro movimenti con quelli dei dipendenti.
Qui la logica è diversa:
* i dati vengono usati non per “proteggere gli utenti”,
* ma per controllare e intimidire chi indaga sull’azienda.
**Cosa succederebbe con Chat Control?**
Immagina la stessa mentalità applicata a:
* oppositori politici,
* attivisti,
* organizzazioni scomode,
* giornalisti che indagano su governi o grandi aziende.
Se esiste un’infrastruttura che:
* analizza preventivamente ogni contenuto,
* permette di etichettare certe comunicazioni come “problematiche”,
* rende possibile collegare identità, contenuti e relazioni,
basta un cambio di governo o di interpretazione della legge per:
* estendere il controllo oltre il CSAM,
* colpire dissenso, satira, critica politica,
* usare le chat come strumento di pressione su individui scomodi.
Questa storia mostra che quando un’azienda ha abbastanza dati, la tentazione di usarli per difendere il proprio interesse è reale. Con Chat Control, questa possibilità verrebbe normalizzata a livello di **infrastruttura legale**.
### Perché queste tre storie sono importanti per capire Chat Control
Tutte e tre hanno un filo comune:
* **centralizzazione del potere informativo**,
* **accesso privilegiato ai dati**,
* **abuso o errore nel loro utilizzo**.
Chat Control aggiunge un livello in più:
* porta questa logica dentro le app di messaggistica cifrate,
* rende la scansione preventiva obbligatoria per legge,
* trasforma errori ed abusi da eventi locali a rischi sistemici.
Quello che oggi è successo a “Mark”, agli utenti delle telecamere smart o ai giornalisti di TikTok, domani potrebbe diventare:
* un errore dell’algoritmo sul telefono di uno studente,
* un abuso di un operatore che rivede segnalazioni,
* uno strumento per sorvegliare chi dà fastidio al potere.
## Capitolo 6 Le critiche più importanti
La proposta Chat Control ha generato un’opposizione quasi unanime tra ricercatori di sicurezza, esperti di crittografia, organizzazioni per i diritti digitali e molte aziende tecnologiche. Le critiche non derivano da posizioni ideologiche, ma da analisi tecniche, giuridiche ed etiche consolidate. È utile raccogliere le principali in modo sistematico.
### 1. Sorveglianza indiscriminata di tutta la popolazione
La critica fondamentale riguarda la trasformazione del modello investigativo:
* Oggi si indaga su individui sospettati.
* Con Chat Control si indaga *su tutti*, costantemente.
Questa inversione del principio giuridico — da sorveglianza mirata a sorveglianza di massa — mina la presunzione di innocenza e introduce un controllo generalizzato dei cittadini senza alcun mandato.
In altre parole: **si passa da “controllare i criminali” a “controllare tutti per trovare i criminali”**.
### 2. Neutralizzazione della crittografia end-to-end
Gli esperti hanno chiarito che non è possibile scansionare i contenuti sul dispositivo senza rendere la crittografia end-to-end sostanzialmente inutile. Le piattaforme avrebbero un dovere tecnico di analizzare ogni contenuto prima che venga protetto, introducendo un punto di accesso permanente nel dispositivo.
È il principio della “backdoor”: una porta lasciata aperta, anche se con buone intenzioni.
### 3. Vulnerabilità di sicurezza create intenzionalmente
Inserire nei dispositivi software che:
* può leggere tutto,
* può inviare dati a terzi,
* può essere aggiornato da remoto,
espone gli utenti a rischi enormi. Una volta creata un’infrastruttura del genere:
* hacker possono tentare di sfruttarla;
* governi autoritari possono richiederne l’accesso;
* aziende malevole possono imitarla.
La storia della sicurezza informatica dimostra che **ogni debolezza introdotta per scopi legittimi diventa un vettore di attacco**.
### 4. Inefficacia contro criminali realmente organizzati
Chat Control colpirebbe soprattutto gli utenti comuni, non i soggetti pericolosi. I criminali possono facilmente eludere la scansione:
* usando app senza scanning;
* usando sistemi di cifratura personalizzati;
* manipolando le immagini per ingannare l’hashing;
* impacchettando dati dentro contenitori cifrati;
* comunicando tramite darknet o servizi esteri.
In altre parole, Chat Control renderebbe più vulnerabili i cittadini rispettosi della legge, senza ostacolare significativamente chi ha mezzi e competenze.
### 5. Rischio di “function creep” (estensione silenziosa delle funzioni)
Una volta implementata la tecnologia, è facile ampliarne l’uso. La storia delle infrastrutture di sorveglianza mostra che:
* strumenti creati per contrastare il terrorismo sono stati usati per reati minori;
* tecnologie pensate per l’emergenza sono diventate permanenti;
* sistemi di controllo introdotti per i minori si sono estesi agli adulti.
Il client-side scanning potrebbe in futuro essere esteso ad altri contenuti:
* immagini politiche;
* materiale considerato “estremista” o “controverso”;
* discorsi critici verso governi;
* contenuti protetti da copyright.
La tecnologia permette queste estensioni con un semplice aggiornamento software.
### 6. Violazione della privacy e dei diritti fondamentali
Le principali ONG per i diritti digitali — EDRi, Access Now, noyb, StopScanningMe, StopChatControl — concordano che la proposta violi vari articoli della Carta dei diritti fondamentali dell’UE:
* diritto alla privacy,
* libertà di espressione,
* protezione dei dati personali,
* presunzione di innocenza,
* libertà di informazione.
Il concetto stesso che un dispositivo privato debba analizzare i contenuti dell’utente è considerato incompatibile con i principi democratici.
### 7. Impatto sui gruppi più vulnerabili
I gruppi che necessitano maggiormente di privacy sarebbero anche i più danneggiati:
* attivisti e oppositori politici,
* minoranze perseguitate,
* giornalisti che trattano fonti sensibili,
* avvocati, medici e professionisti che richiedono confidenzialità,
* giovani LGBTQ+ con famiglie non accoglienti,
* vittime di violenza domestica.
Per tutti questi individui, la possibilità di comunicare in modo privato non è un lusso, ma una condizione di sicurezza personale.
### 8. Effetti psicologici della sorveglianza continua
Sapere che un algoritmo analizza ogni contenuto produce:
* autocensura,
* ansia,
* riduzione della spontaneità,
* deterrenza nell’esprimere opinioni.
È il fenomeno documentato del “chilling effect”. Una società in cui ogni comunicazione è potenzialmente osservata è una società meno libera, meno creativa e meno democratica.
## Capitolo 7 Le posizioni ufficiali e il dibattito pubblico
La proposta di regolamento europeo per prevenire e combattere l’abuso sessuale sui minori online (CSAR, comunemente detta Chat Control) ha acceso uno scontro molto netto tra diversi attori: istituzioni europee, governi nazionali, forze dell’ordine, aziende tecnologiche, ONG e comunità di esperti. ([Wikipedia][1])
### Le istituzioni europee
La Commissione Europea, in particolare il Commissario per gli Affari Interni Ylva Johansson, presenta la proposta come uno strumento necessario per proteggere i minori online e colmare le presunte lacune investigative create dalla diffusione della crittografia end-to-end. ([Wikipedia][1])
La narrativa istituzionale insiste su alcuni punti:
* la gravità e l’aumento dei reati di abuso online;
* la necessità di dotare le forze dell’ordine di “strumenti moderni”;
* l’idea che senza scansione preventiva “le indagini andrebbero al buio” (going dark). ([European Digital Rights (EDRi)][2])
Nel 2025 il dibattito in Consiglio è diventato estremamente teso, con paesi che hanno cambiato più volte posizione, rinvii di voto e proposte di compromesso, come il passaggio da scansione obbligatoria a “scansione volontaria” proposta dalla presidenza danese, che però continua a preoccupare gli esperti. ([euronews][3])
### I governi nazionali
I governi degli Stati membri non sono affatto unanimi. Alcuni paesi spingono da anni per soluzioni che limitino la crittografia, mentre altri sottolineano l’incompatibilità di queste misure con le proprie costituzioni e con la Carta dei diritti fondamentali dell’UE. ([TechRadar][4])
Un aspetto didatticamente interessante per gli studenti è che:
* la posizione dei governi può cambiare sotto pressione dell’opinione pubblica;
* la mobilitazione di ONG e attivisti ha portato diversi Stati (ad esempio Germania, Italia, Belgio) a rivedere o mettere in discussione il proprio sostegno;
* in più momenti il voto in Consiglio è stato rinviato proprio per mancanza di maggioranza stabile. ([TechRadar][5])
### Le forze dell’ordine
Le forze dell’ordine europee sostengono la proposta come risposta alla difficoltà di indagare in un mondo sempre più cifrato. Il messaggio è chiaro: senza accesso ai contenuti, molti casi di abuso non verrebbero scoperti. Il concetto chiave usato è quello di “going dark”, cioè la perdita di capacità investigative dovuta alla crittografia. ([European Digital Rights (EDRi)][2])
Tuttavia:
* spesso viene sottovalutata la quantità enorme di dati già oggi disponibili tramite metadati, social network, cloud, dati commerciali;
* gli stessi rapporti tecnici riconoscono che non esiste una soluzione “magica” che permetta di leggere i contenuti cifrati senza indebolire la sicurezza per tutti. ([European Digital Rights (EDRi)][6])
### Le ONG e i difensori dei diritti digitali
Organizzazioni come EDRi, Access Now, noyb, StopChatControl e StopScanningMe sono in prima linea contro il Chat Control. ([European Digital Rights (EDRi)][6])
I punti centrali delle loro critiche:
* la proposta introduce di fatto **sorveglianza di massa preventiva** su tutta la popolazione, attraverso il client-side scanning;
* non rispetta i principi di necessità e proporzionalità richiesti dal diritto europeo;
* crea un’infrastruttura di controllo facilmente estendibile ad altri scopi (function creep);
* è tecnicamente insicura e inefficace contro criminali meglio attrezzati.
EDRi arriva a definire il percorso del gruppo “Going Dark” come una “mission failure”, sottolineando che nessuna delle soluzioni discusse riesce a conciliare efficacemente investigazioni e rispetto dei diritti fondamentali. ([European Digital Rights (EDRi)][2])
### Le aziende tecnologiche e gli esperti di sicurezza
Molte aziende che offrono servizi cifrati (Signal, WhatsApp, provider di cloud europei come Nextcloud) hanno preso posizione pubblica contro il Chat Control, spiegando che:
* il client-side scanning equivale a una backdoor;
* obbligare o “incentivare” la scansione mina la fiducia degli utenti e la sicurezza complessiva di Internet;
* non esiste un modo per limitare queste tecnologie a un solo scopo se vengono una volta implementate. ([Nextcloud][7])
Un gruppo di 18 accademici europei di alto profilo nel campo della sicurezza e della privacy ha pubblicato nel 2025 una lettera aperta che denuncia i “rischi elevati per la società” e l’inefficacia delle misure proposte, anche nella versione “volontaria”. ([TechRadar][8])
### La società civile e le campagne pubbliche
Campagne come **StopChatControl** e **StopScanningMe** svolgono un ruolo di informazione e mobilitazione:
* spiegano in modo accessibile come funzionerebbe tecnicamente il sistema;
* forniscono strumenti per contattare parlamentari e governi;
* organizzano giornate di azione, petizioni, materiali didattici. ([stopchatcontrol.eu][9])
Per una lezione di educazione civica, queste campagne sono preziose perché mostrano:
* come i cittadini possano intervenire nel processo legislativo europeo;
* come i diritti digitali siano difesi da reti transnazionali;
* che le scelte tecnologiche sono sempre anche scelte politiche.
- [European Digital Rights (EDRi)](https://edri.org/our-work/chat-control-what-is-actually-going-on/?utm_source=chatgpt.com)
- [European Digital Rights (EDRi)](https://edri.org/our-work/most-criticised-eu-law-of-all-time/?utm_source=chatgpt.com)
- [European Digital Rights (EDRi)](https://edri.org/our-work/high-level-group-going-dark-outcome-a-mission-failure/?utm_source=chatgpt.com)
- [stopchatcontrol.eu](https://stopchatcontrol.eu/?utm_source=chatgpt.com)
- [TechRadar](https://www.techradar.com/computing/cyber-security/its-official-germany-will-not-agree-to-chat-control-heres-everything-we-know?utm_source=chatgpt.com)
- [TechRadar](https://www.techradar.com/vpn/vpn-privacy-security/the-vote-on-chat-control-has-been-postponed-but-the-fight-isnt-over-yet-heres-what-we-know?utm_source=chatgpt.com)
- [TechRadar](https://www.techradar.com/vpn/vpn-privacy-security/chat-control-brings-high-risks-to-society-say-privacy-experts?utm_source=chatgpt.com)
[1]: https://en.wikipedia.org/wiki/Regulation_to_Prevent_and_Combat_Child_Sexual_Abuse?utm_source=chatgpt.com "Regulation to Prevent and Combat Child Sexual Abuse"
[2]: https://edri.org/our-work/high-level-group-going-dark-outcome-a-mission-failure/?utm_source=chatgpt.com "High-Level Group “Going Dark” outcome: A mission failure"
[3]: https://www.euronews.com/next/2025/11/05/new-danish-proposal-for-chat-control-three-fat-problems-remain?utm_source=chatgpt.com "New Danish proposal for chat control: Three fat problems ..."
[4]: https://www.techradar.com/computing/cyber-security/its-official-germany-will-not-agree-to-chat-control-heres-everything-we-know?utm_source=chatgpt.com "It's official! Germany \"will not agree\" to Chat Control - here's everything we know"
[5]: https://www.techradar.com/vpn/vpn-privacy-security/the-vote-on-chat-control-has-been-postponed-but-the-fight-isnt-over-yet-heres-what-we-know?utm_source=chatgpt.com "The vote on Chat Control has been postponed, but the \"fight isn't over\" yet - here's what we know"
[6]: https://edri.org/our-work/most-criticised-eu-law-of-all-time/?utm_source=chatgpt.com "Is this the most criticised draft EU law of all time?"
[7]: https://nextcloud.com/it/blog/how-the-eu-chat-control-law-is-a-threat-to-democracy/?utm_source=chatgpt.com "The proposed EU Chat Control law is a threat to our ..."
[8]: https://www.techradar.com/vpn/vpn-privacy-security/chat-control-brings-high-risks-to-society-say-privacy-experts?utm_source=chatgpt.com "Chat Control \"brings high risks to society\" say privacy experts"
[9]: https://stopchatcontrol.eu/?utm_source=chatgpt.com "stopchatcontrol.eu: Let's stop the EU chat control!"

## Capitolo 8 Impatto sui cittadini digitali e sugli studenti
Il punto più importante per una lezione di educazione civica è mostrare come una proposta apparentemente tecnica e lontana dalla vita quotidiana possa in realtà trasformare il modo in cui milioni di persone comunicano, si relazionano e vivono la propria identità. Gli studenti, in particolare, sarebbero tra i più colpiti.
### La fine dello “spazio privato” nelle comunicazioni quotidiane
Oggi gli adolescenti usano le chat come uno spazio personale in cui:
* confidarsi,
* condividere emozioni,
* esprimere dubbi o fragilità,
* coltivare relazioni intime,
* sperimentare la propria identità.
Con il Chat Control ogni contenuto — testo, foto, audio — verrebbe analizzato da un algoritmo prima di essere inviato. Questo cambiamento modifica la dinamica psicologica fondamentale della comunicazione digitale:
* un messaggio non è più una conversazione privata tra due persone,
* ma un contenuto che passa attraverso un filtro automatico potenzialmente connesso alle autorità.
Gli studenti interiorizzerebbero l’idea che **nessuna comunicazione è davvero privata**.
### Effetti sulla libertà di espressione
Quando le persone sanno di essere osservate, anche solo da un algoritmo, cambiano spontaneamente comportamento. È il classico “chilling effect”:
* si scrive meno,
* si scherza di meno,
* si evitano argomenti sensibili,
* ci si autocensura per paura di fraintendimenti algoritmici.
Per adolescenti e giovani adulti — che spesso usano il linguaggio in modo ironico, sperimentale, spontaneo — questo effetto è amplificato.
### L’impatto sulle foto personali e sulla gestione dell’immagine di sé
Uno degli aspetti meno discussi ma più concreti riguarda le foto. Gli algoritmi di scanning non distinguono tra immagini inviate e immagini che rimangono nel dispositivo. Anche una foto privata salvata in galleria può essere analizzata.
Ciò significa che:
* foto intime (non necessariamente sessuali),
* foto di sé scattate per gioco,
* immagini ricevute in chat private,
* contenuti condivisi in contesti di fiducia,
diventerebbero potenzialmente soggetti a segnalazione.
Questo può creare ansia costante:
* “questa foto verrà fraintesa?”
* “un algoritmo potrebbe segnalarla come sospetta?”
* “chi la vedrebbe in caso di errore?”
Per studenti che vivono già una forte pressione sociale sull’immagine, questo rischio è psicologicamente rilevante.
### Problemi legati ai falsi positivi
Gli algoritmi non sono infallibili. Un falso positivo può ormai avvenire per:
* una foto sfocata,
* un’immagine al mare,
* un bambino in famiglia immortalato senza contesto,
* un disegno o un meme,
* una foto ritagliata male,
* un errore di IA nella classificazione semantica.
Un ragazzo o una ragazza potrebbero trovarsi coinvolti in un processo di segnalazione del tutto ingiustificato. Questo non è un dettaglio tecnico: significa che un errore software può trascinare una persona innocente all’interno di un sistema di sospetto e controllo.
### Impatto sui rapporti familiari e sulla scoperta di sé
La privacy è essenziale per:
* giovani LGBTQ+ che stanno esplorando la loro identità,
* ragazzi che vivono in famiglie rigide o non dialoganti,
* studenti che si confidano tra loro in momenti di fragilità,
* coppie giovani che vivono la propria affettività.
Il client-side scanning colpisce esattamente questi spazi di intimità. Ciò tende a favorire comportamenti più repressivi, meno sinceri, più timorosi. In altri termini: può influire sulla crescita personale.
### Effetto sulla fiducia negli strumenti digitali
Gli adolescenti crescono in un mondo in cui lo smartphone è un’estensione del sé. Se percepiscono o scoprono che:
* ogni chat è controllata,
* ogni foto è analizzata,
* ogni parola passa da un algoritmo,
* i dispositivi possono segnalare contenuti alle autorità,
allora la fiducia verso gli strumenti tecnologici viene minata. Questo ha impatti anche educativi:
* meno fiducia nelle istituzioni,
* percezione di vivere in un ambiente ostile,
* riduzione della partecipazione civica,
* chiusura comunicativa.
### Impatto pratico nelle scuole
Per una classe di scuola superiore, Chat Control significherebbe:
* gruppi di classe potenzialmente sotto scanning,
* scambi di compiti, foto del registro, battute, meme, tutto analizzato,
* rischi che una condivisione innocente diventi una segnalazione,
* difficoltà a parlare liberamente di temi sensibili (relazioni, salute mentale, sessualità, identità personale).
Il paradosso è evidente: misure pensate teoricamente per proteggere possono diventare un ostacolo allo sviluppo sano delle relazioni tra giovani.
## Capitolo 9 Alternative reali a Chat Control
Una delle narrazioni più diffuse è che l’unico modo per proteggere i minori online sia introdurre la scansione generalizzata dei contenuti. Questa è una falsa dicotomia. Gli esperti di sicurezza, le ONG e gli stessi investigatori che lavorano sul campo indicano da anni una serie di soluzioni **realmente efficaci**, che non richiedono di sorvegliare milioni di cittadini innocenti.
Ecco le alternative principali, tutte compatibili con un modello di società libera e democratica.
### Potenziamento delle indagini tradizionali e digital forensics
La maggior parte dei casi di abuso sui minori viene scoperta attraverso:
* indagini mirate su individui sospetti,
* analisi dei dispositivi sequestrati,
* intercettazioni autorizzate su canali non cifrati,
* pedinamenti digitali e fisici,
* collaborazione internazionale tra forze dell’ordine.
Le indagini digitali sui dispositivi sono estremamente efficaci quando condotte *dopo* la presenza di un sospetto fondato. Non richiedono l’analisi di tutte le comunicazioni del Paese.
### Rafforzamento dei centri di segnalazione e delle unità specializzate
Uno dei problemi reali oggi è la mancanza di personale adeguato per analizzare le segnalazioni già esistenti. Migliaia di segnalazioni fornite volontariamente dalle piattaforme e dai cittadini vengono gestite con risorse limitate.
Investire in:
* più specialisti,
* più analisti,
* più strumenti di indagine,
sarebbe molto più utile che introdurre un sistema invasivo e inefficiente come la scansione universale.
### Responsabilità delle piattaforme senza sorveglianza di massa
Le piattaforme possono già fare moltissimo senza vedere i contenuti privati:
* moderare contenuti pubblici,
* intervenire sugli account segnalati,
* bloccare la condivisione di materiale noto sui canali non cifrati,
* migliorare i sistemi di segnalazione per gli utenti,
* impedire la creazione di account anonimi seriali.
Queste misure non violano la privacy perché agiscono su contenuti pubblici o su comportamenti sospetti, non sulle conversazioni private.
### Prevenzione e educazione digitale
La prevenzione è spesso più efficace della repressione. Politiche educative realistiche possono ridurre in modo sostanziale i rischi:
* educazione all’uso sicuro dei dispositivi per bambini e genitori,
* programmi scolastici sulla gestione dei social e sulla sicurezza online,
* sensibilizzazione su grooming, sextortion e comportamenti rischiosi,
* strumenti per aiutare i giovani a chiedere aiuto in modo sicuro e anonimo.
Queste iniziative affrontano il problema alla radice, senza trasformare tutti in sospetti.
### Migliore collaborazione internazionale
I reati legati all’abuso di minori sono spesso transnazionali. Migliorare la cooperazione tra Stati è molto più decisivo che indebolire la crittografia:
* banche dati condivise (già esistenti, da ampliare),
* task force congiunte,
* accordi giudiziari più rapidi,
* scambio di informazioni sulle indagini in corso.
Queste misure colpiscono direttamente i criminali senza intaccare i diritti dei cittadini.
### Tecnologie mirate invece di sistemi universali
Esistono tecniche che possono essere applicate **solo dopo un mandato**, come:
* spyware mirati su singoli sospettati,
* accesso controllato ai backup cloud,
* tecniche di infiltrazione in reti criminali,
* acquisizione forense dei dispositivi.
È importante chiarire agli studenti che queste tecniche, pur delicate, sono:
* autorizzate da giudici caso per caso,
* limitate a persone sospettate,
* molto più efficaci delle scansioni massive.
### Perché queste alternative sono preferibili
Le soluzioni fin qui elencate offrono tre vantaggi decisivi:
1. sono **mirate**, non colpiscono milioni di innocenti;
2. sono **proporzionate**, rispettano i principi fondamentali del diritto;
3. sono **efficaci**, perché agiscono dove il problema realmente si manifesta.
Inoltre preservano l’integrità della crittografia end-to-end, che protegge:
* i cittadini comuni,
* i professionisti,
* i giornalisti,
* gli attivisti,
* i minori stessi.
## Capitolo 10 Conclusione e domande per la discussione
Il percorso che abbiamo seguito permette di vedere con chiarezza perché Chat Control non è una semplice proposta tecnica, ma una trasformazione potenzialmente epocale nel rapporto tra cittadini, tecnologia e Stato. In un mondo in cui la comunicazione digitale è diventata parte integrante della nostra identità, modificare la natura della privacy significa modificare la natura della democrazia stessa.
### Una sintesi dei punti fondamentali
* La crittografia end-to-end è oggi uno dei principali strumenti di protezione della nostra vita digitale.
* Chat Control introducendo la scansione lato dispositivo annulla di fatto la garanzia della comunicazione privata.
* La proposta trasformerebbe ogni smartphone in uno strumento di controllo preventivo.
* I rischi includono sorveglianza generalizzata, vulnerabilità di sicurezza create intenzionalmente, falsi positivi e impatti psicologici significativi.
* Le categorie più vulnerabili sono anche quelle che hanno più bisogno di privacy: giovani, minoranze, attivisti, giornalisti, vittime di abusi.
* Esistono alternative serie, efficaci e compatibili con i diritti fondamentali.
* Il dibattito non è solo tecnico: è un dibattito civico, etico e politico.
Questo rende Chat Control un caso perfetto per una lezione di educazione civica: insegna che le tecnologie non sono neutre e che le scelte politiche possono influenzare radicalmente la libertà individuale.
### Perché gli studenti devono interessarsene
I giovani sono tra i principali utenti degli strumenti digitali che verrebbero colpiti. Il modo in cui comunicano, si confidano, vivono la propria intimità e costruiscono relazioni verrebbe modificato. Capire come funziona la privacy digitale oggi significa capire come funziona la cittadinanza digitale. E decidere come vogliamo che funzioni domani.
### Domande finali per la discussione in classe
Queste domande sono pensate per stimolare pensiero critico, confronto costruttivo e consapevolezza civica. Puoi usarle direttamente nella presentazione.
1. Cosa significa davvero “avere qualcosa da nascondere”? È un concetto universale o varia da persona a persona?
2. È giusto rinunciare alla privacy per aumentare la sicurezza? Dove si traccia il confine?
3. Come cambierebbero le relazioni tra studenti se sapessero che le loro chat sono analizzate automaticamente?
4. Se un algoritmo potesse segnalare i tuoi messaggi, cambierebbe il modo in cui comunichi? In che modo?
5. Chi dovrebbe avere il potere di decidere quali contenuti sono sospetti?
6. È accettabile creare vulnerabilità nei dispositivi per aiutare le indagini? Quali alternative esistono?
7. La tecnologia può davvero sostituire il lavoro umano nell’interpretazione del comportamento umano?
8. Quali categorie di persone sarebbero più colpite da una sorveglianza preventiva?
9. In che modo la scuola può contribuire a una cultura della sicurezza digitale senza compromettere la libertà?
10. Qual è il confine tra protezione dei minori e invasione della privacy degli adulti?
### Una riflessione finale per gli studenti
La citazione di Edward Snowden riassume il cuore del dibattito:
“Affermare che non si è interessati al diritto alla privacy perché non si ha nulla da nascondere è come dire che non si è interessati alla libertà di parola perché non si ha nulla da dire.”
È una frase che vale la pena lasciare agli studenti come messaggio conclusivo. La libertà digitale non funziona perché ognuno “ha qualcosa da nascondere”, ma perché ognuno ha qualcosa da essere, da pensare, da dire — e ha il diritto di farlo senza essere osservato.