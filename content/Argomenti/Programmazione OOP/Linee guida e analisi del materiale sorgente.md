# Linee guida per la dispensa

Questo documento raccoglie le decisioni editoriali per la revisione di `Dispensa - Programmazione orientata agli oggetti in Java.md` e l'analisi del materiale da cui ricavare esempi, esercizi e approfondimenti. È il documento di riferimento da consultare prima di modificare la dispensa.

## Obiettivo

La dispensa deve accompagnare il lettore dalle basi di Java alla progettazione orientata agli oggetti seguendo un percorso riconoscibile. Ogni concetto deve nascere da una necessità presente nel testo, non dalla volontà di compilare un elenco completo di caratteristiche del linguaggio.

Il risultato deve essere adatto allo studio: corretto, leggibile e abbastanza graduale da poter essere seguito anche da chi incontra l'OOP per la prima volta.

## Stato della revisione

Ultimo aggiornamento: 26 luglio 2026.

Punto raggiunto: la revisione approvata arriva fino a `Object`, uguaglianza e rappresentazione. Tutti i capitoli successivi sono stati riscritti e attendono una rilettura complessiva.

| Sezione della dispensa                        | Stato                   | Note                                                                                                                                                                |
| --------------------------------------------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Basi di Java`                                | approvata               | Contiene il ripasso iniziale senza numerazione, comprese le selezioni con `if` e `switch`, i tre cicli e il loro controllo con `break` e `continue`.                |
| `Classi e oggetti`                            | approvata               | Sviluppa `BankAccount` da classe semplice a programma completo.                                                                                                     |
| `Rappresentare classi e oggetti con UML`      | approvata               | Limitata ai diagrammi di una classe e di singoli oggetti.                                                                                                           |
| `Incapsulamento e invarianti`                 | approvata               | Tratta lo stato di un singolo oggetto, i quattro livelli di accesso, getter, setter e l'invariante del saldo.                                                       |
| `Riferimenti e memoria`                       | approvata               | Spiega riferimenti, alias, identità, raggiungibilità, assenza di dangling pointer nel normale codice Java, garbage collector, passaggio dei parametri e `null`.     |
| `Metodi, overloading, static e final`         | approvata               | Presenta firma, overload semplici, costruttori overloaded, membri di istanza e statici, `final`, query e comandi.                                                   |
| `Collaborazione e composizione`               | approvata               | Usa il dominio automobile per introdurre delega, dipendenza, associazione, aggregazione, composizione, molteplicità UML e sequenza dei messaggi.                    |
| `Ereditarietà`                                | approvata               | Usa `Device` e `Smartphone` per introdurre `extends`, costruzione con `super`, accesso `protected`, override, UML e confronto con la composizione.                  |
| `Collezioni di oggetti`                       | approvata               | Introduce `ArrayList`, tipo degli elementi, operazioni essenziali e ciclo for-each senza anticipare la teoria generale dei generics.                                |
| `Polimorfismo`                                | approvata               | Prosegue con `Device`, `Smartphone` e `Smartwatch`: tipo dichiarato, tipo effettivo, upcast e dispatch dinamico attraverso `ArrayList<Device>`.                     |
| `Classi astratte e interfacce`                | approvata               | Usa `Animal`, `Duck`, `Flyable` e `Swimmable` per distinguere una base comune incompleta da capacità combinabili e implementabili anche da classi non correlate.    |
| `Object`, uguaglianza e rappresentazione      | approvata               | Usa `Book` per distinguere identità e uguaglianza logica e introduce `toString`, `instanceof`, `equals` e `hashCode` con i rispettivi contratti.                    |
| `Eccezioni e robustezza`                      | approvata               | Riprende `Book` per rifiutare dati non validi, distingue lancio, propagazione e gestione, confronta checked e unchecked e introduce `finally` e try-with-resources. |
| `Scegliere e usare le collezioni`             | riscritta, da rileggere | Distingue i contratti `List`, `Set`, `Map` e `Deque`, introduce wrapper, copie difensive e costi essenziali attraverso `BookCatalog`.                               |
| `Generics`                                    | riscritta, da rileggere | Parte dal riuso delle collezioni e sviluppa tipi e metodi generici, limiti, invarianza, wildcard, PECS, type erasure, `Comparable` e `Comparator`.                  |
| `Tipi di dato astratti e strutture collegate` | riscritta, da rileggere | Collega contratto e rappresentazione attraverso lista, pila, coda e albero, rendendo espliciti invarianti e complessità.                                            |
| `Enum, record e classi annidate`              | riscritta, da rileggere | Distingue insiemi chiusi, value object e dettagli d'implementazione; chiarisce che l'immutabilità di un record è superficiale.                                      |
| `Iteratori, lambda e stream`                  | riscritta, da rileggere | Separa contenitore e cursore, costruisce iteratori e adattatori e introduce lambda e pipeline soltanto dopo le interfacce funzionali.                               |
| `Alberi sintattici e Visitor`                 | riscritta, da rileggere | Approfondimento facoltativo con AST ricorsivo, gerarchia `sealed`, visitor generico e double dispatch.                                                              |
| `Organizzazione del codice`                   | riscritta, da rileggere | Introduce package, accessibilità, struttura per responsabilità, direzione delle dipendenze e dependency injection.                                                  |
| `Progettazione orientata agli oggetti`        | riscritta, da rileggere | Parte da scenari e responsabilità e usa coesione, accoppiamento, SOLID e code smell come strumenti di analisi.                                                      |
| `Testing e debugging`                         | riscritta, da rileggere | Distingue asserzioni, JUnit, test unitari e di integrazione, fake, determinismo e diagnosi sistematica.                                                             |
| `Pattern essenziali`                          | riscritta, da rileggere | Motiva Strategy, factory semplice, Observer e Repository tramite variazioni concrete e introduce l'uso mirato di `Optional`.                                        |
| `Progetto guidato: biblioteca`                | riscritta, da rileggere | Distingue edizione e copia fisica e integra value object, entità, repository, Strategy, `Clock`, servizi e verifiche.                                               |
| Domande, appendici e conclusione              | riscritte, da rileggere | Sono state riallineate ai concetti effettivamente sviluppati.                                                                                                       |
| Revisione complessiva                         | prossimo intervento     | Rileggere l'intera dispensa, valutare la collocazione definitiva dell'approfondimento Visitor e controllare uniformità, ripetizioni e carico didattico.             |

Questa tabella va aggiornata dopo la revisione o l'approvazione di ogni capitolo. Deve indicare con chiarezza l'ultimo punto raggiunto e il prossimo intervento previsto.

## Metodo di revisione

La revisione normalmente procede un capitolo alla volta. Per il blocco successivo a `Object`, su richiesta, tutti i capitoli sono stati prima riscritti e verranno riletti insieme. La rilettura deve controllare:

- la continuità del ragionamento;
- la correttezza degli esempi;
- la coerenza della terminologia;
- l'assenza di concetti non ancora spiegati;
- la corrispondenza tra spiegazioni ed esercizi.

La struttura generale va comunque tenuta presente, in modo che le decisioni prese in un capitolo non creino ripetizioni o contraddizioni nei successivi.

## Organizzazione degli argomenti

- Gli argomenti devono seguire un ordine didattico, non l'ordine in cui compaiono nelle fonti.
- Un concetto va introdotto quando serve per comprendere l'esempio corrente.
- Gli argomenti avanzati non vanno anticipati in una panoramica iniziale.
- Se un argomento richiede conoscenze non ancora presentate, va spostato più avanti oppure semplificato.
- Strutture dati, Visitor, pattern e altri temi avanzati non devono interrompere il percorso OOP di base.
- Il materiale sorgente è una risorsa, non un indice da riprodurre integralmente.

La dispensa contiene un capitolo iniziale chiamato `Basi di Java`. Svolge la funzione di capitolo zero, ma non deve essere numerato. Riprende soltanto la sintassi necessaria per seguire gli esempi: programma minimo, variabili, tipi, operatori, selezioni con `if` e `switch`, cicli `for`, `while` e `do-while`, `break`, `continue` e metodi. Il `for` deve mostrare sia un limite numerico sia un limite ricavato dalla dimensione dei dati, chiarendo la differenza tra `length` degli array, `length()` delle stringhe e `size()` delle collezioni senza anticipare la trattazione di `ArrayList`. Per `switch` va privilegiata la sintassi moderna con `->`, coerente con Java 17; la forma classica con `case`, `:` e `break` va comunque mostrata brevemente, perché è ancora comune nel codice esistente e permette di spiegare il fall-through.

La parte iniziale di UML deve limitarsi ai diagrammi di una singola classe e di singoli oggetti. Associazioni, molteplicità, composizione e diagrammi di sequenza vanno affrontati quando il lettore ha già studiato la collaborazione tra oggetti.

Il primo capitolo sull'incapsulamento deve riguardare lo stato di un singolo oggetto. Deve presentare tutti e quattro i livelli di accesso, ma gli esempi principali continuano a usare `public` e `private`: l'accesso package-private viene collegato brevemente ai package e `protected` viene approfondito soltanto con l'ereditarietà. Gli invarianti che coinvolgono più oggetti vanno ripresi dopo la collaborazione; le copie difensive richiedono prima le collezioni; immutabilità e `final` vanno spiegati quando il lettore possiede i concetti necessari. Questi argomenti non vanno concentrati tutti nel primo incontro con l'incapsulamento.

Il primo capitolo dedicato all'overloading deve limitarsi a firme distinguibili per numero o tipi semplici dei parametri. Boxing, unboxing, varargs, gerarchie e confronto con il dispatch dinamico richiedono argomenti successivi e non vanno anticipati. `final` viene collegato alle variabili e ai riferimenti; gli usi su classi e metodi vengono soltanto segnalati e saranno ripresi con l'ereditarietà.

Il capitolo sull'ereditarietà introduce una sola gerarchia concreta e si ferma prima del polimorfismo. Deve spiegare costruzione della sottoclasse, `super`, uso mirato di `protected`, override, `@Override` e differenza rispetto all'overloading. Classi astratte, interfacce, classi sigillate, cast e dispatch dinamico appartengono ai capitoli successivi.

Tra ereditarietà e polimorfismo va collocata una breve introduzione alle collezioni di oggetti. Deve limitarsi ad `ArrayList`, al tipo degli elementi, alle operazioni essenziali e al ciclo for-each. La notazione generica viene spiegata quanto basta per leggere `ArrayList<Device>`; `List` come interfaccia, le altre collezioni e la teoria generale dei generics vengono riprese più avanti.

Il primo capitolo sul polimorfismo prosegue la gerarchia già nota e introduce tipo dichiarato, tipo effettivo, upcast e dispatch dinamico attraverso una collezione del tipo comune. `ArrayList<Device>` deve mostrare perché oggetti di sottoclassi diverse possono essere attraversati dallo stesso ciclo. Downcast e `instanceof` vengono rinviati: il primo esempio non deve controllare esplicitamente il tipo degli elementi.

Il capitolo su classi astratte e interfacce usa il dominio degli animali perché rende immediatamente distinguibili famiglia e capacità. `Animal` conserva il nome e il comportamento comune, mentre il metodo astratto `makeSound()` obbliga ogni sottoclasse concreta a fornire il proprio verso. `Duck extends Animal implements Flyable, Swimmable` mostra nella stessa dichiarazione una superclasse e più contratti; `Airplane implements Flyable` dimostra che un'interfaccia può unire classi non correlate. I campi restano privati anche nella classe astratta. I metodi `default` mostrano la condivisione di comportamento senza stato; i metodi `static` e `private` delle interfacce vengono soltanto inquadrati. Gli esempi polimorfici usano `ArrayList<Animal>` e `ArrayList<Flyable>` senza introdurre `instanceof` o downcast.

Il capitolo dedicato a `Object` riprende il confronto fra riferimenti già studiato e distingue identità con `==` e uguaglianza logica con `equals()`. `Book`, dichiarata `final`, usa l'ISBN immutabile per implementare insieme `equals()` e `hashCode()`. Il pattern matching di `instanceof` viene presentato con un blocco positivo, distinguendo esplicitamente il parametro `other` di tipo `Object` dalla variabile `book` di tipo `Book` che indica lo stesso oggetto; la forma tradizionale con controllo e cast separati viene mostrata soltanto come equivalenza. `toString()` viene presentato come rappresentazione utile per sviluppo e diagnostica, non come formato persistente. Il capitolo non usa ancora collezioni basate su hash e rinvia `Comparable`, `Comparator` e l'ordinamento a dopo la trattazione dei generics e delle operazioni principali delle collezioni.

Il capitolo sulle eccezioni riprende il costruttore di `Book`, che nel capitolo precedente assumeva dati validi, e usa `IllegalArgumentException` per proteggere l'invariante. `throw`, propagazione e `catch` vengono distinti prima di introdurre la classificazione fra checked e unchecked. `IOException` fornisce il caso concreto di checked exception e conduce a `throws` e al try-with-resources; `finally` viene spiegato per la pulizia generale, senza usarlo per chiudere manualmente una risorsa che può essere gestita automaticamente. La versione completa mantiene nello stesso esempio ISBN e titolo letti da un file di due righe. Le eccezioni personalizzate vengono presentate soltanto quando aggiungono un caso di dominio che il chiamante deve poter distinguere.

Il secondo incontro con le collezioni parte dalle operazioni richieste a un catalogo e distingue i contratti `List`, `Set`, `Map` e `Deque` dalle implementazioni. Wrapper e copie difensive vengono introdotti nel punto in cui servono. Il capitolo sui generics sviluppa poi la notazione già incontrata nelle collezioni e arriva a invarianza, wildcard e PECS. `Comparable` e `Comparator` chiudono il rinvio aperto dal capitolo su `Object`; `TreeSet` e `TreeMap` vengono inquadrati soltanto dopo la definizione di una regola di ordinamento.

Le strutture collegate vengono presentate come implementazioni di tipi di dato astratti e non come sostituti automaticamente migliori delle collezioni standard. `head`, `tail`, `size` e ordine del BST sono trattati come invarianti. Enum, record e classi annidate distinguono forme del linguaggio con scopi diversi; per i record viene dichiarato esplicitamente il carattere superficiale dell'immutabilità. Il capitolo sull'iterazione separa `Iterable` da `Iterator` prima di introdurre classi anonime, interfacce funzionali, lambda e stream.

La parte di progettazione usa la biblioteca come filo comune. Package e dependency injection precedono l'analisi di responsabilità, coesione, accoppiamento e SOLID; testing e pattern vengono motivati dalle stesse dipendenze. Il progetto guidato distingue `Book`, che rappresenta un'edizione identificata da ISBN, da `BookCopy`, che rappresenta l'esemplare prestabile. `Clock` rende controllabile il tempo nei test. AST e Visitor restano un approfondimento facoltativo: nella rilettura complessiva va valutato se mantenerli nella posizione corrente con l'indicazione di salto oppure spostarli dopo i pattern.

## Titoli e numerazione

- I capitoli e le sezioni non devono avere una numerazione progressiva.
- Non si devono usare titoli come `Capitolo 1`, `Parte I` o `1. Classi e oggetti`.
- I titoli devono descrivere direttamente il contenuto: `Basi di Java`, `Classi e oggetti`, `Incapsulamento`.
- La gerarchia Markdown deve rimanere coerente anche senza numerazione.

## Stile

Il testo deve sembrare scritto da una persona che sta spiegando l'argomento a uno studente.

- Usare un italiano naturale, diretto e preciso.
- Evitare il tono impersonale, solenne o promozionale tipico dei testi generati automaticamente.
- Evitare slogan, massime e “regole pratiche” inserite soltanto per dare enfasi.
- Non accumulare elenchi di definizioni prima che il lettore possa usarle.
- Preferire paragrafi collegati fra loro a sequenze di affermazioni isolate.
- Spiegare i termini tecnici alla prima comparsa.
- Non ripetere lo stesso concetto con formulazioni leggermente diverse per allungare il testo.
- Usare tabelle ed elenchi soltanto quando rendono davvero più chiara l'informazione.

Il tono può essere discorsivo, ma non vago. Le semplificazioni didattiche devono essere dichiarate quando potrebbero essere scambiate per scelte adatte a un programma reale.

## Esempi di codice

- Ogni capitolo dovrebbe sviluppare pochi esempi coerenti, senza cambiare dominio di continuo.
- Quando possibile, un esempio va fatto evolvere passo dopo passo.
- Dopo i frammenti parziali va mostrata una versione completa e compilabile.
- Il testo deve distinguere chiaramente uno scheletro, un frammento e un programma completo.
- Non vanno usati tipi, librerie o costrutti che saranno spiegati soltanto più avanti.
- I nomi nel codice devono rimanere coerenti tra spiegazione, diagrammi ed esercizi.
- Gli esempi usano Java 17 o una versione successiva.
- Le dichiarazioni `package` possono essere omesse quando non sono rilevanti; ogni classe pubblica deve però essere presentata come appartenente a un file con lo stesso nome.
- Se un esempio semplifica un problema reale, come la rappresentazione del denaro, il limite va segnalato senza aprire una digressione.

## Esercizi

- Gli esercizi devono richiedere soltanto concetti già spiegati.
- I primi esercizi consolidano direttamente il contenuto del capitolo.
- Gli esercizi più articolati possono combinare conoscenze precedenti, ma non devono introdurre di nascosto l'argomento del capitolo seguente.
- Le consegne devono essere abbastanza precise da poter verificare il risultato.
- Esempi ed esercizi dovrebbero usare domini vari, ma all'interno della spiegazione principale è preferibile mantenere un unico filo.

## Struttura indicativa di un capitolo

Quando si adatta all'argomento, un capitolo può seguire questa progressione:

- presentazione di un problema semplice;
- introduzione del concetto necessario;
- esempio sviluppato per passaggi;
- versione completa del codice;
- breve riepilogo;
- esercizi.

Questa struttura è una guida, non un modello da riempire meccanicamente. Un capitolo non deve contenere sezioni prive di utilità soltanto per rispettarla.

## Controlli prima di considerare concluso un capitolo

- I frammenti di codice sono sintatticamente corretti nel contesto dichiarato.
- Il programma indicato come completo contiene tutte le classi e i metodi necessari.
- I nomi e i risultati mostrati nell'output corrispondono al codice.
- I rimandi non dipendono da un ordine che potrebbe ancora cambiare; durante la revisione è preferibile scrivere “più avanti” anziché “nel capitolo successivo”.
- I titoli non contengono numeri o indicazioni di parte.
- Il riepilogo non introduce termini nuovi.
- Gli esercizi non anticipano concetti.

# Analisi del materiale sorgente

Questo documento registra il materiale esaminato per progettare la dispensa OOP in Java. Serve a evitare una nuova sintesi costruita senza una relazione chiara con le fonti.

## Inventario

La cartella `~/workspace/risorse oop` contiene 488 file per circa 100 MB:

- 82 PDF;
- un EPUB;
- 161 sorgenti Java;
- 34 sorgenti OCaml;
- 31 JAR e quattro ZIP;
- 76 file `.class`;
- testi di input, output attesi, configurazioni IDE e duplicati.

I duplicati esatti sono stati identificati tramite SHA-256. I contenuti duplicati sono considerati una sola volta; consegna, soluzione e codice dello stesso esercizio restano invece documenti distinti.

## Hashtag, volume 1

Il volume costruisce i prerequisiti generali:

- sistemi, modelli, stato, ingressi e uscite;
- architettura del computer e software;
- problemi, algoritmi, linguaggi e programmi;
- sequenza, selezione e iterazione;
- problem solving, pseudocodice e flowchart;
- programmazione a blocchi e a eventi;
- variabili, tipi, espressioni, input e output;
- introduzione procedurale a Python.

Per la dispensa OOP sono direttamente utili il concetto di sistema dotato di stato e interfaccia, il passaggio dal problema al modello, il confronto fra algoritmo e programma e i prerequisiti sulle strutture di controllo. Office automation, Scratch e Flowgorithm non appartengono al nucleo della nuova dispensa.

## Hashtag, volume 2

È la fonte scolastica principale. Prima dell'OOP tratta funzioni, scope, ricorsione, stringhe, collezioni, ricerca, ordinamento, file, Web e grafica. Il modulo OOP segue questa progressione:

- paradigmi di programmazione;
- motivazioni storiche e tecniche dell'OOP;
- classi, oggetti, stato, comportamento e messaggi;
- diagrammi UML delle classi e degli oggetti;
- incapsulamento e astrazione;
- costruttori, attributi, getter e setter;
- ereditarietà, overriding e polimorfismo;
- associazioni UML e collaborazione fra oggetti;
- applicazioni grafiche e simulazioni basate su popolazioni di oggetti;
- tipi e strutture dati astratte;
- overloading di operatori, specifico di Python;
- liste concatenate;
- pile e code;
- alberi e alberi binari di ricerca.

### Esempi ed esercizi del modulo OOP

Gli esempi principali riguardano sprite, conversioni di temperatura, personaggi di Star Wars, polilinee, animazioni, simulazioni cellulari, figure geometriche e generazione di suoni.

La palestra propone, fra gli altri:

- `BankAccount` con deposito, prelievo ed eccezione per fondi insufficienti;
- `Car` con velocità corrente e massima;
- `Employee` ricavato da UML;
- `Television` con stato, canale e volume validati;
- `Student` con dizionario materia-voti;
- `Rectangle` e `Sphere` con contenimento e intersezione;
- una gerarchia di dispositivi intelligenti;
- parentesi bilanciate e conversione decimale-binaria;
- numero complesso e angolo come tipi astratti;
- simulazione delle code di un pronto soccorso;
- ricorsione sul file system;
- interi arbitrariamente lunghi rappresentati con una linked list.

La struttura didattica da conservare è: spiegazione, rappresentazione visuale, programma completo, analisi della soluzione, modifica immediata, verifica delle conoscenze ed esercizi di progettazione.

## Hashtag, volume 3

Il volume tratta teoria della computazione, automi, complessità, calcolo scientifico, intelligenza artificiale, reti e sicurezza. Gli impieghi OOP più rilevanti sono:

- `DFA` come modello di automa a stati finiti;
- `TuringMachine` come oggetto che incapsula stato e transizioni;
- `HashTable` come struttura dati astratta;
- `Neuron`, `Layer`, `Perceptron` e `NeuralNetwork` come oggetti collaboranti;
- confronto fra tipizzazione dinamica Python e tipizzazione statica Java;
- funzioni di prima classe e stile funzionale.

Questi esempi sono adatti come estensioni avanzate, non come introduzione all'OOP. Le sezioni su reti e sicurezza non devono essere incluse soltanto perché presenti nel materiale.

## Mastering Java

L'EPUB comprende fondamenti Java, strutture dati e algoritmi, sviluppo Web, GUI, OOP, domande da colloquio e glossario.

La parte OOP tratta:

- motivazioni e riuso;
- oggetti, classi, identità, stato e comportamento;
- costruzione e inizializzazione;
- costruttori overloaded, `this` e `super`;
- membri `static`;
- astrazione e classi astratte;
- interfacce;
- incapsulamento;
- ereditarietà e forme di gerarchia;
- polimorfismo runtime;
- associazione, aggregazione e composizione;
- overriding, overloading e regole sulle eccezioni;
- wrapper, argomenti da riga di comando e passaggio dei parametri.

### Limiti della fonte

Il testo è del 2018 e contiene formulazioni da correggere o contestualizzare:

- presenta le interfacce secondo un modello precedente ai metodi `default`, `static` e `private` moderni;
- associa l'incapsulamento alla creazione automatica di getter e setter per ogni campo;
- tratta `clone()` e `finalize()` come tecniche ordinarie;
- usa terminologia ambigua sul passaggio degli oggetti, anche se riconosce che Java passa per valore;
- contiene esempi ripetitivi, refusi e alcuni frammenti non compilabili;
- include tecnologie Web e GUI ormai datate.

È utile per esempi sintattici e ampiezza, ma le regole vanno verificate e riscritte secondo Java moderno.

## Laboratori Java

### Primo laboratorio

La consegna introduce immediatamente progettazione per contratto:

- confronto lessicografico degli argomenti;
- `Person` con identità, coniuge opzionale e relazione simmetrica;
- precondizioni di `join` e `divorce`;
- costruttori che garantiscono invarianti;
- scelta ragionata dei campi `final`;
- `CreditAccount` con saldo, limite e operazioni controllate;
- test tramite `assert`.

Questa impostazione è più rigorosa del manuale Java e deve entrare presto nella dispensa.

### Lexer e tokenizer

I laboratori su lexer e tokenizer coprono:

- `String`, `Pattern`, `Matcher` e regioni del matcher;
- espressioni regolari per identificatori, numeri e stringhe;
- interfacce `Scanner` e `Tokenizer`;
- enum per categorie lessicali;
- checked exception e `AutoCloseable`;
- separazione fra lettura di caratteri, riconoscimento e conversione dei valori;
- test e stato interno dell'ultimo token.

Sono esercizi avanzati di collaborazione fra oggetti e progettazione per interfacce. Non sono adatti come primo esercizio OOP.

### Range e iteratori

`Range implements Iterable<Integer>` delega l'attraversamento a `RangeIterator`. Il materiale chiarisce:

- differenza fra contenitore e cursore;
- contratto di `Iterable` e `Iterator`;
- stato dell'iterazione;
- `hasNext`, `next` e `NoSuchElementException`;
- uso del for-each su un tipo definito dall'utente.

### Parser, AST e interprete

Il progetto 2019 comprende scanner, tokenizer, parser ricorsivo discendente, AST, ambienti, visitor di valutazione e visitor di type checking. Mostra:

- gerarchie di interfacce e classi astratte;
- composizione ricorsiva di oggetti;
- immutabilità dei nodi;
- Visitor generico;
- separazione fra struttura dei dati e operazioni;
- checked exception ai confini fra componenti;
- environment generico e scope annidati;
- rappresentazione di valori e tipi tramite gerarchie;
- test di successo e fallimento.

È materiale universitario avanzato. Visitor e AST possono costituire un capitolo o progetto facoltativo dopo generics e polimorfismo.

## Prove scritte

Le prove dal 2012 al 2019 combinano sistematicamente Java e OCaml. La parte Java ricorre su quattro famiglie principali.

### Comprensione del linguaggio Java

- tipo statico e tipo dinamico;
- conversioni primitive, boxing, unboxing e varargs;
- risoluzione dell'overloading a compilazione;
- override e dispatch dinamico;
- `super`, cast e accessibilità;
- errori di compilazione rispetto a errori runtime;
- espressioni regolari con `Pattern` e `Matcher`.

### Strutture dati e iteratori

- stack generico tramite lista circolare e nodo sentinella;
- iteratori di posizione dispari;
- iteratori limitati;
- iteratori condizionali e filtrati;
- composizione, concatenazione e fusione di iteratori;
- iteratori di polinomi e numeri binari;
- sequenze finite e generatori potenzialmente infiniti;
- uso corretto della cache quando `null` è un elemento valido.

### Generics e programmazione funzionale in Java

- interfacce funzione generiche;
- `map`, `filter`, `fold`, `all`, `any` e unione su collezioni;
- factory generiche;
- predicati e funzioni;
- classi anonime e, nelle prove più recenti, lambda.

### AST e Visitor

- alberi di espressioni aritmetiche, booleane, stringa, insieme e regex;
- visitor generici con risultati di tipo diverso;
- valutazione, stampa prefissa/postfissa e semplificazione;
- sostituzione e ricerca di variabili libere;
- type checking;
- costruzione di nuovi AST durante la visita.

Le soluzioni nei JAR contengono i sorgenti e confermano la progressione: prima gerarchia e dispatch, poi generics e iteratori, infine Visitor.

## Materiale OCaml

I sorgenti e le parti OCaml delle prove coprono:

- ricorsione strutturale e tail recursion;
- accumulatori;
- funzioni di ordine superiore;
- `map`, `filter` e `fold`;
- tipi polimorfi;
- semantica statica e dinamica;
- rappresentazione algebrica di AST, tipi e valori.

Non devono diventare esempi Python o essere tradotti meccanicamente in Java. Sono utili per motivare lambda, interfacce funzionali, immutabilità, ricorsione, Visitor e confronto fra paradigmi.

## Materiale Markdown locale

I documenti locali coprono:

- classi astratte e interfacce;
- generics e bounded types;
- `Set`, `HashSet`, `Map` e `HashMap`;
- esercizi di base sulla biblioteca;
- `ArrayList`, wrapper, overloading ed eccezioni;
- ereditarietà e polimorfismo con animali;
- classe astratta e interfacce con un'arena;
- polimorfismo con pagamenti;
- linked list di libri implementata da zero.

Sono contenuti già orientati a Java, ma vanno distribuiti nella progressione corretta e armonizzati nello stile. Le due versioni della biblioteca hanno obiettivi diversi: una introduce oggetti e array, l'altra una struttura concatenata; non vanno fuse senza distinguerne il livello.

Il materiale del precedente appunto locale `Classi astratte e interfacce (Java).md` è confluito integralmente nella dispensa: la gerarchia `Animal` rende chiara l'implementazione parziale, mentre `Flyable` e `Swimmable` mostrano capacità indipendenti e combinabili. La dispensa sviluppa l'esempio in un programma completo con campi privati, collezioni polimorfiche e una classe `Airplane` esterna alla gerarchia. La formulazione sulle interfacce è stata inoltre aggiornata per comprendere i metodi `private` disponibili in Java moderno e per non descrivere i metodi `default` come semplice contratto privo di implementazione. L'appunto può quindi essere eliminato senza perdere contenuti; il suo collegamento introduttivo viene conservato come fonte supplementare: [Abstract Classes and Methods in Java Explained in 7 Minutes](https://www.youtube.com/watch?v=HvPlEJ3LHgE).

## Progressione risultante

L'analisi delle fonti e le decisioni prese durante la revisione portano alla seguente progressione:

- breve ripasso delle basi di Java;
- classi, oggetti, stato, campi e metodi;
- creazione degli oggetti, costruttori e `this`;
- diagrammi UML di classi e oggetti;
- incapsulamento, validazione e invarianti;
- riferimenti, alias, `null` e passaggio dei parametri;
- metodi, overloading, membri `static` e `final`;
- collaborazione, associazioni e composizione;
- UML delle relazioni e scambio di messaggi;
- ereditarietà e overriding;
- introduzione ad `ArrayList` e al ciclo for-each;
- polimorfismo;
- classi astratte e interfacce;
- `Object`, uguaglianza e rappresentazione;
- eccezioni;
- interfacce delle collezioni, wrapper, altre collezioni e generics;
- enum, record e classi annidate;
- `Iterable`, `Iterator`, lambda e stream;
- tipi di dato astratti e strutture collegate;
- organizzazione del codice, progettazione e testing;
- pattern essenziali;
- AST e Visitor come applicazione avanzata facoltativa;
- progetto completo.

Gli esempi Python presenti nelle fonti vanno riprogettati in Java, non tradotti riga per riga. Ogni argomento deve avere esercizi immediati; le consegne più articolate vanno collocate quando il lettore possiede già tutti gli strumenti richiesti.
