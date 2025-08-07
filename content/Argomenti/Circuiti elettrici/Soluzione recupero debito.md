### Esercizio unico
#### Codice
```
$ 1 0.000005 10.20027730826997 50 5 43 5e-11
v 208 336 208 144 0 0 40 220 0 0 0.5
r 304 144 432 144 0 400
r 304 144 304 224 0 100
r 432 144 432 224 0 200
r 560 144 560 336 0 100
r 560 336 352 272 0 200
r 560 336 336 400 0 500
w 208 336 272 336 0
w 272 336 352 272 0
w 272 336 336 400 0
w 304 224 432 224 0
w 208 144 304 144 0
w 432 144 560 144 0
```
#### Circuito
![[circuito_recupero.png]]
#### Resistenza e intensità equivalente
$$R_{s23} = R_2+R_3=100+200=300 \ohm$$
$$R_{p1}=\frac{1}{\frac{1}{R_1}+\frac{1}{R_{s23}}}=\frac{1}{\frac{1}{400}+\frac{1}{300}}= 171 \ohm$$
$$R_{p2}=\frac{1}{\frac{1}{R_5}+\frac{1}{R_6}}=\frac{1}{\frac{1}{500}+\frac{1}{200}}= 143 \ohm$$
$$R_{eq}=R_{p1}+R_4+R_{p2}=171+100+143= 414\ohm$$
$$I_{eq}=I_{p1}=I_4=I_{p2}=\frac{V_{e}}{R_{eq}}=\frac{220}{414}= 0.53A$$
#### Intensità e caduta di tensione ai cavi
$$V_{p1}=V_1=V_{s23}=R_{p1}\cdot I_{p1}=171\cdot0.53= 90.63V$$
$$V_4=R_4\cdot I_4=100\cdot0.53= 53V$$
$$V_{p2}=V_5=V_6=R_{p2}\cdot I_{p2}=143\cdot0.53= 75.79V$$
$$I_1=\frac{V_1}{R_1}=\frac{90.63}{400}= 0.23A$$
$$I_{s23}=I_2=I_3=\frac{V_{s23}}{R_{s23}}=\frac{90.63}{300}= 0.30A$$
$$V_1=R_1\cdot I_1=400\cdot0.23= 92V$$
$$V_2=R_2\cdot I_2=100\cdot0.30= 30V$$
$$V_3=R_3\cdot I_3=200\cdot0.30= 60V $$
$$I_5=\frac{V_5}{R_5}=\frac{75.79}{500}= 0.15A$$
$$I_6=\frac{V_6}{R_6}=\frac{75.79}{200}= 0.38A $$
#### Prima legge di Kirchhoff
$$I_1+I_{s23}=0.23+0.30= 0.53A=I_{eq}$$
$$I_6+I_5=0.38+0.15= 0.53A=I_{eq}$$
#### Seconda legge di Kirchhoff
$$V_2+V_3-V_1=30+60-92\approx0V$$
$$V_5-V_6=75.79-75.79= 0V$$
$$V_e-V_1-V_4-V_5=220-90.63-53-75.79\approx0V$$
