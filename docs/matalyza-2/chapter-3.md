---
icon: fontawesome/solid/3
---

# Integrovanie niektorých racionálnych funkcií

Racionálna funkcia je funkcia tvaru

$$
R(x)=\frac{P(x)}{Q(x)},
$$

kde $P(x)$ a $Q(x)$ sú polynómy.

Pri integrovaní racionálnych funkcií sa po algebraických úpravách a prípadnom rozklade na parciálne zlomky stále objavujú tie isté základné tvary. Nad reálnymi číslami sú dôležité najmä dva druhy faktorov v menovateli:

$$
(x-l)^k
$$

a

$$
(x^2+px+q)^k, \qquad D=p^2-4q<0.
$$

Prvý je mocnina lineárneho faktora. Druhý je mocnina kvadratického faktora, ktorý nemá reálne korene.

Práve z týchto dvoch situácií vznikne nasledujúcich osem typov.

## I. typ — mocnina lineárneho faktora

!!! info "Základný tvar typu I"

    $$
    \boxed{\int \frac{A}{(x-l)^k}\,dx}
    $$

    kde

    $$
    A,l\in\mathbb R,\qquad k\in\mathbb N.
    $$

Toto je základný typ pre lineárny faktor.

Musíme rozlišovať dve situácie.

### Prípad $k=1$

Máme

$$
\int\frac{A}{x-l}\,dx.
$$

Použijeme substitúciu

$$
t=x-l.
$$

Potom

$$
dt=dx.
$$

Integrál sa zmení na

$$
A\int\frac1t\,dt.
$$

Použijeme vzorec

$$
\int\frac1t\,dt=\ln|t|+C.
$$

!!! success "Výsledok pri $k=1$"

    Preto

    $$
    \boxed{ \int\frac{A}{x-l}\,dx = A\ln|x-l|+C. }
    $$

Logaritmus sa objaví presne preto, že exponent menovateľa je $1$, čiže po prepísaní mocninou máme $t^{-1}$.

### Prípad $k>1$

Máme

$$
\int\frac{A}{(x-l)^k}\,dx.
$$

Opäť

$$
t=x-l, \qquad dt=dx.
$$

Dostaneme

$$
A\int t^{-k}\,dt.
$$

Použijeme mocninový vzorec

$$
\int t^\alpha\,dt = \frac{t^{\alpha+1}}{\alpha+1}+C.
$$

Tu

$$
\alpha=-k,
$$

takže

$$
\alpha+1=1-k.
$$

Dostaneme

$$
A\frac{t^{1-k}}{1-k}+C.
$$

!!! success "Výsledok pri $k>1$"

    Po návrate:

    $$
    \boxed{ \int\frac{A}{(x-l)^k}\,dx = \frac{A}{1-k}(x-l)^{1-k}+C. }
    $$

    Často je prehľadnejší zápis

    $$
    \boxed{ -\frac{A}{(k-1)(x-l)^{k-1}}+C. }
    $$

Typ I teda máme kompletne vyriešený.

## II. typ — súčet štvorcov

!!! info "Základný tvar typu II"

    $$
    \boxed{ \int\frac1{x^2+a^2}\,dx }
    $$

Toto je základný „arkustangensový“ integrál.

!!! success "Vzorec typu II"

    Výsledkom bude

    $$
    \boxed{ \int\frac1{x^2+a^2}\,dx = \frac1a\arctan\frac xa+C, }
    $$

    pre $a>0$.

Dôležité je pochopiť, prečo.

Poznáme základný vzorec

$$
\int\frac1{1+t^2}\,dt=\arctan t+C.
$$

Preto chceme výraz

$$
x^2+a^2
$$

upraviť tak, aby sa objavilo

$$
1+t^2.
$$

Vytkneme $a^2$:

$$
x^2+a^2 = a^2\left( \frac{x^2}{a^2}+1 \right).
$$

Teda

$$
x^2+a^2 = a^2 \left[ \left(\frac xa\right)^2+1 \right].
$$

Integrál je

$$
\int \frac1{ a^2\left[1+\left(\frac xa\right)^2\right] } \,dx
= \frac1{a^2} \int \frac1{1+\left(\frac xa\right)^2} \,dx.
$$

Položíme

$$
t=\frac xa.
$$

Potom

$$
x=at
$$

a

$$
dx=a\,dt.
$$

Takže

$$
\frac1{a^2} \int \frac{a\,dt}{1+t^2} = \frac1a \int\frac1{1+t^2}\,dt.
$$

A teda

$$
\boxed{ \frac1a\arctan t+C = \frac1a\arctan\frac xa+C. }
$$

Typ II je veľmi dôležitý, pretože naň sa bude odvolávať typ III.

## III. typ — všeobecný kvadratický menovateľ

!!! info "Základný tvar typu III"

    $$
    \boxed{ \int\frac1{x^2+px+q}\,dx, \qquad D=p^2-4q<0 }
    $$

Tu máme všeobecný kvadratický polynóm bez reálnych koreňov.

Cieľom je previesť ho na **typ II**.

Kľúčom je doplnenie na štvorec.

Máme

$$
x^2+px+q.
$$

Vieme, že

$$
\left(x+\frac p2\right)^2 = x^2+px+\frac{p^2}{4}.
$$

Preto

$$
x^2+px+q = x^2+px+\frac{p^2}{4} -\frac{p^2}{4} +q.
$$

Teda

$$
\boxed{ x^2+px+q = \left(x+\frac p2\right)^2 + q-\frac{p^2}{4}. }
$$

Pretože

$$
D=p^2-4q<0,
$$

platí

$$
p^2<4q
$$

a teda

$$
q-\frac{p^2}{4}>0.
$$

Môžeme preto zaviesť

$$
a^2=q-\frac{p^2}{4}.
$$

Potom

$$
a=\sqrt{q-\frac{p^2}{4}}.
$$

Menovateľ má tvar

$$
\left(x+\frac p2\right)^2+a^2.
$$

Položíme

$$
t=x+\frac p2.
$$

Keďže ide iba o posunutie o konštantu,

$$
dt=dx.
$$

Integrál sa zmení na

$$
\int\frac1{t^2+a^2}\,dt.
$$

A toto už je **presne typ II**.

Preto

$$
\int\frac1{t^2+a^2}\,dt=\frac1a\arctan\frac ta+C.
$$

!!! success "Vzorec typu III"

    Po návrate

    $$
    \boxed{ \int\frac1{x^2+px+q}\,dx = \frac1{\sqrt{q-\frac{p^2}{4}}} \arctan \left( \frac{x+\frac p2} {\sqrt{q-\frac{p^2}{4}}} \right) +C. }
    $$

!!! tip "Redukcia typu III na typ II"

    Podstatné teda nie je naučiť sa tento obrovský výsledok naspamäť.

    Podstatné je vedieť:

    $$
    \boxed{\text{III. typ }\longrightarrow\text{ doplnenie na štvorec }\longrightarrow\text{ II. typ}.}
    $$

### Typický príklad

!!! example "Doplnenie na štvorec"

    $$
    \int\frac1{x^2+2x+3}\,dx.
    $$

    Doplníme štvorec:

    $$
    x^2+2x+3=x^2+2x+1+2=(x+1)^2+2.
    $$

    Teda

    $$
    \int\frac1{(x+1)^2+2}\,dx.
    $$

    Položíme

    $$
    t=x+1.
    $$

    Dostaneme

    $$
    \int\frac1{t^2+2}\,dt.
    $$

    Tu

    $$
    a=\sqrt2.
    $$

    Preto podľa typu II

    $$
    \boxed{ \frac1{\sqrt2} \arctan \frac{x+1}{\sqrt2} +C. }
    $$

## IV. typ — lineárny čitateľ

!!! info "Základný tvar typu IV"

    $$
    \boxed{ \int \frac{Mx+N}{x^2+px+q}\,dx, \qquad D<0 }
    $$

Tu máme v čitateli lineárny polynóm.

!!! tip "Vyrob deriváciu menovateľa"

    Najdôležitejšia myšlienka je:

    > v čitateli sa pokúsime vyrobiť deriváciu menovateľa.

Menovateľ je

$$
Q(x)=x^2+px+q.
$$

Jeho derivácia je

$$
Q'(x)=2x+p.
$$

Čitateľ je

$$
Mx+N.
$$

Chceme ho preto prepísať pomocou $2x+p$.

Platí

$$
Mx+N = \frac M2(2x+p) + N-\frac{Mp}{2}.
$$

Naozaj:

$$
\frac M2(2x+p) = Mx+\frac{Mp}{2},
$$

takže

$$
Mx+\frac{Mp}{2} + N-\frac{Mp}{2} = Mx+N.
$$

Integrál teda rozdelíme:

$$
\begin{aligned}
\int \frac{Mx+N}{Q(x)}\,dx
  &=\frac M2 \int \frac{2x+p}{Q(x)}\,dx\\
  &\quad+\left( N-\frac{Mp}{2} \right) \int \frac1{Q(x)}\,dx.
\end{aligned}
$$

Prvý integrál má tvar

$$
\int\frac{Q'(x)}{Q(x)}\,dx.
$$

Preto

$$
\int\frac{Q'(x)}{Q(x)}\,dx = \ln|Q(x)|+C.
$$

Pri našom prípade $D<0$ a vedúcom koeficiente $1$ je pritom

$$
Q(x)>0,
$$

takže môžeme písať aj bez absolútnej hodnoty.

Druhý integrál je **presne typ III**.

Teda

$$
\boxed{ \text{IV. typ} = \text{logaritmická časť} + \text{III. typ}. }
$$

!!! success "Rozklad typu IV"

    Presnejšie

    $$
    \boxed{\begin{aligned}
    \int \frac{Mx+N}{x^2+px+q}\,dx
      ={}& \frac M2\ln(x^2+px+q)\\
         &+\left(N-\frac{Mp}{2}\right)
           \int\frac1{x^2+px+q}\,dx
    \end{aligned}}
    $$

A posledný integrál už nanovo nerátame — použijeme výsledok typu III.

### Príklad

!!! example "Rozklad čitateľa na deriváciu menovateľa"

    $$
    \int \frac{3x+4}{x^2+x+1}\,dx.
    $$

    Derivácia menovateľa je

    $$
    2x+1.
    $$

    Čitateľ upravíme:

    $$
    3x+4 = \frac32(2x+1)+\frac52.
    $$

    Preto

    $$
    \begin{aligned}
    \int \frac{3x+4}{x^2+x+1}\,dx
      &=\frac32 \int \frac{2x+1}{x^2+x+1}\,dx\\
      &\quad+\frac52 \int \frac1{x^2+x+1}\,dx.
    \end{aligned}
    $$

    Prvá časť je

    $$
    \frac32\ln(x^2+x+1).
    $$

    Druhá časť je typ III.

    Pre

    $$
    x^2+x+1 = \left(x+\frac12\right)^2+\frac34
    $$

    dostávame

    $$
    \int\frac1{x^2+x+1}\,dx = \frac2{\sqrt3} \arctan\frac{2x+1}{\sqrt3}.
    $$

    Celý výsledok:

    $$
    \boxed{ \frac32\ln(x^2+x+1) + \frac5{\sqrt3} \arctan\frac{2x+1}{\sqrt3} +C. }
    $$

## V. typ — derivácia výrazu v menovateli

!!! info "Základný tvar typu V"

    Predpokladáme $a>0$ a celé $k\geq1$.

    $$
    \boxed{ \int \frac{x}{(x^2+a^2)^k}\,dx }
    $$

Tento typ je veľmi jednoduchý vďaka substitúcii

$$
t=x^2+a^2.
$$

Derivácia je

$$
dt=2x\,dx.
$$

Teda

$$
x\,dx=\frac12dt.
$$

Dostávame

$$
\frac12\int\frac1{t^k}\,dt.
$$

Znovu máme dva prípady.

### Pre $k=1$

$$
\frac12\int\frac1t\,dt = \frac12\ln|t|+C.
$$

!!! success "Výsledok pri $k=1$"

    Keďže

    $$
    t=x^2+a^2>0,
    $$

    môžeme písať

    $$
    \boxed{ \int\frac{x}{x^2+a^2}\,dx = \frac12\ln(x^2+a^2)+C. }
    $$

### Pre $k>1$

$$
\frac12\int t^{-k}\,dt
= \frac12 \frac{t^{1-k}}{1-k}+C.
$$

!!! success "Výsledok pri $k>1$"

    Teda

    $$
    \boxed{ \int \frac{x}{(x^2+a^2)^k}\,dx = \frac1{2(1-k)} (x^2+a^2)^{1-k}+C. }
    $$

    Alebo ekvivalentne

    $$
    \boxed{ -\frac1{2(k-1)(x^2+a^2)^{k-1}}+C. }
    $$

Tento typ si treba pamätať hlavne preto, že sa bude používať v typoch VI a VIII.

## VI. typ — mocnina súčtu štvorcov

!!! info "Základný tvar typu VI"

    Predpokladáme $a>0$ a celé $k\geq1$.

    $$
    \boxed{ I_k= \int \frac1{(x^2+a^2)^k}\,dx }
    $$

Toto je podstatne zaujímavejší prípad.

Pre

$$
k=1
$$

už nič nové nerátame:

$$
I_1 = \int\frac1{x^2+a^2}\,dx,
$$

čo je **typ II**.

Teda

$$
I_1 = \frac1a\arctan\frac xa+C.
$$

Problém nastane pri

$$
k>1.
$$

!!! warning "Prečo tu nestačí priama substitúcia"

    Tu nemôžeme jednoducho položiť

    $$
    t=x^2+a^2,
    $$

    pretože by sme potrebovali v čitateli faktor $x\,dx$, ktorý tam nemáme.

Preto sa odvodí **rekurentný vzorec**.

Rekurentný znamená, že integrál s exponentom $k$ vyjadríme pomocou integrálu s exponentom $k-1$.

Teda

$$
I_k \longrightarrow I_{k-1}.
$$

A potom

$$
I_{k-1} \longrightarrow I_{k-2}
$$

atď., až skončíme pri

$$
I_1,
$$

ktorý už poznáme ako typ II.

### Odvodenie rekurencie

Máme

$$
I_k = \int\frac1{(x^2+a^2)^k}\,dx.
$$

Použijeme identitu

$$
a^2=x^2+a^2-x^2.
$$

Teda

$$
1= \frac{x^2+a^2-x^2}{a^2}.
$$

Dosadíme:

$$
I_k = \frac1{a^2} \int \frac{x^2+a^2-x^2} {(x^2+a^2)^k} \,dx.
$$

Rozdelíme:

$$
I_k = \frac1{a^2} \int \frac{x^2+a^2} {(x^2+a^2)^k} \,dx - \frac1{a^2} \int \frac{x^2} {(x^2+a^2)^k} \,dx.
$$

V prvom integráli skrátime jednu mocninu:

$$
I_k=\frac1{a^2}I_{k-1}
  -\frac1{a^2}\int\frac{x^2}{(x^2+a^2)^k}\,dx.
$$

Druhý integrál upravíme ako

$$
\int x\cdot \frac{x}{(x^2+a^2)^k} \,dx.
$$

A tu použijeme per partes.

Položíme

$$
u=x, \qquad du=dx.
$$

Druhá časť je

$$
dv= \frac{x}{(x^2+a^2)^k}\,dx.
$$

A tento integrál už **poznáme z typu V**.

Pre $k>1$

$$
v= -\frac1{2(k-1)(x^2+a^2)^{k-1}}.
$$

Použijeme

$$
\int u\,dv = uv-\int v\,du.
$$

!!! success "Rekurentný vzorec typu VI"

    Po dosadení a úprave dostaneme rekurentný vzorec

    $$
    \boxed{ I_k = \frac{x} {2a^2(k-1)(x^2+a^2)^{k-1}} + \frac{2k-3} {2a^2(k-1)} I_{k-1}. }
    $$

Toto je hlavný výsledok typu VI.

### Ako sa rekurencia používa

!!! example "Výpočet $I_2$ pomocou $I_1$"

    Napríklad

    $$
    I_2 = \int \frac1{(x^2+a^2)^2}\,dx.
    $$

    Dosadíme $k=2$:

    $$
    I_2 = \frac{x} {2a^2(x^2+a^2)} + \frac1{2a^2}I_1.
    $$

    Ale

    $$
    I_1= \frac1a\arctan\frac xa.
    $$

    Preto

    $$
    \boxed{ I_2 = \frac{x}{2a^2(x^2+a^2)} + \frac1{2a^3}\arctan\frac xa +C. }
    $$

    Ak by sme potrebovali $I_3$, vyjadríme ho pomocou $I_2$. Nie je potrebné celé odvodenie robiť odznova.

## VII. typ — mocnina kvadratického menovateľa

!!! info "Základný tvar typu VII"

    $$
    \boxed{ \int \frac1{(x^2+px+q)^k}\,dx, \qquad D<0 }
    $$

Tento typ je vlastne všeobecnejšia verzia VI.

Cieľ je premeniť ho na **typ VI**.

Znova doplníme štvorec:

$$
x^2+px+q = \left(x+\frac p2\right)^2 + q-\frac{p^2}{4}.
$$

Položíme

$$
a^2=q-\frac{p^2}{4}
$$

a

$$
t=x+\frac p2.
$$

Potom

$$
dt=dx.
$$

Menovateľ sa zmení na

$$
(t^2+a^2)^k.
$$

Teda

$$
\int \frac1{(x^2+px+q)^k}\,dx = \int \frac1{(t^2+a^2)^k}\,dt.
$$

A pravá strana je **presne typ VI**.

!!! tip "Redukcia typu VII na typ VI"

    Takže:

    $$
    \boxed{ \text{VII. typ} \longrightarrow \text{doplnenie na štvorec} \longrightarrow \text{VI. typ}. }
    $$

    Nič nové sa už neodvodzuje.

## VIII. typ — lineárny čitateľ a mocnina menovateľa

!!! info "Základný tvar typu VIII"

    $$
    \boxed{ \int \frac{Mx+N} {(x^2+px+q)^k} \,dx, \qquad D<0 }
    $$

Toto je najvšeobecnejší z týchto ôsmich typov.

A zároveň je pekný tým, že sa už vlastne **nerieši nič nové**.

Prevedieme ho na typ V a typ VI.

Najprv doplníme štvorec v menovateli:

$$
x^2+px+q = \left(x+\frac p2\right)^2+a^2,
$$

kde

$$
a^2=q-\frac{p^2}{4}.
$$

Položíme

$$
t=x+\frac p2.
$$

Potom

$$
x=t-\frac p2,
$$

a

$$
dx=dt.
$$

Čitateľ

$$
Mx+N
$$

prepíšeme pomocou $t$:

$$
Mx+N
=M\left(t-\frac p2\right)+N
=Mt-\frac{Mp}{2}+N
=Mt+\left(N-\frac{Mp}{2}\right).
$$

Celý integrál preto dostane tvar

$$
\int \frac{ Mt+\left(N-\frac{Mp}{2}\right) } {(t^2+a^2)^k} \,dt.
$$

Rozdelíme ho:

$$
\begin{aligned}
\int\frac{Mt+\left(N-\frac{Mp}{2}\right)}{(t^2+a^2)^k}\,dt
  &=M\int\frac{t}{(t^2+a^2)^k}\,dt\\
  &\quad+\left(N-\frac{Mp}{2}\right)
    \int\frac1{(t^2+a^2)^k}\,dt.
\end{aligned}
$$

A teraz je pointa celej kapitoly:

Prvý integrál

$$
\int \frac{t}{(t^2+a^2)^k}\,dt
$$

je **typ V**.

Druhý integrál

$$
\int \frac1{(t^2+a^2)^k}\,dt
$$

je **typ VI**.

!!! tip "Redukcia typu VIII na typy V a VI"

    Takže typ VIII už nič nové neobsahuje:

    $$
    \boxed{ \text{VIII. typ} = M\cdot\text{V. typ} + \left( N-\frac{Mp}{2} \right)\cdot\text{VI. typ}. }
    $$

    A práve preto tam už výpočet nemusí byť dokončený. Keď sa dostaneme do tohto bodu, matematicky sme problém vyriešili — zvyšok sú už známe predchádzajúce typy.

## Ako spolu všetkých osem typov súvisí

Celá štruktúra je v skutočnosti veľmi logická:

| Typ  | Integrál                                      | Na čo sa redukuje                         |
| ---- | --------------------------------------------- | ----------------------------------------- |
| I    | $\displaystyle \frac{A}{(x-l)^k}$         | priamo mocninový integrál alebo $\ln$ |
| II   | $\displaystyle \frac1{x^2+a^2}$           | priamo $\arctan$                      |
| III  | $\displaystyle \frac1{x^2+px+q}$          | na II                                     |
| IV   | $\displaystyle \frac{Mx+N}{x^2+px+q}$     | logaritmus + III                          |
| V    | $\displaystyle \frac{x}{(x^2+a^2)^k}$     | jednoduchá substitúcia                    |
| VI   | $\displaystyle \frac1{(x^2+a^2)^k}$       | rekurencia, využíva V a končí pri II      |
| VII  | $\displaystyle \frac1{(x^2+px+q)^k}$      | na VI                                     |
| VIII | $\displaystyle \frac{Mx+N}{(x^2+px+q)^k}$ | na V + VI                                 |

!!! tip "Osem typov tvorí hierarchiu"

    A toto je podľa mňa najdôležitejšie pochopiť. Profesor v skutočnosti nevytvoril osem úplne nezávislých vzorcov. Vytvoril **hierarchiu**, kde sa čoraz všeobecnejšie prípady redukujú na tie jednoduchšie.

    Najvyšší, VIII. typ, sa rozbije na V a VI. VI sa rekurenciou znižuje až na II. VII sa mení na VI. IV sa rozbije na logaritmus a III. III sa mení na II.

    Takže pod tým všetkým je v skutočnosti len niekoľko základných mechanizmov: **substitúcia, doplnenie na štvorec, derivácia menovateľa, logaritmus, arctan a rekurencia**. To je omnoho príjemnejšie než predstava „osem brutálnych vzorcov naspamäť“.
