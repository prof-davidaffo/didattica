# Audit e correzione dell'accessibilità web

Ricevi una pagina HTML volutamente mal progettata. Il tuo compito è individuarne i problemi di accessibilità e correggerli, documentando ogni scelta.

> **Cosa consegnerai alla fine:**
> 
> - `pagina-accessibile.html` — la versione corretta
> - `relazione` con: tabella di audit, descrizione delle correzioni, riflessione finale di almeno 10 righe

---

## Pagina di partenza

Salva il codice seguente in un file chiamato `pagina-inaccessibile.html` e aprilo nel browser prima di cominciare.

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Blog di Tecnologia</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      color: #aaaaaa;
    }
    .nav {
      background: #333;
      padding: 10px;
    }
    .nav a {
      color: #555555;
      text-decoration: none;
      margin-right: 15px;
    }
    .big-title {
      font-size: 2em;
      font-weight: bold;
      margin: 20px 0;
    }
    .subtitle {
      font-size: 1.3em;
      font-weight: bold;
      margin: 15px 0;
    }
    .error-msg {
      color: red;
      border: 1px solid red;
      padding: 5px;
    }
    .success-msg {
      color: green;
      border: 1px solid green;
      padding: 5px;
    }
    input, textarea {
      display: block;
      margin: 5px 0 15px;
      width: 300px;
    }
    :focus {
      outline: none;
    }
    .btn {
      background: #0055ff;
      color: white;
      padding: 10px 20px;
      cursor: pointer;
      display: inline-block;
    }
    table {
      width: 100%;
    }
    table td {
      padding: 10px;
      vertical-align: middle;
    }
  </style>
</head>
<body>

  <!-- NAVIGAZIONE -->
  <div class="nav">
    <a href="index.html">Home</a>
    <a href="articoli.html">Qui</a>
    <a href="contatti.html">Clicca qui</a>
  </div>

  <!-- INTESTAZIONE CON TABELLA USATA COME LAYOUT -->
  <table>
    <tr>
      <td><img src="logo.png"></td>
      <td><div class="big-title">Blog di Tecnologia</div></td>
    </tr>
  </table>

  <!-- CONTENUTO PRINCIPALE -->
  <div class="big-title">Ultimi articoli</div>

  <div class="subtitle">Intelligenza Artificiale nel 2024</div>
  <p>L'intelligenza artificiale sta trasformando ogni settore produttivo...</p>
  <a href="articolo1.html">Leggi di più</a>

  <div class="subtitle">Sicurezza informatica</div>
  <p>Le minacce informatiche sono in costante aumento nel panorama digitale...</p>
  <a href="articolo2.html">Leggi di più</a>

  <!-- IMMAGINE SENZA ALT E SENZA DESCRIZIONE -->
  <div>
    <img src="grafico-crescita.png">
  </div>

  <!-- VIDEO IN AUTOPLAY SENZA CONTROLLI NÉ SOTTOTITOLI -->
  <video src="demo.mp4" autoplay loop>
    Il tuo browser non supporta i video.
  </video>

  <!-- FORM DI CONTATTO INACCESSIBILE -->
  <div class="big-title">Contattaci</div>

  <div class="error-msg">I campi con * sono obbligatori</div>

  <div>Nome *</div>
  <input type="text" placeholder="Il tuo nome">

  <div>Email *</div>
  <input type="email" placeholder="La tua email">

  <div>Messaggio</div>
  <textarea placeholder="Scrivi qui il tuo messaggio..."></textarea>

  <br>

  <div class="btn" onclick="inviaForm()">Invia messaggio</div>

  <div class="error-msg" id="erroreForm" style="display:none;">
    Compila tutti i campi obbligatori.
  </div>
  <div class="success-msg" id="successoForm" style="display:none;">
    Messaggio inviato!
  </div>

  <!-- FOOTER -->
  <div style="margin-top: 40px; font-size: 0.8em;">
    &copy; 2024 Blog di Tecnologia. Tutti i diritti riservati.
    <span style="color: red;">&#9733;</span> Sito preferito dagli utenti
  </div>

  <script>
    function inviaForm() {
      document.getElementById('erroreForm').style.display = 'block';
    }
  </script>

</body>
</html>
```

---

## Fase 1 — Audit

Prima di toccare il codice, analizza la pagina con questi strumenti nell'ordine indicato. Ognuno rivela problemi che gli altri non mostrano.

### Strumenti da usare

1. **Ispezione manuale del markup** — leggi il codice HTML dall'inizio alla fine e annota tutto ciò che ti sembra sbagliato o mancante dal punto di vista semantico e strutturale.
2. **WAVE** — carica la pagina su [wave.webaim.org](https://wave.webaim.org/) oppure usa l'estensione browser. Leggi attentamente ogni errore e avviso.
3. **WebAIM Contrast Checker** — verifica ogni coppia colore testo / colore sfondo presente nel CSS. Annota il rapporto di contrasto ottenuto.
4. **Navigazione da tastiera** — apri la pagina nel browser e naviga usando solo `Tab`, `Shift+Tab`, `Enter` e `Spazio`. Prova a raggiungere tutti i link, compilare il form e cliccare il pulsante. Annota tutto ciò che non funziona o che non è visibile mentre è in focus.
5. **Screen reader** — attiva VoiceOver (`Cmd+F5` su Mac) o Narrator (`Win+Ctrl+Invio` su Windows) e ascolta come viene letta la pagina. Prova in particolare a compilare il form.

> Alcuni problemi emergono solo con la navigazione da tastiera o con lo screen reader. Non saltare questi passaggi: spesso rivelano errori che l'ispezione del codice non fa vedere.

### Scheda di audit

Per ogni problema trovato, compila una riga di questa tabella nella relazione:

|#|Elemento / sezione|Problema riscontrato|Principio WCAG|Livello|Gravità|
|---|---|---|---|---|---|
|1||||A / AA|alta / media / bassa|
|2||||||
|…||||||

### Checklist minima

Verifica almeno questi punti e indica per ciascuno se il problema è **presente**, **assente** o **parzialmente presente**.

- [ ] L'elemento `<html>` dichiara la lingua del documento con l'attributo `lang`
- [ ] Gli elementi heading sono usati in modo gerarchico e semantico, non sostituiti da classi CSS
- [ ] La pagina usa elementi di sezione semantici (`<nav>`, `<header>`, `<main>`, `<footer>`)
- [ ] Nessuna `<table>` viene usata per il layout visivo
- [ ] Tutte le immagini informative hanno un attributo `alt` descrittivo
- [ ] Le immagini decorative hanno `alt=""` o `aria-hidden="true"`
- [ ] I grafici o le immagini complesse hanno una descrizione testuale nella pagina
- [ ] Il contrasto testo/sfondo rispetta il requisito WCAG AA (≥ 4,5:1 per testo normale)
- [ ] Il colore non è l'unico mezzo per trasmettere informazioni
- [ ] Tutti gli input del form hanno una `<label>` associata tramite `for` e `id`
- [ ] I pulsanti sono implementati con `<button>`, non con `<div>` o `<span>`
- [ ] I link hanno testi descrittivi e autoesplicativi anche fuori contesto
- [ ] Il focus da tastiera è visibile su tutti gli elementi interattivi
- [ ] I messaggi di errore sono associati agli input e non comunicati solo con il colore
- [ ] Il video ha l'attributo `controls` e sottotitoli con `<track>`
- [ ] Il video non parte in automatico senza che l'utente possa fermarlo

---

## Fase 2 — Correzione

Crea una copia del file chiamata `pagina-accessibile.html` e correggila. Per ogni intervento, annota nella relazione cosa hai cambiato e perché quella scelta risolve il problema.

Le aree su cui lavorare sono le seguenti.

### Lingua della pagina

L'elemento `<html>` non dichiara la lingua del documento. Questo è un requisito WCAG di livello A: senza questa informazione gli screen reader non sanno con quale voce e pronuncia leggere il contenuto. Individua l'attributo corretto e aggiungilo.

### Struttura e semantica

La pagina non usa elementi HTML semantici: la navigazione, l'intestazione, il contenuto principale e il footer sono tutti `<div>` generici, invisibili agli screen reader come zone di riferimento. Allo stesso modo, i titoli sono simulati con classi CSS invece di usare la gerarchia degli heading. Riorganizza il markup usando gli elementi appropriati, verificando che la struttura degli heading abbia senso anche senza guardare lo stile visivo.

C'è anche una `<table>` usata per il layout visivo invece che per dati tabulari: gli screen reader la annunciano come tabella e cercano intestazioni di riga e colonna che non esistono, disorientando l'utente. Sostituiscila con una struttura CSS appropriata.

Infine, c'è un elemento interattivo che non è implementato con il tag semantico corretto. Individualo: non si tratta solo di stile, ma di comportamento — il tag sbagliato cambia come tastiera e screen reader interagiscono con quell'elemento.

### Link

Alcuni link hanno testi che non comunicano nulla fuori contesto — un utente che naviga con lo screen reader e salta da un link all'altro non capisce dove andrà a finire. Rendi ogni testo di link autoesplicativo.

### Immagini

Non tutte le immagini richiedono lo stesso trattamento. Una distinzione utile: un'immagine è _informativa_ se rimuoverla impoverirebbe il contenuto della pagina; è _decorativa_ se serve solo all'aspetto visivo e il contenuto resterebbe completo senza di essa. Da questa distinzione dipende cosa scrivere nell'attributo `alt` — o come usarlo.

Per le immagini che trasmettono informazioni complesse, come un grafico, un breve testo alternativo non è sufficiente: considera come rendere quelle stesse informazioni disponibili anche nel testo della pagina.

### Contrasto

Usa il Contrast Checker per misurare ogni coppia testo/sfondo che hai individuato nell'audit. Per ciascuna che non supera la soglia WCAG AA, scegli un colore che la rispetti senza stravolgere il design.

### Focus da tastiera

C'è una regola CSS che nasconde intenzionalmente l'indicatore di focus su tutti gli elementi. Rimuoverla non basta: assicurati che il focus sia effettivamente visibile e riconoscibile su ogni elemento interattivo della pagina.

### Form

Il form ha diversi livelli di inaccessibilità che si sommano: le etichette non sono associate agli input in modo che gli screen reader le leggano, i campi obbligatori non sono comunicati in modo robusto, e i messaggi di errore non raggiungono chi non usa il mouse. Intervieni su ognuno di questi aspetti. Per i messaggi dinamici, considera come fare in modo che vengano annunciati automaticamente quando compaiono.

### Video

Il video ha due problemi distinti: parte senza che l'utente lo abbia scelto, e non offre alternative per chi non può sentire l'audio. Risolvili entrambi.

### Footer

Il footer contiene un elemento visivo usato per comunicare un'informazione — ma quella informazione è veicolata solo attraverso il colore e la forma grafica, senza alcun testo alternativo o supporto semantico. Chi usa uno screen reader o ha difficoltà a percepire i colori non riceve la stessa informazione degli altri utenti. Individua l'elemento e trova un modo per rendere l'informazione accessibile indipendentemente dalla vista.

### Extra (facoltativi ma consigliati)

- Aggiungi uno skip link che permetta di saltare la navigazione e raggiungere direttamente il contenuto principale. Rendilo visibile solo quando è in focus.
- Aggiungi una media query per rispettare le preferenze di chi ha configurato il sistema operativo per ridurre il movimento.

---

## Consegna

Comprimi tutto in una cartella `cognome-accessibilita/` con questa struttura:

```
cognome-accessibilita/
├── pagina-inaccessibile.html   ← originale, non modificata
├── pagina-accessibile.html     ← versione corretta
└── relazione.pdf               ← o .txt / .md
```

### Cosa deve contenere la relazione

1. **Tabella di audit** — tutti i problemi trovati con le colonne indicate nella fase 1.
2. **Descrizione delle correzioni** — per ogni problema, spiega cosa hai fatto e perché quella soluzione risolve il problema di accessibilità.
3. **Riflessione finale** — almeno 10 righe. Cosa ti ha sorpreso di più? Quali problemi erano più difficili da trovare? Hai trovato problemi non presenti nella checklist?