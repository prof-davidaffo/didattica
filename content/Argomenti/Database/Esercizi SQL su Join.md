## Contesto: gestione corsi universitari
Si consideri un database che gestisce i corsi universitari e le iscrizioni degli studenti.  
I dati sono suddivisi in più tabelle per evitare duplicazioni e garantire una struttura normalizzata.
## Tabelle disponibili
|id|nome_corso|docente|crediti|
|---|---|---|---|
|1|Programmazione I|Rossi|12|
|2|Basi di dati|Bianchi|9|
|3|Sistemi operativi|Verdi|9|
|4|Reti di calcolatori|Neri|6|


|id|nome|anno_iscrizione|
|---|---|---|
|1|Luca|2022|
|2|Martina|2021|
|3|Giulia|2022|
|4|Marco|2023|

| student_id                                                                                                                                                                                                                                                                                                                                                                                        | course_id | voto |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------- | ---- |
| 1                                                                                                                                                                                                                                                                                                                                                                                                 | 1         | 28   |
| 1                                                                                                                                                                                                                                                                                                                                                                                                 | 2         | 30   |
| 2                                                                                                                                                                                                                                                                                                                                                                                                 | 1         | 25   |
| 2                                                                                                                                                                                                                                                                                                                                                                                                 | 3         | 27   |
| 3                                                                                                                                                                                                                                                                                                                                                                                                 | 2         | 26   |
## Esercizi su INNER JOIN
Esercizio 1  
Scrivi una query che mostri nome dello studente e nome del corso per tutte le iscrizioni presenti.  
Esercizio 2  
Elenca i corsi seguiti dallo studente di nome Luca, mostrando anche il voto ottenuto.  
Esercizio 3  
Mostra nome del corso e docente per tutti i corsi a cui è iscritto almeno uno studente.  
Esercizio 4  
Elenca gli studenti che hanno ottenuto un voto maggiore o uguale a 28, indicando corso e voto.  
Esercizio 5  
Mostra i nomi degli studenti iscritti a corsi da almeno 9 crediti.
## Esercizi su JOIN e ordinamenti
Esercizio 6  
Mostra nome dello studente, corso e voto, ordinando i risultati dal voto più alto al più basso.  
Esercizio 7  
Elenca i corsi ordinati per voto medio degli studenti, dal più alto al più basso.  
Esercizio 8  
Mostra per ogni studente il numero di corsi a cui è iscritto.
## Esercizi su LEFT JOIN
Esercizio 9  
Mostra tutti gli studenti con i corsi a cui sono iscritti, includendo anche quelli che non risultano iscritti ad alcun corso.  
Esercizio 10  
Elenca tutti i corsi con il numero di studenti iscritti, includendo anche i corsi senza iscritti.  
Esercizio 11  
Mostra nome del corso e nome dello studente, lasciando NULL il nome dello studente per i corsi senza iscrizioni.
## Esercizi su NULL e OUTER JOIN
Esercizio 12  
Elenca i corsi che non hanno alcuno studente iscritto.  
Esercizio 13  
Mostra gli studenti che non risultano iscritti a nessun corso.  
Esercizio 14  
Per ogni corso mostra il voto massimo ottenuto; se il corso non ha iscritti il valore deve essere NULL.
## Esercizi di riepilogo
Esercizio 15  
Mostra nome dello studente e media dei voti ottenuti, ordinando dal più alto al più basso.  
Esercizio 16  
Trova il docente i cui corsi hanno il voto medio più alto.  
Esercizio 17  
Mostra gli studenti iscritti solo a un singolo corso.