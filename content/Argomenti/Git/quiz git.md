# Quiz finale (testuale) - Git (scelta multipla)

Formato: scelta multipla (1 risposta corretta). La risposta corretta è indicata in **grassetto**.

---

## Fondamenti Git

1. Qual è il problema principale dell'approccio basato su copie manuali di file (`file_finale_vero_definitivo.txt`)?

- A. Git non può importare file con nomi lunghi
- B. Non è possibile condividere i file con altri
- C. Le copie occupano troppa RAM durante l'esecuzione
- **D. Diventa difficile gestire tante versioni manuali nel tempo**

2. Hai una cartella con il codice di un nuovo progetto e vuoi iniziare a tracciarne la storia con Git. Qual è il primo comando da eseguire nella cartella?

- A. `git clone .`
- B. `git start`
- **C. `git init`**
- D. `git add .`

3. Perché la riga di comando è importante quando si usa Git?

- A. Perché le interfacce grafiche non supportano i branch remoti
- B. Perché solo da terminale si può fare push verso un remote
- **C. Perché può essere più veloce e potente in molti casi**
- D. Perché la GUI non mostra correttamente i conflitti

4. Cosa rappresenta un commit in Git?

- A. Una sincronizzazione automatica col remote
- B. Un backup compresso dell'intera macchina
- C. Un'etichetta testuale applicata a un branch
- **D. Un'istantanea dello stato del progetto in un dato momento**

5. Qual è l'idea chiave del lavoro con i remoti?

- A. Mantenere sempre un unico branch locale per evitare conflitti
- **B. Collaborare online con altri utenti o sincronizzare il lavoro su più dispositivi**
- C. Evitare i merge lavorando strettamente in sequenza
- D. Usare solo tag al posto dei branch per la condivisione

---

## File e staging area (index)

8. Per aggiungere file alla staging area in vista del prossimo commit, qual è il comando base?

- A. `git track`
- B. `git include`
- C. `git stage`
- **D. `git add`**

9. Cos'è l'index (staging area)?

- A. Il file di configurazione locale del repository
- **B. L'area dove prepari il contenuto del prossimo commit**
- C. Il log compresso dei commit precedenti
- D. L'elenco dei branch remoti tracciati

10. Se modifichi un file già tracciato, l'index si aggiorna automaticamente?

- A. Sì, Git rileva i cambiamenti in tempo reale
- **B. No, va aggiornato con `git add` (salvo casi specifici)**
- C. Solo se il file era stato aggiunto con `git add -f`
- D. Solo dopo aver eseguito `git fetch`

11. Quale comando viene usato per togliere una modifica dall'index (unstage)?

- A. `git checkout --index`
- B. `git unstage`
- C. `git restore --worktree`
- **D. `git reset`**

12. Qual è il vantaggio principale di commit piccoli e separati?

- A. Permettono di fare push senza autenticazione
- B. Riducono il peso del repository su disco
- **C. Rendono più chiaro cosa è cambiato e facilitano il debug**
- D. Rendono impossibile la comparsa di conflitti

13. Qual è il concetto centrale dello staging "passo per passo"?

- A. Aggiungere sempre tutti i file con `git add .` per non dimenticarne nessuno
- B. Eseguire sempre un rebase prima di ogni commit
- **C. Dividere le modifiche in commit con ordine e granularità sensati**
- D. Fare squash di tutti i commit prima del push

14. Quale comando può essere comodo per fare commit includendo direttamente file già tracciati modificati, saltando `git add`?

- A. `git commit --include`
- B. `git push --auto-stage`
- **C. `git commit -a`**
- D. `git add -m`

---

## Branch e checkout

15. Cosa succede tipicamente facendo `git checkout <hash>` su un commit specifico?

- A. Git crea automaticamente un tag su quel commit
- B. Viene avviato un merge interattivo dal commit scelto
- C. Il branch corrente viene spostato a quel commit
- **D. Sposti la HEAD su quel commit**

16. Quale comando crea un branch senza spostarsi su di esso?

- A. `git checkout -b <nome>`
- **B. `git branch <nome>`**
- C. `git switch --create <nome>`
- D. `git tag -b <nome>`

17. Quando fai commit mentre sei su un branch, cosa succede?

- A. Il commit rimane in sospeso finché non fai push
- B. Si crea automaticamente un branch secondario
- **C. Il branch avanza al nuovo commit**
- D. HEAD si sposta ma il branch resta fermo al commit precedente

15. Quale comando elimina un branch locale?

- A. `git branch --remove <ref>`
- **B. `git branch -D <ref>`**
- C. `git checkout --delete <ref>`
- D. `git rm --branch <ref>`

19. Se vuoi creare una linea di sviluppo alternativa partendo da un commit precedente, qual è l'approccio corretto?

- A. Fare revert di tutti i commit successivi sul branch attuale
- B. Clonare il repository e lavorare sulla copia
- **C. Tornare al commit interessato e creare un branch da lì**
- D. Creare un nuovo branch

20. Cosa indica `HEAD` in Git?

- A. Il primo commit del repository (il commit radice)
- **B. Il commit/tag/branch sul quale mi trovo attualmente*
- C. Il branch con più commit nella cronologia
- D. Il branch principale

21. Quale comando crea un nuovo branch e vi si sposta immediatamente?

- A. `git branch -m <nome>`
- **B. `git checkout -b <nome>`**
- C. `git branch --move <nome>`
- D. `git reset --branch <nome>`

15. Quale descrizione rappresenta meglio un branch?
	1. È una serie di commit separata da quella principale
	2. **È un segnaposto per viaggiare velocemente in un determinato commit (solitamente l'ultimo di una serie)**
	3. È solo il ramo main
	4. È come il commento in un codice, non ha effetto sulla repository ma serve per annotazioni

16. Quale procedura permette di spostare un branch su un commit diverso e aggiornare la working directory?

	1. **`git checkout <branch>` + `git reset --hard <commit>`**
	2. `git branch -f <branch> <commit>`
	3. `git checkout --move <branch> <commit>`
	4. `git branch --set-commit <branch> <commit>`

---

## Files

22. Su Linux, cosa fa il comando `rm *pdf*`
	1. **Elimina tutti i files che includono pdf nel nome**
	2. Elimina tutti i files con estensione pdf
	3. Elimina tutti i filese che iniziano per pdf
	4. Elimina tutti i files che finiscono per pdf

## Merge, conflitti e sincronizzazione

22. Qual è lo scopo del merge?

- A. Creare un tag che punta all'ultimo commit comune tra due branch
- B. Sovrascrivere il branch di destinazione con quello sorgente
- **C. Unire due linee di sviluppo**
- D. Ridurre il numero di commit nel repository

22. Cosa devo fare se ci sono conflitti durante il merge?

- A. Eseguire di nuovo `git merge` con gli stessi branch
- **B. Rimuovere i marcatori di conflitto nei file interessati con le dovute modifiche, fare `git add` e poi un commit**
- C. Solo `git push` per inviare la risoluzione al remote
- D. Correggere i propri files in modo che non creino conflitto

24. Quando due persone modificano la stessa parte di un file e poi sincronizzano, cosa può succedere?

- A. Git sceglie automaticamente la versione più recente
- B. Il file viene duplicato con entrambe le versioni
- C. Il push viene rifiutato permanentemente
- **D. Si genera un conflitto da risolvere manualmente**

25. Quale coppia di comandi descrive la sincronizzazione base con un repository remoto?

- A. `stash` + `stash pop`
- B. `fetch` + `rebase`
- **C. `pull` + `push`**
- D. `rebase -i` + `tag`

26. Cosa fa `git clone`?

- A. Crea un archivio ZIP del repository
- B. Scarica solo i commit mancanti aggiornando un repo già esistente
- C. Duplica un branch locale in un nuovo branch remoto
- **D. Crea una copia locale completa di un repository remoto**

27. In un flusso di tipo Pull Request semplificato, quale passaggio è normalmente presente?

- A. Fare rebase interattivo prima di ogni modifica
- **B. Creare un branch dedicato alla soluzione/modifica**
- C. Lavorare direttamente sul branch principale condiviso
- D. Eliminare la cronologia dei commit prima del merge

---

## Cambiare la storia

28. Cosa fa `git rebase` nel caso più comune?

- A. Unisce due branch senza creare un commit di merge
- B. Elimina i commit più vecchi dalla cronologia
- **C. Riapplica commit sopra una nuova base**
- D. Crea un remote con la cronologia alternativa

29. Qual è una strategia valida per riordinare commit già esistenti?

- A. Usare `git stash` per mettere i commit nel nuovo ordine
- **B. Resettare e poi fare `cherry-pick` nell'ordine desiderato**
- C. Rinominare i commit con `git tag`
- D. Fare `git merge --abort` e ripartire da zero

30. Qual è il comando per applicare uno o più commit specifici su un altro branch?

- A. `git rebase --pick`
- B. `git apply`
- **C. `git cherry-pick`**
- D. `git patch`

---

## Recupero errori e troubleshooting

31. Quale comando può ripristinare un file allo stato dell'ultimo commit, scartando le modifiche locali?

- A. `git reset --file-only <file>`
- **B. `git checkout <file>`**
- C. `git log --file <file>`
- D. `git branch --restore <file>`

32. Qual è la differenza principale tra ripristinare un file dall'ultimo commit e da un commit più vecchio?

- A. Non c'è differenza, il comando è identico
- B. Nel secondo caso il file viene messo in staging automaticamente
- **C. Nel secondo caso devi specificare anche il commit sorgente**
- D. Nel secondo caso Git crea sempre un branch temporaneo

33. Quale comando è usato per spostare HEAD (e opzionalmente index/working tree) a un commit precedente?

- A. `git revert`
- B. `git move`
- **C. `git reset [commit]`**
- D. `git checkout --hard`

31. Perché `git revert` è spesso preferibile a `git reset` quando hai già pushato?

	- A. **Perché non riscrive la storia, aggiungendo un nuovo commit che annulla le modifiche**
	- B. Perché sposta il branch a un commit precedente senza lasciare traccia
	- C. Perché riscrive la storia in modo che gli altri collaboratori non se ne accorgano
	- D. Perché annulla le modifiche solo nella working directory senza toccare la history

35. A cosa serve `git reflog`?

- A. A visualizzare le differenze tra due branch
- **B. A vedere dove hanno puntato HEAD e i ref in passato**
- C. A mostrare i log del remote
- D. A elencare i file presenti nell'index

36. Qual è il vantaggio principale di `git bisect`?

- A. Permette di modificare il messaggio dei commit passati
- B. Esegue il merge automatico tra branch divergenti
- C. Ripristina i file eliminati accidentalmente
- **D. Trova un commit problematico più rapidamente della ricerca lineare**

31. Cosa vuol dire "eliminare una serie di commit" in git?
	1. Eliminarlo definitivamente
	2. Sovrascriverli con un nuovi commit
	3. **Spostare e resettare i branch in modo da "dimenticarsi" dei commit
	4. Nessuna delle risposte
---

## Stash

37. A cosa serve `git stash`?

- A. A rimuovere i file non tracciati dalla working directory
- B. A creare un archivio compresso del repository
- **C. A salvare temporaneamente modifiche non committate**
- D. A rinominare branch locali

38. Cosa fa `git stash pop`?

- A. Elimina tutte le voci dello stash senza applicarle
- **B. Applica lo stash e lo rimuove dallo stack**
- C. Crea un commit con le modifiche dello stash
- D. Mostra il contenuto dello stash senza modificarlo

39. Qual è l'effetto di `git stash clear`?

- A. Svuota l'index senza toccare la working directory
- B. Resetta il branch corrente all'ultimo commit
- **C. Rimuove tutte le voci dello stash**
- D. Rimuove i file non tracciati ma mantiene gli stash

40. Quale comando crea un branch a partire da uno stash?

- A. `git stash pop --branch <nome>`
- B. `git checkout -b <nome> stash@{0}`
- C. `git branch --from-stash <nome>`
- **D. `git stash branch <nome> [stash]`**

41. Quale problema può verificarsi dopo `git stash pop` se nel frattempo hai modificato gli stessi file?

- A. L'index viene resettato automaticamente
- B. Git entra in detached HEAD
- **C. Conflitto di merge**
- D. Lo stash viene perso senza applicare le modifiche

---

## Tag

42. Cos'è un tag in Git?

- A. Un branch di sola lettura
- B. Una copia locale di un branch remoto
- C. Un commento associato a un file nella staging area
- **D. Un'etichetta che punta a un commit**

43. Hai creato un tag `v1.0` per errore sul commit sbagliato e vuoi rimuoverlo localmente prima di ricrearlo nel posto giusto. Quale comando usi?

- A. `git reset --tag v1.0`
- **B. `git tag -d v1.0`**
- C. `git tag --remove v1.0`
- D. `git rm --tag v1.0`

44. Quale affermazione sui tag è corretta?

- A. Vengono eliminati automaticamente dopo il merge
- B. Possono essere applicati solo al commit HEAD corrente
- **C. Si possono aggiungere anche a commit più vecchi e si possono pushare/pullare**
- D. Non vengono mai trasferiti con `git push`, nemmeno esplicitamente