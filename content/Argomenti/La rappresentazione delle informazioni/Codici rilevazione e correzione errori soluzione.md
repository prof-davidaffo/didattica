# Fila A
## CRC
$$M(x)=x^6+x^4+x^2+1=1010101 $$
$$G(x)=x^2+x=110$$
```
101010100 xor 110 =
110
\110
 110
 101
    110
    \110
     110
     \0
```
Messaggio da inviare 101010100
## LRC
```
0 0 1 1 0 1 0 1
0 1 0 1 0 1 0 1
0 1 1 0 1 1 0 1 <
1 0 1 1 0 0 0 0 <
0 0 0 1 1 1 0 1
^   ^
```
Devo richiedere la trasmissione a causa di un doppio errore ambiguo
## Codice di hamming
```
1 = 0 0 0 1  
2 = 0 0 1 0  
3 = 0 0 1 1  
4 = 0 1 0 0  
5 = 0 1 0 1  
6 = 0 1 1 0   
7 = 0 1 1 1  
8 = 1 0 0 0  
9 = 1 0 0 1   
10= 1 0 1 0  
11= 1 0 1 1  
12= 1 1 0 0

1 -> 1 3 5 7 9 11

2 -> 2 3 6 7 10 11

4 -> 4 5 6 7 12

8 -> 8 9 10 11 12

```

```
1  2  3  4  5  6  7  8  9  10 11 12

1  0  0  1  0  1  0  0  0  1  1  0

   ^
```
C'è semplicemente un errore sul bit di parità 2.

# Fila B
## CRC
$$M(x)=x^7+x^3+x^2+1=10001101 $$
$$G(x)=x^2+1=101$$
```
1000110100 xor 101 =
101
\\101
  101
  \\\101
     101
     \\\00
```
Messaggio da inviare 1000110100
## LRC
```
0 0 1 1 0 1 0 1 
1 1 0 1 0 1 0 1 < 
0 1 1 0 1 1 0 1 <
0 0 1 1 0 0 0 0  
0 0 0 1 1 1 0 1
^   ^  
```
Devo richiedere la trasmissione a causa di un doppio errore ambiguo
## Codice di hamming
```
1 = 0 0 0 1  
2 = 0 0 1 0  
3 = 0 0 1 1  
4 = 0 1 0 0  
5 = 0 1 0 1  
6 = 0 1 1 0   
7 = 0 1 1 1  
8 = 1 0 0 0  
9 = 1 0 0 1   
10= 1 0 1 0  
11= 1 0 1 1  
12= 1 1 0 0

1 -> 1 3 5 7 9 11

2 -> 2 3 6 7 10 11

4 -> 4 5 6 7 12

8 -> 8 9 10 11 12

```

```
1  2  3  4  5  6  7  8  9  10 11 12

1  0  0  1  0  1  1  0  0  1  0  0

   ^     ^           ^

```
L'errore si trova nel bit 2+4+8= 14, è evidente che si siano sporcati più bit e dunque l'errore non sia rilevabile