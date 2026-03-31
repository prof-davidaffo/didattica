https://www.w3schools.com/java/java_generics.asp
## Java Generics
Generics permettono di scrivere classi, interfacce e metodi **parametrizzati con tipi**, rendendo il codice più riutilizzabile, sicuro e leggibile.
### Perché usare i generics
* **Riutilizzo del codice**: una sola definizione per tipi diversi
* **Sicurezza di tipo**: gli errori vengono rilevati a compile-time
* **Codice più pulito**: non serve il cast in lettura
### Classe generica
```java
class Box<T> {
  private T value;
  void set(T value) {
    this.value = value;
  }
  T get() {
    return value;
  }
}
```
```java
public class Main {
  public static void main(String[] args) {
    Box<String> stringBox = new Box<>();
    stringBox.set("Hello");
    System.out.println("Value: " + stringBox.get());
    Box<Integer> intBox = new Box<>();
    intBox.set(50);
    System.out.println("Value: " + intBox.get());
  }
}
```
Quando scrivi `Box<String>` o `Box<Integer>`, il compilatore sostituisce `T` con il tipo specificato, garantendo che il contenuto della box sia coerente con il tipo scelto.
### Metodo generico
```java
public class Main {
  public static <T> void printArray(T[] array) {
    for (T item : array) {
      System.out.println(item);
    }
  }
  public static void main(String[] args) {
    String[] names = {"Jenny", "Liam"};
    Integer[] numbers = {1, 2, 3};
    printArray(names);
    printArray(numbers);
  }
}
```
Il metodo `printArray` funziona con qualsiasi tipo di array, e Java deduce automaticamente il tipo di `T` in base all’argomento passato.
### Tipi limitati (bounded types)
Puoi usare `extends` per limitare il tipo generico:
```java
class Stats<T extends Number> {
  T[] nums;
  Stats(T[] nums) {
    this.nums = nums;
  }
  double average() {
    double sum = 0;
    for (T num : nums) {
      sum += num.doubleValue();
    }
    return sum / nums.length;
  }
}
```
```java
public class Main {
  public static void main(String[] args) {
    Stats<Integer> intStats = new Stats<>(new Integer[]{10, 20, 30});
    System.out.println("Integer average: " + intStats.average());
    Stats<Double> doubleStats = new Stats<>(new Double[]{1.5, 2.5, 3.5});
    System.out.println("Double average: " + doubleStats.average());
  }
}
```
Qui, `T` può essere solo un sottotipo di `Number`, e il metodo `doubleValue()` consente di trattare ogni numero come un `double`.
### Generics nelle collezioni
```java
ArrayList<String> list = new ArrayList<>();
list.add("Apple");
String fruit = list.get(0); // Nessun cast necessario
```
### Riepilogo
* I generics permettono codice **flessibile e sicuro**
* Possono essere usati con classi, metodi e interfacce
* Puoi **limitare** i tipi ammessi con `extends`
* Sono ampiamente usati nelle **Collections** di Java