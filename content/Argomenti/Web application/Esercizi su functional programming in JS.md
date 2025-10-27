## 11.1 Functions ARE Variables
1. **Funzione come valore**
   Scrivi una funzione `sayHello(name)` che stampi “Hello, [name]”. Assegnala poi a una variabile `greet` e invoca `greet("Alice")`.
2. **Funzione passata come parametro**
   Scrivi una funzione `execute(fn)` che riceve una funzione e la esegue. Passale una funzione che stampi un messaggio personalizzato.
3. **Funzione restituita da un’altra funzione**
   Scrivi una funzione `makeAdder(n)` che restituisca una nuova funzione che somma `n` al valore ricevuto.
   Esempio:
```js
const addFive = makeAdder(5)
console.log(addFive(10)) // 15
```
4. **Alias e riferimenti**
   Crea una funzione `shout(msg)` che stampi il messaggio in maiuscolo. Poi scrivi:
```js
const loud = shout
loud("hey")
```
Spiega con un commento nel codice perché `loud` e `shout` fanno riferimento alla stessa funzione.
5. **Differenza tra `fn` e `fn()`**
   Scrivi:
```js
function hello() { console.log("hi") }
const a = hello
const b = hello()
console.log(a, b)
```
Spiega nel codice perché `a` contiene la funzione e `b` contiene il suo risultato.
6. **Funzione che gestisce più operazioni**
   Scrivi una funzione `applyOperations(value, ...operations)` che riceve un numero e una serie di funzioni da applicare in sequenza.
   Esempio:
```js
function double(x) { return x * 2 }
function addOne(x) { return x + 1 }
console.log(applyOperations(3, double, addOne)) // 7
```
L’esercizio unisce i concetti di funzione come valore, parametro e risultato.
## 11.2 Object Functions
1. **Metodi di un oggetto**
   Crea un oggetto `counter` con una proprietà `count` inizializzata a 0 e un metodo `increment()` che aumenti `count` di 1 ogni volta che viene chiamato. Stampa il valore aggiornato dopo ogni chiamata.
2. **Uso di `this` nei metodi**
   Aggiungi al precedente oggetto `counter` un metodo `reset()` che riporti `count` a 0. Assicurati di usare `this` per accedere alla proprietà interna.
3. **Condivisione di metodi**
   Definisci una funzione `showBalance` che stampi il valore di `this.balance`. Crea due oggetti `walletA` e `walletB` con proprietà `balance` diverse e assegna loro la funzione `showBalance` come metodo. Osserva come cambia il risultato a seconda dell’oggetto che la chiama.
4. **Metodo che riceve una funzione come parametro**
   Crea un oggetto `bankAccount` con una proprietà `balance` e un metodo `update(fn)` che accetti una funzione come parametro. Il metodo deve aggiornare `balance` in base al valore restituito da `fn(balance)`. Prova a passare diverse funzioni (es. una che raddoppia il saldo, una che lo dimezza).
5. **Perdita del contesto di `this`**
   Usa l’oggetto `bankAccount` del punto precedente. Assegna il metodo `update` a una variabile separata, ad esempio `const updater = bankAccount.update`, e poi chiamala. Spiega con un commento cosa accade e perché `this` non si riferisce più all’oggetto originale.
6. **Oggetto con metodi interdipendenti**
   Crea un oggetto `player` con proprietà `name` e `score`. Aggiungi tre metodi:
* `addPoints(n)` che aggiunge punti al punteggio,
* `penalty(n)` che sottrae punti,
* `summary()` che restituisce una stringa con nome e punteggio aggiornato.
  Assicurati che tutti i metodi usino `this` e che sia possibile concatenarli come:
```js
player.addPoints(10).penalty(3).summary()
```
## 11.3 Callback Functions
1. **Callback semplice**
   Scrivi una funzione `doTwice(callback)` che esegua due volte la funzione passata come argomento. Provala passando una funzione che stampi un messaggio.
2. **Callback con parametro**
   Scrivi una funzione `repeatMessage(message, callback)` che chiami `callback` passando come argomento il messaggio ricevuto. Il callback deve gestire la visualizzazione del messaggio (ad esempio stampandolo in maiuscolo o con un prefisso).
3. **Simulazione asincrona**
   Scrivi una funzione `loadData(callback)` che usi `setTimeout` per simulare un caricamento di 2 secondi, poi chiami `callback("Dati caricati")`. Provala con due callback diversi: uno che stampa il messaggio e uno che aggiunge un testo aggiuntivo (“Operazione completata”).
4. **Catena di callback**
   Definisci tre funzioni:
* `fetchData(callback)` che simula il recupero di dati dopo 1 secondo,
* `processData(callback)` che trasforma i dati (ad esempio aggiungendo un campo),
* `displayData(callback)` che mostra il risultato finale.
  Falle chiamare in sequenza una dentro l’altra tramite callback, simulando un piccolo flusso asincrono.
5. **Funzioni anonime e arrow functions**
   Riscrivi uno degli esercizi precedenti usando prima una funzione anonima tradizionale e poi una arrow function. Commenta le differenze principali tra i due approcci in termini di leggibilità e comportamento del `this`.
6. **Gestione di un processo a fasi**
   Crea tre funzioni:
* `prepare(callback)`, che dopo 1 secondo stampa “Preparazione completata” e chiama `callback()`,
* `cook(callback)`, che dopo 2 secondi stampa “Cottura completata” e chiama `callback()`,
* `serve()`, che stampa “Piatto servito!”.
  Falle eseguire in sequenza tramite callback, simulando un piccolo processo coordinato.
## 11.4 Functional Looping
1. **forEach**
   Crea un array di nomi e usa `forEach()` per stampare un messaggio personalizzato per ciascuno (ad esempio “Ciao, Anna!”).
2. **map**
   Crea un array di numeri e usa `map()` per ottenere un nuovo array in cui ogni numero è elevato al quadrato. Stampa l’array originale e quello trasformato per mostrare che `map()` non modifica l’originale.
3. **filter**
   Crea un array di oggetti con le proprietà `{name, score}` e usa `filter()` per ottenere solo gli studenti con punteggio maggiore di 70.
4. **reduce**
   Usa `reduce()` per calcolare la somma totale dei punteggi ottenuti dagli studenti filtrati nell’esercizio precedente.
5. **Combinazione di funzioni funzionali**
   Data la lista `const data = [3, 12, 7, 25, 9, 18]`, usa in un’unica catena `filter`, `map` e `reduce` per:
* filtrare solo i numeri maggiori di 10,
* raddoppiare i valori rimanenti,
* calcolare la somma finale.
6. **Funzione `compose`**
   Scrivi una funzione `compose(f, g)` che restituisca una nuova funzione corrispondente a `x => f(g(x))`. Provala creando due semplici funzioni come `double(x)` e `increment(x)` e combinandole in diversi ordini.
7. **Analisi dati completa**
   Crea un array di oggetti rappresentanti studenti, ad esempio:
```js
const students = [
  { name: "Anna", grade: 28 },
  { name: "Luca", grade: 18 },
  { name: "Sara", grade: 30 },
  { name: "Marco", grade: 22 }
]
```
Usa `filter`, `map` e `reduce` per:
* selezionare solo gli studenti con voto ≥ 24,
* ottenere un array dei loro nomi in maiuscolo,
* calcolare la media dei voti filtrati.
  Stampa tutti i risultati in modo leggibile.
## 11.5 Pure Functions
1. **Funzione pura semplice**
   Scrivi una funzione `addTax(price)` che restituisca il prezzo aumentato del 22% di IVA, senza modificare la variabile passata come argomento.
2. **Evitare effetti collaterali**
   Scrivi una funzione `applyDiscount(products, discount)` che restituisca **un nuovo array** di oggetti con il prezzo scontato, senza modificare l’array originale. Ogni oggetto ha la forma `{name, price}`.
3. **Funzione impura da correggere**
   Analizza e riscrivi in forma pura il seguente codice:
```js
let counter = 0
function increase() { counter++ }
increase()
```
La versione pura deve restituire un nuovo valore senza modificare variabili esterne.
4. **Composizione di funzioni pure**
   Crea tre funzioni pure:
```js
const double = x => x * 2
const addOne = x => x + 1
const square = x => x * x
```
Usando solo queste, costruisci manualmente una pipeline che calcoli `((x + 1) * 2)²` a partire da un numero di input.
5. **Pipeline generica**
   Scrivi una funzione `pipe(...fns)` che riceve una serie di funzioni e restituisca una nuova funzione che le applichi in sequenza a un valore iniziale.
   Esempio:
```js
const transform = pipe(addOne, double, square)
console.log(transform(2)) // 36
```
6. **Riconoscere funzioni pure e impure**
   Scrivi quattro piccole funzioni, due pure e due impure. Commenta nel codice quali sono e spiega in una riga perché.
   Esempio di criterio: modificano variabili globali, dipendono da input esterni, oppure restituiscono sempre lo stesso risultato con gli stessi argomenti.
7. **Versione pura di un flusso di calcolo**
   Scrivi un frammento di codice impuro che elabora una lista di prezzi modificando l’array originale:
```js
let prices = [100, 250, 80]
for (let i = 0; i < prices.length; i++) {
  prices[i] = prices[i] * 1.22
}
```
Riscrivilo in forma **pura** usando `map()` e memorizzando il risultato in un nuovo array `updatedPrices`.
Poi usa `reduce()` per calcolare il totale con IVA.
Il codice finale non deve modificare `prices`.
