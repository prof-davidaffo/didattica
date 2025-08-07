
> [!warning] Problemi
> L'ultima sottrazione BCD della fila B2 risulta troppo facile
# Index
[[#Fila A-1|Fila A-1]]
	[[#Fila A-1#UTF-8:|UTF-8:]]
	[[#Fila A-1#UTF-16|UTF-16]]
	[[#Fila A-1#BCD|BCD]]
[[#Fila B-1|Fila B-1]]
	[[#Fila B-1#UTF-8:|UTF-8:]]
	[[#Fila B-1#UTF-16|UTF-16]]
	[[#Fila B-1#BCD|BCD]]
[[#Fila A-2|Fila A-2]]
	[[#Fila A-2#UTF-8:|UTF-8:]]
	[[#Fila A-2#UTF-16|UTF-16]]
	[[#Fila A-2#BCD|BCD]]
[[#Fila B-2|Fila B-2]]
	[[#Fila B-2#UTF-8:|UTF-8:]]
	[[#Fila B-2#UTF-16|UTF-16]]
	[[#Fila B-2#BCD|BCD]]
<div style="page-break-after: always;"></div>

# Fila A-1
1. Scrivi la parola “pizza” in codice ASCII a 8 bit.
    
2. Scrivi le codifiche mostrando tutti i passaggi e calcoli UTF-8, UTF-16 (little endian e big endian) e UTF-32 della emoji 🍕 (codice unicode U+0001F355)
    
3. Svolgi i seguenti calcoli nel sistema BCD, poi rappresentali in packed e unpacked BCD:  
    124+753 987+768 497-245 291-246

ascii 8 bit: 01110000 01101001 01111010 01111010 01100001

## UTF-8:
U+0001F355
in binario:
0 0001 1111 0011 0101 0101

1111 0000
1001 1111
1000 1101
1001 0101

F0-9F-8D-95

## UTF-16
U+0001F355
U+0000F355

0000 1111 00 | 11 0101 0101
```
1101 1000 0000 0000 + (0xD800)
0000 0000 0011 1100 =
1101 1000 0011 1100 = D8-3C
```
```
1101 1100 0000 0000 + (0xDC00)
0000 0011 0101 0101 =
1101 1111 0101 0101 = DF-55
```

BE: D8-3C-DF-55

LE: 3C-D8-55-DF

## BCD
```
124 + 753 = 877

0001 0010 0100 +
0111 0101 0011 =

1000 0111 0111
```

```
987 + 768 = 1755

  1001 1000 0111 +
  0111 0110 1000 =
  
1 0000 1110 1111 +
  0110 0110 0110 =
  
1 0111 0101 0101
```
 
```
497-245 = 252

0100 1001 0111 -
0010 0100 0101 =

0010 0101 0010
```

```
291-246 = 45

0010 1001 0001 -
0010 0100 0110 =

0000 0100 1011 -
0000 0000 0110 =

0000 0100 0101
```
<div style="page-break-after: always;"></div>

# Fila B-1
1. Scrivi la parola “boom” in codice ASCII a 8 bit.

2. Scrivi le codifiche mostrando tutti i passaggi e calcoli UTF-8, UTF-16 (little endian e big endian) e UTF-32 della emoji 🤯 (codice unicode U+0001F92F)
    

Svolgi i seguenti calcoli nel sistema BCD, poi rappresentali in packed e unpacked BCD:  
321+896 674+254 809-125 267-238

ascii 8 bit 01100010 01101111 01101111 01101101

## UTF-8:
U+0001F92F
in binario:
0 0001 1111 1001 0010 1111
```
1111 0000
1001 1111
1010 0100
1010 1111
```
F0-9F-A4-AF

## UTF-16
U+0001F92F
U+0000F92F

0000 1111 10|01 0010 1111
```
1101 1000 0000 0000 + (0xD800)
0000 0000 0011 1110 =
1101 1000 0011 1110 = D8-3E
```
```
1101 1100 0000 0000 + (0xDC00)
0000 0001 0010 1111 =
1101 1101 0010 1111 = DD-2F
```

BE: D8-3E-DD-2F

LE: 3E-D8-2F-DD

## BCD
```
321 + 896 = 1217

0011 0010 0001 +
1000 1001 0110 =

1011 1011 0111 +
0110 0110 0000 =

1 0010 0001 0111
```

```
 674 + 254 = 928

0110 0111 0100 +
0010 0101 0100 =

1000 1100 1000 +
0000 0110 0000 =

1001 0010 1000
```
 
```
809-125 = 684

1000 0000 1001 -
0001 0010 0101 =

0110 1110 0100 -
0000 0110 0000 =

0110 1000 0100
```

```
267-238 = 29

0010 0110 0111 -
0010 0011 1000 =

0000 0010 1111 -
0000 0000 0110 =

0000 0010 1001
```
<div style="page-break-after: always;"></div>

# Fila A-2
1. Scrivi la parola “robot” in codice ASCII a 8 bit.
    
2. Scrivi le codifiche mostrando tutti i passaggi e calcoli UTF-8, UTF-16 (little endian e big endian) e UTF-32 della emoji 🤖 (codice unicode U+0001F916)
    

Svolgi i seguenti calcoli nel sistema BCD, poi rappresentali in packed e unpacked BCD:  
225+754 988+869 487-235 294-236

1. 01110010 01101111 01100010 01101111 01110100

## UTF-8:
U+0001F916
in binario:
0 0001 1111 1001 0001 0110
```
---- ----
1111 0000
1001 1111
1010 0100
1001 0110
```
F0-9F-A4-96
## UTF-16
U+0001F916
U+0000F916

0000 1111 10|01 0001 0110
```
1101 1000 0000 0000 + (0xD800)
0000 0000 0011 1110 =
1101 1000 0011 1110 = D8-3E
```
```
1101 1100 0000 0000 + (0xDC00)
0000 0001 0001 0110 =
1101 1101 0001 0110 = DD-16
```

BE: D8-3E-DD-16

LE: 3E-D8-16-DD

## BCD

```
225+754 = 979

0010 0010 0101 +
0111 0101 0100 =

1001 0111 1001
```

```
988+869= 1857

1001 1000 1000 +
1000 0110 1001 =

1 0001 1111 0001 +
0 0110 0110 0110 =

1 1000 0101 0111
```
 
```
487-235 = 252

0100 1000 0111 -
0010 0011 0101 =

0010 0101 0010
```

```
294-236 = 58

0010 1001 0100 -
0010 0011 0110 =

0000 0101 1110 -
0000 0000 0110 =

0000 0101 1000
```
<div style="page-break-after: always;"></div>

# Fila B-2
1. Scrivi la parola “libro” in codice ASCII a 8 bit.
    
2. Scrivi le codifiche mostrando tutti i passaggi e calcoli UTF-8, UTF-16 (little endian e big endian) e UTF-32 della emoji 📖 (codice unicode U+0001F4D6)
3. Svolgi i seguenti calcoli nel sistema BCD, poi rappresentali in packed e unpacked BCD:  
	353+877 694+243 829-126 268-228

1. 01101100 01101001 01100010 01110010 01101111

## UTF-8:
U+0001F4D6
in binario:
0 0001 1111 0100 1101 0110
```
---- ----
1111 0000
1001 1111
1001 0011
1001 0110
```
F0-9F-93-96
## UTF-16
U+0001F4D6
U+0000F4D6

0000 1111 01|00 1101 0110
```
1101 1000 0000 0000 + (0xD800)
0000 0000 0011 1101 =
1101 1000 0011 1101 = D8-3D
```
```
1101 1100 0000 0000 + (0xDC00)
0000 0000 1101 0110 =
1101 1100 1101 0110 = DC-D6
```

BE: D8-3D-DC-D6

LE: 3D-D8-D6-DC

## BCD

```
353+877 = 1230

0011 0101 0011 +
1000 0111 0111 =

1011 1100 1010 +
0110 0110 0110 =

1 0010 0011 0000
```

```
694+243 = 937

0110 1001 0100 +
0010 0100 0011 =

1000 1101 0111 +
0000 0110 0000 =

1001 0011 0111
```
 
```
829-126 = 703

1000 0010 1001 -
0001 0010 0110 =

0111 0000 0011
```

```
268-228 = 40

0010 0110 1000 -
0010 0010 1000 =

0000 0100 0000
```