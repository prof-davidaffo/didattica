Ecco una possibile esercitazione di laboratorio integrata:

**Esercitazione di laboratorio: Processi in Linux**

**Obiettivo:**

L'obiettivo di questa esercitazione è quello di comprendere come funzionano le chiamate di funzione da shell di Linux per creare, monitorare, distruggere processi.

**Prerequisiti:**

- Conoscenza di base del sistema operativo Linux
- Conoscenza di base del linguaggio di programmazione C

**Materiali:**

- Un computer con sistema operativo Linux
- Un editor di testo
- Un compilatore C

**Istruzioni:**

**Passaggio 1: Creare un processo con la shell**

Nel primo passaggio, gli alunni dovranno creare un processo con la shell. Per fare questo, è possibile utilizzare il comando `fork()`. Questo comando crea un nuovo processo figlio che è un clone esatto del processo padre.

**Relazione sul laboratorio:**

- Cosa succede quando si esegue il comando `fork()`?
- Qual è la sintassi del comando `fork()`?
- Come utilizzare il comando `ps()` per trovare il PID del processo figlio?

**Passaggio 2: Monitorare un processo con la shell**

Nel secondo passaggio, gli alunni dovranno monitorare un processo con la shell. Per fare questo, è possibile utilizzare il comando `ps()`. Questo comando visualizza informazioni sui processi in esecuzione.

**Relazione sul laboratorio:**

- Quali informazioni vengono visualizzate dal comando `ps()`?
- Come utilizzare il comando `ps()` per trovare un processo specifico?
- Come utilizzare il comando `ps()` per visualizzare le informazioni sulla memoria di un processo?

**Passaggio 3: Distruggere un processo con la shell**

Nel terzo passaggio, gli alunni dovranno distruggere un processo con la shell. Per fare questo, è possibile utilizzare il comando `kill()`. Questo comando invia un segnale a un processo, che può causare l'interruzione o l'uscita del processo.

**Relazione sul laboratorio:**

- Quali segnali è possibile inviare a un processo con il comando `kill()`?
- Come utilizzare il comando `kill()` per distruggere un processo?

**Passaggio 4: Creare un programma C che utilizza una risorsa**

Nel quarto passaggio, gli alunni dovranno creare un programma C che utilizza una risorsa. Per questo esempio, il programma utilizzerà un semaforo per accedere a un file.

**Relazione sul laboratorio:**

- Come utilizzare i semafori per accedere a una risorsa condivisa?
- Come utilizzare la shell per verificare quali processi stanno usando una risorsa?

**Passaggio 5: Verificare la memoria virtuale**

Nel quinto passaggio, gli alunni dovranno verificare la memoria virtuale utilizzata dai processi in esecuzione. Per fare questo, è possibile utilizzare il comando `top()`.

**Relazione sul laboratorio:**

- Come utilizzare il comando `top()` per visualizzare le informazioni sulla memoria dei processi in esecuzione?

**Conclusione**

Al termine di questa esercitazione, gli alunni dovrebbero avere una buona comprensione di come funzionano le chiamate di funzione da shell di Linux per creare, monitorare, distruggere processi. Inoltre, gli alunni dovrebbero essere in grado di creare i propri semplici programmi in C che utilizzano una determinata risorsa e verificare quali processi stanno usando quella risorsa.

Questa esercitazione integrata copre tutti i concetti chiave relativi ai processi in Linux, senza includere la concorrenza o i thread. Gli alunni impareranno a:

- Creare un processo con la shell
- Monitorare un processo con la shell
- Distruggere un processo con la shell
- Utilizzare i semafori per accedere a una risorsa condivisa
- Verificare la memoria virtuale utilizzata dai processi in esecuzione

Naturalmente, è possibile modificare l'esercitazione in base agli interessi e ai livelli di abilità degli alunni. Ad esempio, è possibile richiedere agli alunni di creare programmi C più complessi che utilizzano più risorse o che interagiscono tra loro.

**Ecco alcuni suggerimenti per l'esecuzione dell'esercitazione:**

- Fornite agli alunni un'introduzione ai concetti di base dei processi in Linux.
- Dividete l'esercitazione in parti più piccole e gestibili.
- Fornite agli alunni il codice sorgente dei programmi C necessari.
- Fornite agli alunni feedback sui loro risultati.