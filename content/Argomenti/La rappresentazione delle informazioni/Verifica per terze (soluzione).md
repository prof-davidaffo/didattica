# Fila A
## Informazione e comunicazione
### Lunghezza fissa
Log^2(10) =~ 4
- A: 0000
- B: 0001
- C: 0010
- D: 0011
- E: 0100
- F: 0101
- G: 0110
- H: 0111
- I: 1000
- J: 1001
### Lunghezza variabile
- D: 00
- B: 110
- F: 010
- G: 011
- J: 101
- A: 1110
- C: 1001
- I: 1000
- E: 11110
- H: 11111
# Sistemi di numerazione posizionali
### 1. Conversione da Base 2 a Base 10 (11101.0111₂ → ?₁₀)
Per convertire da binario a decimale, moltiplichiamo ogni cifra per la potenza di 2 corrispondente alla sua posizione e sommiamo i risultati:

- \(1 \x 2^4 = 16\)
- \(1 \x 2^3 = 8\)
- \(1 \x 2^2 = 4\)
- \(0 \x 2^1 = 0\)
- \(1 \x 2^0 = 1\)
- \(0 \x 2^{-1} = 0\)
- \(1 \x 2^{-2} = 0.25\)
- \(1 \x 2^{-3} = 0.125\)
- \(1 \x 2^{-4} = 0.0625\)

Sommando questi valori, otteniamo \(16 + 8 + 4 + 0 + 1 + 0 + 0.25 + 0.125 + 0.0625 = 29.4375\).

**Risultato:** `11101.0111`₂ = `29.4375`₁₀

### 2. Conversione da Base 10 a Base 2 (23.466₁₀ → ?₂)
Per la parte intera (23):
- \(23 \div 2 = 11\) con resto \(1\)
- \(11 \div 2 = 5\) con resto \(1\)
- \(5 \div 2 = 2\) con resto \(1\)
- \(2 \div 2 = 1\) con resto \(0\)
- \(1 \div 2 = 0\) con resto \(1\)

Risultato: \(10111\)

Per la parte frazionaria (0.466), moltiplichiamo per 2 e teniamo traccia delle cifre prima del punto decimale per 4 iterazioni:
- \(0.466 \x 2 = 0.932\) → cifra binaria \(0\)
- \(0.932 \x 2 = 1.864\) → cifra binaria \(1\)
- \(0.864 \x 2 = 1.728\) → cifra binaria \(1\)
- \(0.728 \x 2 = 1.456\) → cifra binaria \(1\)

Risultato: \(10111.0111\)

**Risultato:** `23.466`₁₀ ≈ `10111.0111`₂

### 3. Conversione da Base 16 a Base 8 (CD63₁₆ → ?₈)
Per convertire da esadecimale a ottale, prima convertiamo in binario:
- C₁₆ = 1100₂
- D₁₆ = 1101₂
- 6₁₆ = 0110₂
- 3₁₆ = 0011₂

Unendo tutto: (\1100 1101 0110 0011\)

Poi raggruppiamo in gruppi di 3 cifre a partire da destra e convertiamo in ottale:
- 011 = 3
- 100 = 4
- 101 = 5
- 110 = 6
- 100 = 4
- (00)1 = 1


**Risultato:** `CD63`₁₆ = `146543`₈

### 4. Conversione da Base 8 a Base 16 (321₈ → ?₁₆)
Per convertire da ottale a esadecimale, prima convertiamo in binario:
- 3₈ = 011₂
- 2₈ = 010₂
- 1₈ = 001₂

Unendo tutto: \(0 1101 0001\)

Poi raggruppiamo in gruppi di 4 cifre a partire da destra e convertiamo in esadecimale:
- \(0001\)₂ = \(1\)₁₆
- \(1101\)₂ = \(D\)₁₆

**Risultato:** `321`₈ = `D1`₁₆

# Fila B
## Informazione e comunicazione
### Lunghezza fissa
- K: 0000
- L: 0001
- M: 0010
- N: 0011
- O: 0100
- P: 0101
- Q: 0110
- R: 0111
- S: 1000
- T: 1001

### Lunghezza variabile

Utilizzando l'algoritmo di Huffman, abbiamo ottenuto la seguente tabella di codifica a lunghezza variabile:

- L: 00
- N: 101
- O: 111
- Q: 100
- R: 010
- K: 0110
- S: 1101
- T: 0111
- M: 11001
- P: 11000
# Sistemi di numerazione posizionali
### 1. Conversione da Base 2 a Base 10 (10001.1101₂ → ?₁₀)
Per convertire da binario a decimale, moltiplichiamo ogni cifra per la potenza di 2 corrispondente alla sua posizione e sommiamo i risultati:

- \(1 \x 2^4 = 16\)
- \(0 \x 2^3 = 0\)
- \(0 \x 2^2 = 0\)
- \(0 \x 2^1 = 0\)
- \(1 \x 2^0 = 1\)
- \(1 \x 2^{-1} = 0.5\)
- \(1 \x 2^{-2} = 0.25\)
- \(0 \x 2^{-3} = 0\)
- \(1 \x 2^{-4} = 0.0625\)

Sommando questi valori, otteniamo \(16 + 0 + 0 + 0 + 1 + 0.5 + 0.25 + 0 + 0.0625 = 17.8125\).

**Risultato:** `10001.1101`₂ = `17.8125`₁₀

### 2. Conversione da Base 10 a Base 2 (61.625₁₀ → ?₂)
Per la parte intera (61):
- \(61 \div 2 = 30\) con resto \(1\)
- \(30 \div 2 = 15\) con resto \(0\)
- \(15 \div 2 = 7\) con resto \(1\)
- \(7 \div 2 = 3\) con resto \(1\)
- \(3 \div 2 = 1\) con resto \(1\)
- \(1 \div 2 = 0\) con resto \(1\)

Risultato: \(111101\)

Per la parte frazionaria (0.625), moltiplichiamo per 2 e teniamo traccia delle cifre prima del punto decimale per 4 iterazioni:
- \(0.625 \x 2 = 1.25\) → cifra binaria \(1\)
- \(0.25 \x 2 = 0.5\) → cifra binaria \(0\)
- \(0.5 \x 2 = 1.0\) → cifra binaria \(1\)
- \(0.0 \x 2 = 0.0\) → cifra binaria \(0\) (non necessario perché già raggiunta la precisione)

Risultato: \(111101.101\)

**Risultato:** `61.625`₁₀ ≈ `111101.101`₂

### 3. Conversione da Base 16 a Base 8 (279B₁₆ → ?₈)
Per convertire da esadecimale a ottale, prima convertiamo in binario:
- 2₁₆ = 0010₂
- 7₁₆ = 0111₂
- 9₁₆ = 1001₂
- B₁₆ = 1011₂

Unendo tutto: \(0 010 011 110 011 011\)

Poi raggruppiamo in gruppi di 3 cifre a partire da destra e convertiamo in ottale:
- \(011\)₂ = \(3\)₈
- \(011\)₂ = \(3\)₈
- \(110\)₂ = \(6\)₈
- \(011\)₂ = \(3\)₈
- \(010\)₂ = \(2\)₈

**Risultato:** `279B`₁₆ = `23633`₈

### 4. Conversione da Base 8 a Base 16 (610₈ → ?₁₆)
Per convertire da ottale a esadecimale, prima convertiamo in binario:
- 6₈ = 110₂
- 1₈ = 001₂
- 0₈ = 000₂

Unendo tutto: \(110001000\)

Poi raggruppiamo in gruppi di 4 cifre a partire da destra e convertiamo in esadecimale:
- \(1000\)₂ = \(8\)₁₆
- \(1000\)₂ = \(8\)₁₆
- \(0001\)₂ = \(1\)₁₆

**Risultato:** `610`₈ = `188`₁₆