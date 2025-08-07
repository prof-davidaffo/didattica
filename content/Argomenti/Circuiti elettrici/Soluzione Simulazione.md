### Circuito 1
codice:
```
$ 5 0.000005 10.20027730826997 50 5 43 5e-11
v 128 240 128 112 0 0 40 12 0 0 0.5
r 128 112 336 112 0 200
r 336 112 336 240 0 800
r 480 112 480 240 0 800
w 336 112 480 112 0
w 480 240 336 240 0
r 128 240 336 240 0 300
```
![[sim-1.png]]
$$Rp=\displaystyle\frac{1}{\frac{1}{800}+\frac{1}{800}}= 400$$
$$Req=500+400+300= 1200 $$
$$I1=I2=Ieq=\frac{12}{1200}= 0.01A $$
$$V1=500\cdot0.01= 5    $$
$$V2=300\cdot0.01= 3 $$
$$Vp=400\cdot0.01= 4V$$
$$I3=I4=\frac{Vp}{R3}=\frac{4}{800}=0.005A$$
Dimostrazione della validità della prima legge di Kirchhoff
$$Ieq=I3+I4=0.005\cdot2= 0.01A$$
Dimostrazione della seconda legge di Kirchoff
$$V3-V4=4-4=0$$
$$Ve-V1-V3-V2=12-5-4-3= 0$$
$$Ve-V1-V4-V2=12-5-4-3= 0$$
### Circuito 2
Codice:
```
$ 5 0.000005 10.20027730826997 50 5 43 5e-11
v 128 368 128 112 0 0 40 12 0 0 0.5
r 128 112 336 112 0 200
r 336 112 336 240 0 200
r 336 112 480 112 0 800
w 480 240 336 240 0
r 128 368 592 368 0 300
r 336 16 480 16 0 900
w 336 112 336 16 0
w 480 112 480 16 0
w 480 112 592 112 0
w 480 240 480 112 0
w 592 112 592 368 0
```
![[sim-2.png]]
$$Rp=\frac{1}{\frac{1}{900}+\frac{1}{800}+\frac{1}{200}}=\frac{1}{0.007361}= 135.851$$
$$\operatorname{\mathrm{Re}}q=200+135.851+300= 635.851$$
$$Ieq=\frac{12}{635.851}= 0.019A$$
$$V1=200\cdot0.019= 3.8V$$
$$V2=300\cdot0.019= 5.7V $$
$$Vp=V3=V4=V5=135.851\cdot0.019= 2.581V   $$
$$I3=\frac{2.581}{900}= 0.003 $$
$$I4=\frac{2.581}{800}= 0.003 $$
$$I5=\frac{2.581}{200}= 0.013$$
Dimostrazione Kirchhoff ai nodi:
$$I3+I4+I5=0.003+0.003+0.013= 0.019=Ieq$$
Dimostrazione di Kirchhoff alle maglie (non viene esattamente zero a causa degli arrotondamenti):
$$V4-V3=2.581-2.581=0$$
$$V5-V4=2.581-2.581=0$$
$$V5-V3=2.581-2.581=0$$
$$Ve-V1-V3-V2=12-2.581-3.8-5.7= -0.081\approx0$$
### Circuito 3
codice:
```
$ 5 0.000005 10.20027730826997 50 5 43 5e-11
v 128 368 128 112 0 0 40 12 0 0 0.5
r 448 112 128 112 0 1000
r 128 112 448 0 0 400
w 448 0 448 112 0
r 448 112 448 368 0 500
r 448 112 128 368 0 300
r 128 368 448 368 0 100
```
![[sim-3.png]]
$$Rs=500+100= 600$$
$$Rp1=\frac{1}{\frac{1}{400}+\frac{1}{1000}}= 285.7$$
$$Rp2=\frac{1}{\frac{1}{300}+\frac{1}{600}}= 200$$
$$Req=285.7+200= 485.7$$
$$Ieq=\frac{12}{485.7}= 0.0247A$$
$$Vp1=V1=V2=Rp1\cdot Ieq=285.7\cdot 0.0247= 7.057V$$
$$Vp2=V3=Rp2\cdot Ieq=200\cdot 0.0247= 4.94V$$
$$I1=\frac{V1}{R1}=\frac{7.057}{400}= 0.018A$$
$$I2=\frac{V2}{R2}=\frac{7.057}{1000}= 0.007A$$
$$I3=\frac{V3}{R3}=\frac{4.94}{300}= 0.016 $$
$$Is=I4=I5=\frac{Vs}{Rs}=\frac{4.94}{600}= 0.008235A   $$
$$V4=R4\cdot I4=500\cdot 0.008235= 4.117V    $$
$$V5=R5\cdot I5=100\cdot 0.008= 0.8V  $$
Dimostrazione Kirchhoff ai nodi:
$$Ieq=I1+I2=I3+Is=0.018+0.007=0.016+0.008\approx 0.024$$
Dimostrazione Kirchhoff alle maglie
$$V2-V1=7.057-7.057= 0$$
$$Ve-V2-V3=12-7.057-4.94\approx 0$$
$$Ve-V1-V4-V5=12-7.057-4.117-0.8\approx 0  $$
$$Ve-V2-V4-V5=12-7.057-4.117-0.8\approx 0$$
$$V3-V4-V5=4.94-4.117-0.8\approx0$$