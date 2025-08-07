
## Fila A
### Esercizio unico
Codice:
```
$ 1 0.000005 10.20027730826997 50 5 43 5e-11
v 96 336 96 112 0 0 40 220 0 0 0.5
w 160 112 160 32 0
r 160 32 352 32 0 300
r 160 112 160 192 0 500
r 352 112 480 112 0 800
r 160 192 352 192 0 500
r 480 112 384 256 0 900
r 480 112 560 256 0 600
w 384 256 464 336 0
w 560 256 464 336 0
r 464 336 272 288 0 700
r 272 288 96 336 0 300
w 96 112 160 112 0
w 352 32 352 112 0
w 352 192 352 112 0
r 160 112 352 112 0 600
```
![[verifica-A.png]]
#### Resistenze
$$Rs34=500+500= 1000\ohm$$
$$Rp1=\frac{1}{\frac{1}{300}+\frac{1}{600}+\frac{1}{1000}}= 166.7\ohm$$
$$Rp2=\frac{1}{\frac{1}{900}+\frac{1}{600}}= 360\ohm$$
$$\operatorname{\mathrm{Re}}q=Rp1+R5+Rp2+R8+R9=166.7+800+360+700+300= 2'326.7\ohm$$
#### Intensità e cadute di tensione ai capi di ogni resistenza
$$Ieq=Ip1=I5=Ip2=I8=I9=\frac{Ve}{\operatorname{Re}q}=\frac{220}{2326.7}= 0.094A$$
$$Vp1=V1=V2=Vs34=Rp1\cdot Ieq=166.7\cdot0.094= 15.67V$$
$$I1=\frac{V1}{R1}=\frac{15.67}{300}= 0.052A$$
$$I2=\frac{V2}{R2}=\frac{15.67}{600}= 0.026A $$
$$Is34=I3=I4=\frac{Vp1}{Rs34}=\frac{15.67}{1000}= 0.016 $$
$$V3=R3\cdot I3=500\cdot0.016= 8V$$
$$V4=R4\cdot I4=500\cdot0.016= 8V$$
$$V5=R5\cdot I5=800\cdot0.094= 75.2V$$
$$Vp2=V6=V7=Rp2\cdot Ieq=360\cdot0.094= 33.84V$$
$$I6=\frac{V6}{R6}= \frac{33.84}{900}= 0.038A$$
$$I7=\frac{V7}{R7}= \frac{33.84}{600}= 0.056A $$

$$V8=R8\cdot I8=700\cdot0.094= 65.8V$$
$$V9=R9\cdot I9=300\cdot0.094= 28.2V $$
#### Legge di Kirchhoff ai nodi
$$I1+I2+Is34=0.052+0.026+0.016= 0.094A=Ieq$$
$$I6+I7=0.038+0.056= 0.094=Ieq$$
#### Legge di Kirchhoff alle maglie
$$Ve-V1-V5-V7-V8-V9=220-15.67-75.2-33.84-65.8-28.2\approx0$$
$$V2-V1=15.67-15.67= 0V$$
$$V4+V3-V2=8+8-15.67\approx0V$$
$$V6-V7=33.84-33.84= 0V$$
e altre...
## Fila B
### Esercizio unico
Codice:
```
$ 1 0.000005 10.20027730826997 50 5 43 5e-11
v 80 336 80 80 0 0 40 220 0 0 0.5
r 80 80 224 80 0 900
w 224 80 304 16 0
w 224 80 304 144 0
r 304 144 464 80 0 600
r 304 16 464 80 0 400
w 464 80 464 160 0
r 464 160 544 160 0 200
r 464 160 384 160 0 400
r 384 160 384 272 0 200
r 544 272 464 272 0 800
r 384 272 464 272 0 400
w 464 272 464 336 0
r 464 336 80 336 0 800
w 544 160 544 272 0
```
![[verifica-B.png]]
#### Resistenze
$$Rp1=\frac{1}{\frac{1}{400}+\frac{1}{600}}= 240\ohm$$
$$Rs456=400+200+400=1000\ohm$$
$$Rs78=200+800=1000\ohm$$
$$Rp2=\frac{1}{\frac{1}{1000}+\frac{1}{1000}}= 500\ohm$$
$$\operatorname{\mathrm{Re}}q=900+240+500+800= 2'440\ohm$$
#### Intensità e cadute di tensione ai capi delle resistenze
$$Ieq=I1=Ip1=Ip2=I9=\frac{Ve}{Req}=\frac{220}{2440}= 0.09A$$
$$V1=R1\cdot I1=900\cdot0.09= 81V$$
$$Vp1=V2=V3=Rp1\cdot Ip1=240\cdot0.09= 21.6V$$
$$I2=\frac{V2}{R2}=\frac{21.6}{400}= 0.054A$$
$$I3=\frac{V3}{R3}=\frac{21.6}{600}= 0.036A $$
$$Vp2=Rp2\cdot Ip2=500\cdot 0.09= 45V$$
$$Is456=\frac{Vp2}{Rs456}=\frac{45}{1000}=0.045A$$
$$Is78=\frac{Vp2}{Rs78}=\frac{45}{1000}=0.045A$$
$$V4=R4 \cdot I4=400\cdot 0.045= 18V$$
$$V5=R5 \cdot I5=200\cdot 0.045= 9V $$
$$V6=R6 \cdot I6=400\cdot 0.045= 18V$$
$$V7=R7 \cdot I7=200\cdot 0.045= 9V$$
$$V8=R8 \cdot I8=800\cdot 0.045= 36V$$
$$V9=R9 \cdot I9=800\cdot 0.09= 72V $$
#### Legge di Kirchhoff ai nodi
$$Ieq=I2+I3=0.054+0.036= 0.09A$$
$$Ieq= Is456+Is78=0.045+0.045= 0.09A$$
#### Legge di Kirchhoff alle maglie
$$V3-V2=21.6-21.6= 0$$
$$V6+V5+V4-V7-V8=18+9+18-9-36= 0 $$
$$Ve-V1-V2-V7-V8-V9=220-81-21.6-9-36-72\approx 0V$$
$$Ve-V1-V3-V4-V5-V6-V9=220-81-21.6-18-9-18-72\approx0V$$
e altre...