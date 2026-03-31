[Set and HashSet in Java - Full Tutorial](https://www.youtube.com/watch?v=QvHBHuuddYk)
## Set
* È un’**interfaccia** che rappresenta una **collezione di elementi unici** (cioè **nessun duplicato**).
* Non garantisce un ordine specifico degli elementi (a meno che tu non usi implementazioni particolari, come `TreeSet` o `LinkedHashSet`).
* Metodi principali:
  * `add(element)`: aggiunge un elemento (ritorna `true` se l’elemento non era presente).
  * `remove(element)`: rimuove un elemento.
  * `contains(element)`: verifica se l’elemento è presente.
  * `containsAll(collection)`: verifica se sono presenti tutti gli elementi della collection.
  * `size()`: numero di elementi.
* Esempio di dichiarazione:
  ```java
  Set<String> mySet = new HashSet<>();
  ```
---
## HashSet
* È **un’implementazione concreta di `Set`**.
* Utilizza una **tabella hash** per memorizzare gli elementi.
* Caratteristiche principali:
  * **Nessun ordine garantito** degli elementi.
  * Operazioni di inserimento, rimozione e ricerca **molto veloci** (tempo medio O(1)).
  * Non accetta duplicati.
* Esempio:
  ```java
  HashSet<Integer> numbers = new HashSet<>();
  numbers.add(10);
  numbers.add(20);
  numbers.add(10); // Ignorato, perché 10 è già presente
  ```
  Dopo queste istruzioni, `numbers` conterrà solo `10` e `20`.
---
## Altre implementazioni di `Set`
Oltre a `HashSet`, ci sono altre implementazioni che ti offrono comportamenti diversi:
* **LinkedHashSet**
  * Mantiene l’**ordine di inserimento**.
* **TreeSet**
  * Ordina gli elementi in modo **naturale** (es. crescente) o con un **Comparator** personalizzato.
  * Basato su una struttura ad **albero rosso-nero**.
---
## Quando usare HashSet?
Usa `HashSet` quando:
* Non ti importa l’ordine.
* Vuoi prestazioni ottimali su ricerca e inserimento.
* Ti serve solo assicurarti che non ci siano duplicati.
