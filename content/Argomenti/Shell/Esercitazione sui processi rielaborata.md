# Esercitazione prima parte
**Esercitazione sulla gestione dei processi in Linux tramite shell**

**Obiettivo:**

- Creare, identificare, terminare e monitorare i processi in Linux tramite la shell.
- Relazionare ogni singolo passaggio con screenshot su un documento di testo
- Utilizzare il man per capire a fondo cosa faccia ogni funzione (e specificarlo nella relazione)

**Istruzioni:**

**Parte 1: Introduzione**

- Il sistema operativo Linux è un sistema operativo multiprocesso, il che significa che può eseguire più processi contemporaneamente.
- Un processo è un programma in esecuzione.
- Ogni processo ha un proprio spazio di memoria e un proprio set di risorse.
- Il sistema operativo Linux utilizza uno scheduler per gestire i processi.

**Parte 2: Creazione di processi**

- Il comando `fork()` crea un nuovo processo che è un clone del processo corrente.
- Il PID del nuovo processo è un numero univoco che identifica il processo.

**Esercizio 1:**

- Crea un nuovo processo utilizzando il comando `fork()`.
- Utilizza il comando `ps` per verificare che il nuovo processo sia stato creato.

**Parte 3: Identificazione dei processi**

- Il comando `ps` visualizza un elenco dei processi in esecuzione.
- Il comando `pgrep` cerca un processo in base al suo nome.
- Il comando `pidof` cerca un processo in base al suo PID.

**Esercizio 2:**

- Utilizza il comando `ps` per visualizzare l'elenco dei processi in esecuzione.
- Utilizza il comando `pgrep` per cercare un processo con un nome specifico. Per questo compito, creare un nuovo file sorgente in c esclusivamente tramite shell e compilarlo.
- Utilizza il comando `pidof` per cercare un processo con un percorso specifico.

**Parte 4: Terminazione dei processi**

- Il comando `kill()` termina un processo in base al suo PID.
- Il comando `killall` termina tutti i processi con un nome specifico.

**Esercizio 3:**

- Utilizza il comando `kill()` per terminare un processo con un PID specifico.
- Utilizza il comando `killall` per terminare tutti i processi con un nome specifico.

**Parte 5: Monitoraggio dei processi**

- Il comando `top` visualizza un elenco dei processi in esecuzione in tempo reale.
- Il comando `htop` è un'interfaccia grafica per il comando `top`.

**Esercizio 4:**

- Utilizza il comando `top` per monitorare i processi in esecuzione.
- Utilizza il comando `htop` per monitorare i processi in esecuzione.

**Conclusione**

- In questa esercitazione, gli studenti hanno imparato a creare, identificare, terminare e monitorare i processi in Linux tramite la shell.
- Gli studenti dovrebbero essere in grado di utilizzare questi concetti per gestire i processi in Linux.

**Suggerimenti per gli studenti:**

- Assicurati di comprendere la sintassi dei comandi `fork()`, `ps`, `pgrep`, `pidof`, `kill()` e `killall`.
- Esegui gli esercizi più volte per consolidare la tua comprensione dei concetti.
- Se hai domande, chiedi al tuo insegnante o a un altro studente.

# Utilizzo concorrente di risorse
Per verificare in Linux se un processo sta utilizzando un determinato file tramite shell, puoi utilizzare il comando `lsof`. Il comando `lsof` visualizza un elenco di tutti i file aperti dai processi in esecuzione.

Per verificare se un processo sta utilizzando un determinato file, puoi utilizzare la seguente sintassi:

```
lsof | grep <nome_file>
```

Ad esempio, per verificare se il processo con PID 1234 sta utilizzando il file `/etc/passwd`, puoi utilizzare il seguente comando:

```
lsof | grep /etc/passwd | grep 1234
```

Se il processo sta utilizzando il file, vedrai il seguente output:

```
COMMAND     PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
<nome_processo> 1234 root    3u  IPv4 32768      0t0  TCP *:ssh (LISTEN)
```

L'output mostra che il processo `<nome_processo>` con PID 1234 sta utilizzando il file `/etc/passwd`.

In alternativa, puoi utilizzare il comando `fuser`. Il comando `fuser` visualizza un elenco di tutti i processi che utilizzano un determinato file o socket.

Per verificare se un processo sta utilizzando un determinato file, puoi utilizzare la seguente sintassi:

```
fuser <nome_file>
```

Ad esempio, per verificare se il processo con PID 1234 sta utilizzando il file `/etc/passwd`, puoi utilizzare il seguente comando:

```
fuser /etc/passwd
```

Se il processo sta utilizzando il file, vedrai il seguente output:

```
<nome_processo> 1234
```

L'output mostra che il processo `<nome_processo>` con PID 1234 sta utilizzando il file `/etc/passwd`.

# Esercitazione seconda parte
Creare e compilare due programmi in C che utilizzino la stessa risorsa, verificare cosa succede con i comandi citati nella parte sopra ed effettuare delle prove. Relazionare nel dettaglio tutto quello che succede.