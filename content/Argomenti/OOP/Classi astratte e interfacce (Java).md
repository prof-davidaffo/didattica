[Abstract Classes and Methods in Java Explained in 7 Minutes](https://www.youtube.com/watch?v=HvPlEJ3LHgE)
## Classi astratte
* Sono classi che **possono contenere sia metodi astratti sia metodi concreti**.
* **Possono avere campi (variabili di istanza) con stato e costruttori**.
* Si estendono con `extends` e si può estendere **una sola classe astratta**.
* Servono per **definire un comportamento comune parziale** e lasciare ai sottotipi la responsabilità di completarlo.
### Esempio
```java
public abstract class Animal {
    protected String name;
    
    public Animal(String name) {
        this.name = name;
    }
    
    public void sleep() {
        System.out.println(name + " is sleeping.");
    }
    
    public abstract void makeSound();
}

public class Dog extends Animal {
    public Dog(String name) {
        super(name);
    }
    
    @Override
    public void makeSound() {
        System.out.println("Woof!");
    }
}
```
In questo esempio:
- `Animal` definisce un comportamento comune (`sleep()`) e obbliga le sottoclassi a definire `makeSound()`.
- `Dog` e `Cat` sono animali specifici che implementano il proprio verso.
- Tutti gli animali hanno un nome e fanno un verso, non può essere diversamente
## Interfacce
* Contengono solo la **firma dei metodi astratti** (prima di Java 8) oppure anche **metodi `default` e `static`** (da Java 8).
* **Non hanno costruttori né stato interno** (salvo costanti `public static final`).
* Si implementano con `implements` e **si possono implementare più interfacce**.
* Servono a **definire un contratto di comportamento** che più classi possono condividere anche se non hanno relazione gerarchica.
### Esempio di interfaccia
```java
public interface Flyable {
    void fly();
}

public class Bird implements Flyable {
    @Override
    public void fly() {
        System.out.println("The bird is flying.");
    }
}

public interface Swimmable {
    void swim();
}

public class Duck implements Flyable, Swimmable {
    @Override
    public void fly() {
        System.out.println("Duck flies.");
    }
    @Override
    public void swim() {
        System.out.println("Duck swims.");
    }
}
```
In questo esempio:
- `Flyable` definisce il contratto per gli animali che possono volare.
- `Swimmable` definisce il contratto per gli animali che possono nuotare.
- `Duck` implementa entrambi i comportamenti, poiché sa sia nuotare che volare.
- `Penguin` implementa solo la capacità di nuotare.
## Quando usare l’uno piuttosto che l’altro
Usa una **classe astratta** se:
* Vuoi **fornire un’implementazione parziale** comune a più classi correlate.
* C’è una **gerarchia naturale** (es. *Animale* → *Cane*, *Gatto*).
* Hai bisogno di **stato condiviso** o di costruttori comuni.
Usa un’**interfaccia** se:
* Vuoi definire **solo un insieme di comportamenti** senza imporre implementazioni comuni.
* Ti serve che classi diverse possano condividere un contratto.
* Devi usare **ereditarietà multipla** dei comportamenti.
Per riassumere:
* **Classe astratta**: ereditarietà singola + stato + metodi concreti e astratti.
* **Interfaccia**: ereditarietà multipla + solo contratto + da Java 8 anche `default` methods.
