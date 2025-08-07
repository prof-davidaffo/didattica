## Fila A
### Tabella di verità e circuito
$\overline C+B\cdot(A+B+C)\cdot \overline{AB} \cdot \overline{\overline A+B\cdot C}$

| $A$ | $B$ | $C$ | $A+B+C$ | $AB$ | $\overline{AB}$ | $BC$ | $\overline A$ | $\overline A+BC$ | $\overline{\overline A +BC}$ | $m$ | $\overline C$ | $y$ |
| --- | --- | --- | ------- | ---- | --------------- | ---- | ------------- | ---------------- | ---------------------------- | --- | ------------- | --- |
| 0   | 0   | 0   | 0       | 0    | 1               | 0    | 1             | 1                | 0                            | 0   | 1             | 1   |
| 0   | 0   | 1   | 1       | 0    | 1               | 0    | 1             | 1                | 0                            | 0   | 0             | 0   |
| 0   | 1   | 0   | 1       | 0    | 1               | 0    | 1             | 1                | 0                            | 0   | 1             | 1   |
| 0   | 1   | 1   | 1       | 0    | 1               | 1    | 1             | 1                | 0                            | 0   | 0             | 0   |
| 1   | 0   | 0   | 1       | 0    | 1               | 0    | 0             | 0                | 1                            | 0   | 1             | 1   |
| 1   | 0   | 1   | 1       | 0    | 1               | 0    | 0             | 0                | 1                            | 0   | 0             | 0   |
| 1   | 1   | 0   | 1       | 1    | 0               | 0    | 0             | 0                | 1                            | 0   | 1             | 1   |
| 1   | 1   | 1   | 1       | 1    | 0               | 1    | 0             | 1                | 0                            | 0   | 0             | 0   |
![[circuito_tabella_A.png]]
### Minimizzazioni
#### Esercizio 1
$\overline A \cdot \overline B \cdot \overline C + \overline A B \overline C+ A \overline B \cdot \overline C+ A \overline B C+ AB \overline C+ ABC$
$\overline A \cdot \overline C (\overline B + B) + A \overline C(B + \overline B)+ AC(\overline B + B)$ *distributiva*
$\overline A \cdot \overline C (1) + A \overline C(1)+ AC(1)$ *annullamento*
$\overline A \cdot \overline C + A \overline C+ AC$ *identità*
$\overline C(\overline A + A)+AC$ *distributiva*
$\overline C(1)+AC$ *annullamento*
$\overline C+AC$ *identità*
$\overline C + A$ *II assorbimento*
#### Esercizio 2
$\overline{A \overline B + \overline AC} + B \overline C + \overline A$
$\overline{A \overline B} \cdot \overline{\overline A C}+B\overline C+ \overline A$  *De Morgan*
$(\overline A+\overline{\overline B})\cdot(\overline{\overline A}+\overline C) + B \overline C+\overline A$ *de morgan*
$(\overline A + B)\cdot(A+\overline C)+ B \overline C+\overline A$ *involuzione*
$\overline A A+ \overline A \ \overline C + BA+ B \overline C + B \overline C+\overline A$ *distributiva*
$0+\overline A \ \overline C+BA+B \overline C+\overline A$ *idempotenza e complementi*
$\overline A \ \overline C + BA + B \overline C+\overline A$ *identità*
$\overline A + BA + B \overline C$ *I assorbimento*
$\overline A + B + B \overline C$ *II assorbimento*
$\overline A + B$ *I assorbimento*
### Fake De Morgan
$\overline{A+B} \neq \overline A+ \overline B$

| $A$ | $B$ | $A+B$ | $\overline{A+B}$ | $\overline A$ | $\overline B$ | $\overline A + \overline B$ |
| --- | --- | ----- | ---------------- | ------------- | ------------- | --------------------------- |
| 0   | 0   | 0     | 1                | 1             | 1             | 1                           |
| 0   | 1   | 1     | 0                | 1             | 0             | 1                           |
| 1   | 0   | 1     | 0                | 0             | 1             | 1                           |
| 1   | 1   | 1     | 0                | 0             | 0             | 0                           |

### Da circuito a espressione
[[circuito_verifica_A.png]]
$$\overline{AB\overline C \cdot C +\overline{A+B}}$$
## Fila B
### Tabella di verità e circuito
$B+A\cdot \overline{A+B}\cdot CB\cdot \overline{\overline A+\overline B+ \overline C}$

| $A$ | $B$ | $C$ | $A+B$ | $\overline{A+B}$ | $CB$ | $\overline A$ | $\overline B$ | $\overline C$ | $\overline A+ \overline B + \overline C$ | $\overline{\overline A+ \overline B+ \overline C}$ | $m$ | $y$ |
| --- | --- | --- | ----- | ---------------- | ---- | ------------- | ------------- | ------------- | ---------------------------------------- | -------------------------------------------------- | --- | --- |
| 0   | 0   | 0   | 0     | 1                | 0    | 1             | 1             | 1             | 1                                        | 0                                                  | 0   | 0   |
| 0   | 0   | 1   | 0     | 1                | 0    | 1             | 1             | 0             | 1                                        | 0                                                  | 0   | 0   |
| 0   | 1   | 0   | 1     | 0                | 0    | 1             | 0             | 1             | 1                                        | 0                                                  | 0   | 1   |
| 0   | 1   | 1   | 1     | 0                | 1    | 1             | 0             | 0             | 1                                        | 0                                                  | 0   | 1   |
| 1   | 0   | 0   | 1     | 0                | 0    | 0             | 1             | 1             | 1                                        | 0                                                  | 0   | 0   |
| 1   | 0   | 1   | 1     | 0                | 0    | 0             | 1             | 0             | 1                                        | 0                                                  | 0   | 0   |
| 1   | 1   | 0   | 1     | 0                | 0    | 0             | 0             | 1             | 1                                        | 0                                                  | 0   | 1   |
| 1   | 1   | 1   | 1     | 0                | 1    | 0             | 0             | 0             | 0                                        | 1                                                  | 0   | 1   |
![[circuito_tabella_B.png]]
### Minimizzazioni
#### Esercizio 1
$\overline A B \overline C+A\overline B C+ AB\overline C+A \overline B+ ABC$
$B(\overline A \ \overline C+A \overline C+AC)+\overline B(AC+A)$ *distributiva*
$B(\overline A \ \overline C+A(C+\overline C))+\overline BA$ *distributiva e I assorbimento*
$B(\overline A \ \overline C+A)+\overline B A$ *complementi e identità*
$B\overline A \ \overline C + BA + \overline BA$ *distributiva*
$B \overline A \ \overline C+A(B+\overline B)$ *distributiva*
$B \overline A \ \overline C+A$ *complementi e identità*
$A+B\overline C$ *II assorbimento*
#### Esercizio 2
$\overline{AB \overline C+ \overline B C}+A$
$\overline{AB \overline C} \cdot \overline{\overline B C}+A$ *de morgan*
$(\overline A+\overline B + \overline{\overline C})\cdot( \overline{\overline B}+ \overline C) +A$ *de morgan*
$(\overline A + \overline B + C)\cdot(B+\overline C)+ A$ *involuzione*
$\overline AB+\overline A \ \overline C+\overline B B+ \overline B \ \overline C + CB + C\overline C+A$ *distributiva*
$\overline A B + \overline A \ \overline C+\overline B \ \overline C+CB+A$ *complementi e identità*
$A+B+\overline A \ \overline C+\overline B \ \overline C+CB$ *II assorbimento*
$A+\overline C+B+\overline C+CB$ *II assorbimento*
$A+\overline C+B+CB$ *idempotenza*
$A+\overline C+B$ *I assorbimento*
### Fake De Morgan
$\overline{AB} \neq \overline A \ \overline B$

| $A$ | $B$ | $AB$ | $\overline{AB}$ | $\overline{A}$ | $\overline B$ | $\overline A \ \overline B$ |
| --- | --- | ---- | --------------- | -------------- | ------------- | --------------------------- |
| 0   | 0   | 0    | 1               | 1              | 1             | 1                           |
| 0   | 1   | 0    | 1               | 1              | 0             | 0                           |
| 1   | 0   | 0    | 1               | 0              | 1             | 0                           |
| 1   | 1   | 1    | 0               | 0              | 0             | 0                           |

### Da circuito a espressione
[[circuito_verifica_B.png]]
$$\overline{A+B+C} + \overline{\overline A \ \overline B C} + C$$