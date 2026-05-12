# Esercizio Java — Arena dei personaggi

**Argomenti:** Interfacce · Classi astratte · Polimorfismo

---

## Contesto

Modella i personaggi di un GDR: tutti sono _entità_ con attributi comuni, ma solo alcuni sanno combattere, solo alcuni sanno lanciare magie. Le **interfacce** descrivono le _capacità_; la **classe astratta** descrive l'_essere_.

---

## Struttura da implementare

### Interfacce (capacità)

#### `interface Combattente`

Chiunque sappia attaccare fisicamente. Non implica essere un eroe: anche un mostro può implementarla.

|Tipo|Firma|
|---|---|
|astratto|`int attacca()` — restituisce il danno inflitto|
|astratto|`int getDifesa()`|
|default|`String grido()` → `"Per la gloria!"` — sovrascrivibile|

#### `interface Incantatore`

Chiunque possa lanciare magie, consumando mana. Indipendente da `Combattente`.

|Tipo|Firma|
|---|---|
|astratto|`int lanciaIncantesimo(String nome)` — restituisce danno magico|
|astratto|`int getManaAttuale()`|
|astratto|`boolean haManaSufficiente(int costo)`|
|default|`String descrizioneMagia()` → `"Mana: " + getManaAttuale()`|

---

### Classe astratta (struttura comune)

#### `abstract class Personaggio`

Ogni personaggio ha un nome, punti vita e un livello. Sa presentarsi e sa subire danni, ma il tipo di personaggio lo definisce la sottoclasse.

|Tipo|Membro|
|---|---|
|campo|`String nome`, `int pv`, `int livello`|
|concreto|`costruttore(nome, pv, livello)`|
|**astratto**|`abstract String classe()` — es. `"Guerriero"`, `"Mago"`, `"Negromante"`|
|**astratto**|`abstract int getPotere()` — valore sintetico della forza del personaggio|
|concreto|`void subisciDanno(int danno)` — riduce `pv`, minimo 0|
|concreto|`boolean isVivo()` → `pv > 0`|
|concreto|`String scheda()` → `"[classe] nome — Lv.livello PV:pv"`|

> `scheda()` chiama `classe()` e `getPotere()` anche se sono astratti: funziona grazie al **dynamic dispatch**.

---

### Classi concrete

#### `class Guerriero extends Personaggio implements Combattente`

Solo fisico, niente magia. Il danno dipende dalla forza; la difesa dall'armatura.

- Campi: `int forza`, `int armatura`
- `classe()` → `"Guerriero"`
- `getPotere()` → `forza + armatura`
- `attacca()` → `forza * livello / 2`
- `getDifesa()` → `armatura`
- `grido()` → `"Per il ferro e il sangue!"` _(override del default)_

---

#### `class Mago extends Personaggio implements Incantatore`

Solo magia, niente attacco fisico. Il mana si esaurisce lanciando incantesimi.

- Campi: `int intelligenza`, `int mana`
- `classe()` → `"Mago"`
- `getPotere()` → `intelligenza * 2`
- `lanciaIncantesimo(nome)` → se `mana >= 10`: `mana -= 10`, return `intelligenza * livello`; altrimenti return `0`
- `getManaAttuale()` e `haManaSufficiente(costo)` come da interfaccia

---

#### `class Paladino extends Personaggio implements Combattente, Incantatore`

Ibrido: combatte fisicamente e lancia incantesimi. Mana ridotto rispetto al mago puro.

- Campi: `int forza`, `int fede`, `int mana`
- `classe()` → `"Paladino"`
- `getPotere()` → `forza + fede`
- `attacca()` → `forza * livello / 2`
- `getDifesa()` → `fede / 2`
- `lanciaIncantesimo(nome)` → se `mana >= 15`: `mana -= 15`, return `fede * livello`; altrimenti return `0`

---

#### `class Negromante extends Personaggio implements Incantatore, Combattente`

Villain del party. Attacco fisico debole, magia oscura potente.

- Campi: `int oscurita`, `int mana`
- `classe()` → `"Negromante"`
- `getPotere()` → `oscurita * 3`
- `attacca()` → `2` _(attacco fisico irrisorio)_
- `lanciaIncantesimo(nome)` → `mana -= 20`, return `oscurita * livello * 2`
- `grido()` → `"Le tenebre vi inghiottiranno..."`

---

## Attività da svolgere

**1.** Implementa le interfacce `Combattente` e `Incantatore` con i metodi `default` indicati. I metodi default usano gli altri metodi dell'interfaccia — non hanno bisogno di campi.

**2.** Implementa la classe astratta `Personaggio` con costruttore, campi e tutti i metodi concreti. Ricorda che `scheda()` può chiamare `classe()` e `getPotere()` anche se astratti.

**3.** Implementa le quattro classi concrete. Attenzione al `Paladino`: implementa entrambe le interfacce, quindi deve fornire tutti i metodi di entrambe.

**4.** Nel `main`, crea una `List<Personaggio>` con almeno un oggetto per tipo. Poi simula un turno di combattimento: per ogni personaggio stampa `scheda()`; se è `Combattente` stampa anche il danno di `attacca()` e il suo `grido()`; se è `Incantatore` lancia un incantesimo e stampa il danno magico e il mana rimasto.

**5. Bonus:** scrivi un metodo `static Personaggio piuPotente(List<Personaggio> lista)` che usa `getPotere()` per trovare il personaggio più forte. Poi scrivi separatamente `static int dannoTotale(List<Combattente> lista)` — nota che il tipo del parametro è l'**interfaccia**, non la classe astratta. Chiamalo passando solo i combattenti estratti dalla lista principale.

---

## Punto chiave da capire

Il `Paladino` è insieme `Personaggio`, `Combattente` e `Incantatore`. Puoi assegnarlo a una variabile di uno qualsiasi di questi tre tipi. Questo è il polimorfismo in azione: stesso oggetto, tre "facce" diverse a seconda del contesto.

Il metodo `dannoTotale(List<Combattente>)` accetta una lista di interfaccia, non di classe astratta — dimostra che le interfacce sono _tipi_ a tutti gli effetti in Java.