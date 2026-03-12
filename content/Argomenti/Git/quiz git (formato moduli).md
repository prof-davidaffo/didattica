1. Qual è il problema principale dell'approccio basato su copie manuali di file (`file_finale_vero_definitivo.txt`)?  
    a) Git non può importare file con nomi lunghi  
    b) Non è possibile condividere i file con altri  
    c) Le copie occupano troppa RAM durante l'esecuzione  
    *d) Diventa difficile gestire tante versioni manuali nel tempo
    
2. Hai una cartella con il codice di un nuovo progetto e vuoi iniziare a tracciarne la storia con Git. Qual è il primo comando da eseguire nella cartella?  
    a) `git clone .`  
    b) `git start`  
    *c) `git init`  
    d) `git add .`
    
3. Perché la riga di comando è importante quando si usa Git?  
    a) Perché le interfacce grafiche non supportano i branch remoti  
    b) Perché solo da terminale si può fare push verso un remote  
    *c) Perché può essere più veloce e potente in molti casi  
    d) Perché la GUI non mostra correttamente i conflitti
    
4. Cosa rappresenta un commit in Git?  
    a) Una sincronizzazione automatica col remote  
    b) Un backup compresso dell'intera macchina  
    c) Un'etichetta testuale applicata a un branch  
    *d) Un'istantanea dello stato del progetto in un dato momento
    
5. Qual è l'idea chiave del lavoro con i remoti?  
    a) Mantenere sempre un unico branch locale per evitare conflitti  
    *b) Collaborare online con altri utenti o sincronizzare il lavoro su più dispositivi  
    c) Evitare i merge lavorando strettamente in sequenza  
    d) Usare solo tag al posto dei branch per la condivisione
    
6. Per aggiungere file alla staging area in vista del prossimo commit, qual è il comando base?  
    a) `git track`  
    b) `git include`  
    c) `git stage`  
    *d) `git add`
    
7. Cos'è l'index (staging area)?  
    a) Il file di configurazione locale del repository  
    *b) L'area dove prepari il contenuto del prossimo commit  
    c) Il log compresso dei commit precedenti  
    d) L'elenco dei branch remoti tracciati
    
8. Se modifichi un file già tracciato, l'index si aggiorna automaticamente?  
    a) Sì, Git rileva i cambiamenti in tempo reale  
    *b) No, va aggiornato con `git add` (salvo casi specifici)  
    c) Solo se il file era stato aggiunto con `git add -f`  
    d) Solo dopo aver eseguito `git fetch`
    
9. Quale comando viene usato per togliere una modifica dall'index (unstage)?  
    a) `git checkout --index`  
    b) `git unstage`  
    c) `git restore --worktree`  
    *d) `git reset`
    
10. Qual è il vantaggio principale di commit piccoli e separati?  
    a) Permettono di fare push senza autenticazione  
    b) Riducono il peso del repository su disco  
    *c) Rendono più chiaro cosa è cambiato e facilitano il debug  
    d) Rendono impossibile la comparsa di conflitti
    
11. Qual è il concetto centrale dello staging "passo per passo"?  
    a) Aggiungere sempre tutti i file con `git add .` per non dimenticarne nessuno  
    b) Eseguire sempre un rebase prima di ogni commit  
    *c) Dividere le modifiche in commit con ordine e granularità sensati  
    d) Fare squash di tutti i commit prima del push
    
12. Quale comando può essere comodo per fare commit includendo direttamente file già tracciati modificati, saltando `git add`?  
    a) `git commit --include`  
    b) `git push --auto-stage`  
    *c) `git commit -a`  
    d) `git add -m`
    
13. Cosa succede tipicamente facendo `git checkout <hash>` su un commit specifico?  
    a) Git crea automaticamente un tag su quel commit  
    b) Viene avviato un merge interattivo dal commit scelto  
    c) Il branch corrente viene spostato a quel commit  
    *d) Sposti la HEAD su quel commit
    
14. Quale comando crea un branch senza spostarsi su di esso?  
    a) `git checkout -b <nome>`  
    *b) `git branch <nome>`  
    c) `git switch --create <nome>`  
    d) `git tag -b <nome>`
    
15. Quando fai commit mentre sei su un branch, cosa succede?  
    a) Il commit rimane in sospeso finché non fai push  
    b) Si crea automaticamente un branch secondario  
    *c) Il branch avanza al nuovo commit  
    d) HEAD si sposta ma il branch resta fermo al commit precedente
    
16. Quale comando elimina un branch locale?  
    a) `git branch --remove <ref>`  
    *b) `git branch -D <ref>`  
    c) `git checkout --delete <ref>`  
    d) `git rm --branch <ref>`
    
17. Se vuoi creare una linea di sviluppo alternativa partendo da un commit precedente, qual è l'approccio corretto?  
    a) Fare revert di tutti i commit successivi sul branch attuale  
    b) Clonare il repository e lavorare sulla copia  
    *c) Tornare al commit interessato e creare un branch da lì  
    d) Creare un nuovo branch
    
18. Cosa indica `HEAD` in Git?  
    a) Il primo commit del repository (il commit radice)  
    *b) Il commit/tag/branch sul quale mi trovo attualmente  
    c) Il branch con più commit nella cronologia  
    d) Il branch principale
    
19. Quale comando crea un nuovo branch e vi si sposta immediatamente?  
    a) `git branch -m <nome>`  
    *b) `git checkout -b <nome>`  
    c) `git branch --move <nome>`  
    d) `git reset --branch <nome>`
    
20. Quale descrizione rappresenta meglio un branch?  
    a) È una serie di commit separata da quella principale  
    *b) È un segnaposto per viaggiare velocemente in un determinato commit (solitamente l'ultimo di una serie)  
    c) È solo il ramo main  
    d) È come il commento in un codice, non ha effetto sulla repository ma serve per annotazioni
    
21. Quale procedura permette di spostare un branch su un commit diverso e aggiornare la working directory?  
    *a) `git checkout <branch>` + `git reset --hard <commit>`  
    b) `git branch -f <branch> <commit>`  
    c) `git checkout --move <branch> <commit>`  
    d) `git branch --set-commit <branch> <commit>`
    
22. Su Linux, cosa fa il comando `rm *pdf*`  
    *a) Elimina tutti i files che includono pdf nel nome  
    b) Elimina tutti i files con estensione pdf  
    c) Elimina tutti i filese che iniziano per pdf  
    d) Elimina tutti i files che finiscono per pdf
    
23. Qual è lo scopo del merge?  
    a) Creare un tag che punta all'ultimo commit comune tra due branch  
    b) Sovrascrivere il branch di destinazione con quello sorgente  
    *c) Unire due linee di sviluppo  
    d) Ridurre il numero di commit nel repository
    
24. Cosa devo fare se ci sono conflitti durante il merge?  
    a) Eseguire di nuovo `git merge` con gli stessi branch  
    *b) Rimuovere i marcatori di conflitto nei file interessati con le dovute modifiche, fare `git add` e poi un commit  
    c) Solo `git push` per inviare la risoluzione al remote  
    d) Correggere i propri files in modo che non creino conflitto
    
25. Quando due persone modificano la stessa parte di un file e poi sincronizzano, cosa può succedere?  
    a) Git sceglie automaticamente la versione più recente  
    b) Il file viene duplicato con entrambe le versioni  
    c) Il push viene rifiutato permanentemente  
    *d) Si genera un conflitto da risolvere manualmente
    
26. Quale coppia di comandi descrive la sincronizzazione base con un repository remoto?  
    a) `stash` + `stash pop`  
    b) `fetch` + `rebase`  
    *c) `pull` + `push`  
    d) `rebase -i` + `tag`
    
27. Cosa fa `git clone`?  
    a) Crea un archivio ZIP del repository  
    b) Scarica solo i commit mancanti aggiornando un repo già esistente  
    c) Duplica un branch locale in un nuovo branch remoto  
    *d) Crea una copia locale completa di un repository remoto
    
28. In un flusso di tipo Pull Request semplificato, quale passaggio è normalmente presente?  
    a) Fare rebase interattivo prima di ogni modifica  
    *b) Creare un branch dedicato alla soluzione/modifica  
    c) Lavorare direttamente sul branch principale condiviso  
    d) Eliminare la cronologia dei commit prima del merge
    
29. Cosa fa `git rebase` nel caso più comune?  
    a) Unisce due branch senza creare un commit di merge  
    b) Elimina i commit più vecchi dalla cronologia  
    *c) Riapplica commit sopra una nuova base  
    d) Crea un remote con la cronologia alternativa
    
30. Qual è una strategia valida per riordinare commit già esistenti?  
    a) Usare `git stash` per mettere i commit nel nuovo ordine  
    *b) Resettare e poi fare `cherry-pick` nell'ordine desiderato  
    c) Rinominare i commit con `git tag`  
    d) Fare `git merge --abort` e ripartire da zero
    
31. Qual è il comando per applicare uno o più commit specifici su un altro branch?  
    a) `git rebase --pick`  
    b) `git apply`  
    *c) `git cherry-pick`  
    d) `git patch`
    
32. Quale comando può ripristinare un file allo stato dell'ultimo commit, scartando le modifiche locali?  
    a) `git reset --file-only <file>`  
    *b) `git checkout <file>`  
    c) `git log --file <file>`  
    d) `git branch --restore <file>`
    
33. Qual è la differenza principale tra ripristinare un file dall'ultimo commit e da un commit più vecchio?  
    a) Non c'è differenza, il comando è identico  
    b) Nel secondo caso il file viene messo in staging automaticamente  
    *c) Nel secondo caso devi specificare anche il commit sorgente  
    d) Nel secondo caso Git crea sempre un branch temporaneo
    
34. Quale comando è usato per spostare HEAD (e opzionalmente index/working tree) a un commit precedente?  
    a) `git revert`  
    b) `git move`  
    *c) `git reset [commit]`  
    d) `git checkout --hard`
    
35. Perché `git revert` è spesso preferibile a `git reset` quando hai già pushato?  
    *a) Perché non riscrive la storia, aggiungendo un nuovo commit che annulla le modifiche  
    b) Perché sposta il branch a un commit precedente senza lasciare traccia  
    c) Perché riscrive la storia in modo che gli altri collaboratori non se ne accorgano  
    d) Perché annulla le modifiche solo nella working directory senza toccare la history
    
36. A cosa serve `git reflog`?  
    a) A visualizzare le differenze tra due branch  
    *b) A vedere dove hanno puntato HEAD e i ref in passato  
    c) A mostrare i log del remote  
    d) A elencare i file presenti nell'index
    
37. Qual è il vantaggio principale di `git bisect`?  
    a) Permette di modificare il messaggio dei commit passati  
    b) Esegue il merge automatico tra branch divergenti  
    c) Ripristina i file eliminati accidentalmente  
    *d) Trova un commit problematico più rapidamente della ricerca lineare
    
38. Cosa vuol dire "eliminare una serie di commit" in git?  
    a) Eliminarlo definitivamente  
    b) Sovrascriverli con un nuovi commit  
    *c) Spostare e resettare i branch in modo da "dimenticarsi" dei commit  
    d) Nessuna delle risposte
    
39. A cosa serve `git stash`?  
    a) A rimuovere i file non tracciati dalla working directory  
    b) A creare un archivio compresso del repository  
    *c) A salvare temporaneamente modifiche non committate  
    d) A rinominare branch locali
    
40. Cosa fa `git stash pop`?  
    a) Elimina tutte le voci dello stash senza applicarle  
    *b) Applica lo stash e lo rimuove dallo stack  
    c) Crea un commit con le modifiche dello stash  
    d) Mostra il contenuto dello stash senza modificarlo
    
41. Qual è l'effetto di `git stash clear`?  
    a) Svuota l'index senza toccare la working directory  
    b) Resetta il branch corrente all'ultimo commit  
    *c) Rimuove tutte le voci dello stash  
    d) Rimuove i file non tracciati ma mantiene gli stash
    
42. Quale comando crea un branch a partire da uno stash?  
    a) `git stash pop --branch <nome>`  
    b) `git checkout -b <nome> stash@{0}`  
    c) `git branch --from-stash <nome>`  
    *d) `git stash branch <nome> [stash]`
    
43. Quale problema può verificarsi dopo `git stash pop` se nel frattempo hai modificato gli stessi file?  
    a) L'index viene resettato automaticamente  
    b) Git entra in detached HEAD  
    *c) Conflitto di merge  
    d) Lo stash viene perso senza applicare le modifiche
    
44. Cos'è un tag in Git?  
    a) Un branch di sola lettura  
    b) Una copia locale di un branch remoto  
    c) Un commento associato a un file nella staging area  
    *d) Un'etichetta che punta a un commit
    
45. Hai creato un tag `v1.0` per errore sul commit sbagliato e vuoi rimuoverlo localmente prima di ricrearlo nel posto giusto. Quale comando usi?  
    a) `git reset --tag v1.0`  
    *b) `git tag -d v1.0`  
    c) `git tag --remove v1.0`  
    d) `git rm --tag v1.0`
    
46. Quale affermazione sui tag è corretta?  
    a) Vengono eliminati automaticamente dopo il merge  
    b) Possono essere applicati solo al commit HEAD corrente  
    *c) Si possono aggiungere anche a commit più vecchi e si possono pushare/pullare  
    d) Non vengono mai trasferiti con `git push`, nemmeno esplicitamente