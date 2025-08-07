# Fila unica
## Conversione da base 10

$$ 10111011_2 = 2^0+2^1+2^3+2^4+2^5+2^7 = 1+2+8+16+32+128 = 187$$
## Conversione da base 16
$$7EB_{16} = (7 \times 16^2) + (14 \times 16^1) + (11 \times 16^0) = (7 \times 256) + (14 \times 16) + (11 \times 1) = 1792 + 224 + 11 = 2027_{10}$$
## Conversione a base 2
$$
\begin{align*}
147 \div 2 & = 73, \text{ resto } 1 \\
73 \div 2 & = 36, \text{ resto } 1 \\
36 \div 2 & = 18, \text{ resto } 0 \\
18 \div 2 & = 9, \text{ resto } 0 \\
9 \div 2 & = 4, \text{ resto } 1 \\
4 \div 2 & = 2, \text{ resto } 0 \\
2 \div 2 & = 1, \text{ resto } 0 \\
1 \div 2 & = 0, \text{ resto } 1 \\
147_{10} = 10010011_{2}
\end{align*}
$$
## Conversione a base 16
$$
\begin{align*}
759 \div 16 & = 47, \text{ resto } 7 \\
47 \div 16 & = 2, \text{ resto } 15 \\
2 \div 16 & = 0, \text{ resto } 2 \\
759_{10} = 2F7_{16}
\end{align*}
$$
## Aritmetica in binario
```
11011101 +
    1111 =
11101100

11001001 -
    1111 =
10111010
```
## Numeri negativi e reali
### Complemento a 2
$$
\begin{align*}
17 \div 2 & = 8, \text{ resto } 1 \\
8 \div 2 & = 4, \text{ resto } 0 \\
4 \div 2 & = 2, \text{ resto } 0 \\
2 \div 2 & = 1, \text{ resto } 0 \\
1 \div 2 & = 0, \text{ resto } 1 \\
17_{10} = 10001_{2}\
\end{align*}
$$
```
010001
101110 CA1
101111 CA2

 010001 +
 101111 =
1000000
```
### Virgola fissa
$$
\begin{align*}
101110.011_{2} &= (1 \times 2^5) + (0 \times 2^4) + (1 \times 2^3) + (1 \times 2^2) + (1 \times 2^1) + (0 \times 2^0) \\
&\quad + (0 \times 2^{-1}) + (1 \times 2^{-2}) + (1 \times 2^{-3}) \\
&= (32) + (0) + (8) + (4) + (2) + (0) + (0) + (0.25) + (0.125) \\
&= 47.375_{10}
\end{align*}
$$
## Virgola mobile
0 10001011 00000000000000000101010

$$1011 = 2^0+2^1+2^3 = 1+2+8 = 11$$
$$101010=2^1+2^3+2^5=2+8+32=42$$
$$+42\times2^{-11}$$
