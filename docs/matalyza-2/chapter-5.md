---
icon: fontawesome/solid/5
---

# Integrály s odmocninami

Teraz sa racionálne funkcie rozšíria o odmocniny.

!!! info "Racionálna funkcia s odmocninami"

    Všeobecne môžeme mať integrál tvaru

    $$
    \int R\left( x, \sqrt[k_1]{\frac{ax+b}{cx+d}}, \sqrt[k_2]{\frac{ax+b}{cx+d}}, \ldots, \sqrt[k_m]{\frac{ax+b}{cx+d}} \right)dx,
    $$

    kde $R$ označuje **racionálnu funkciu svojich argumentov**.

    To znamená, že výrazy vo vnútri $R$ môžeme medzi sebou sčítavať, odčítavať, násobiť a deliť, ale nevyskytujú sa tam ďalšie operácie ako sínus, logaritmus a podobne.

    Napríklad

    $$
    R(u,v_1,v_2) = \frac{3u+4v_1}{5v_2}
    $$

    je racionálna funkcia premenných $u,v_1,v_2$.

    Po dosadení

    $$
    u=x,
    $$

    $$
    v_1= \sqrt[k_1]{\frac{ax+b}{cx+d}}, \qquad v_2= \sqrt[k_2]{\frac{ax+b}{cx+d}}
    $$

    dostaneme konkrétnu funkciu premennej $x$.

!!! tip "Cieľ substitúcie"

    Cieľom je **odstrániť všetky odmocniny jednou substitúciou**.

## Spoločná substitúcia pre viac odmocnín

Predstavme si, že máme odmocniny stupňov

$$
k_1,k_2,\ldots,k_m.
$$

Zoberieme ich najmenší spoločný násobok

$$
k=\operatorname{nsn}(k_1,k_2,\ldots,k_m).
$$

!!! success "Spoločná substitúcia"

    Potom položíme

    $$
    \boxed{ t^k=\frac{ax+b}{cx+d}. }
    $$

Prečo práve $k$?

Pretože $k$ je deliteľný každým $k_i$. Preto napríklad

$$
\sqrt[k_i]{\frac{ax+b}{cx+d}} = \sqrt[k_i]{t^k} = t^{k/k_i},
$$

pričom

$$
\frac{k}{k_i}\in\mathbb N.
$$

Všetky odmocniny sa teda zmenia na **celočíselné mocniny $t$**.

To je hlavná pointa substitúcie.

!!! warning "Voľba znamienka pri reálnych odmocninách"

    Ak je $k$ párne, volíme $t\geq 0$. Potom platí aj $\sqrt[k_i]{t^k}=t^{k/k_i}$ pre párne stupne odmocnín. Pracujeme na intervaloch, kde sú pôvodné výrazy definované.

### Vyjadrenie $x$ a $dx$

Zo vzťahu

$$
t^k=\frac{ax+b}{cx+d}
$$

vyjadríme $x$.

Vynásobíme:

$$
t^k(cx+d)=ax+b.
$$

Teda

$$
ct^kx+dt^k=ax+b.
$$

Členy s $x$ dáme na jednu stranu:

$$
(ct^k-a)x=b-dt^k.
$$

Preto

$$
\boxed{ x=\frac{b-dt^k}{ct^k-a}. }
$$

Aj $x$ je teda racionálna funkcia premennej $t$.

Po derivovaní dostaneme aj $dx$ ako racionálnu funkciu $t$:

$$
dx= \frac{k(ad-bc)t^{k-1}} {(ct^k-a)^2}\,dt.
$$

Takže po substitúcii sú **odmocniny, $x$ aj $dx$ racionálnymi výrazmi v $t$**.

Celý integrál sa preto zmení na obyčajný racionálny integrál

$$
\int R_1(t)\,dt.
$$

A ten už riešime metódami, ktoré poznáme.

## Príklad s druhou a treťou odmocninou

!!! example "Spoločná substitúcia $t^6=x+1$"

    Uvažujme

    $$
    \int \frac{1} {\sqrt{x+1}-\sqrt[3]{(x+1)^2}} \,dx.
    $$

    Máme druhú a tretiu odmocninu. Najmenší spoločný násobok čísel $2$ a $3$ je

    $$
    6.
    $$

    Preto položíme

    $$
    t^6=x+1.
    $$

    Teda

    $$
    x=t^6-1
    $$

    a

    $$
    dx=6t^5\,dt.
    $$

    Teraz sa pozrime na odmocniny:

    $$
    \sqrt{x+1} = \sqrt{t^6} = t^3,
    $$

    a

    $$
    \sqrt[3]{(x+1)^2} = \sqrt[3]{t^{12}} = t^4.
    $$

    Celý integrál sa zmení na

    $$
    \int \frac{6t^5}{t^3-t^4}\,dt.
    $$

    Vytkneme $t^3$:

    $$
    \int \frac{6t^5}{t^3-t^4}\,dt = 6\int\frac{t^2}{1-t}\,dt.
    $$

    A teraz už nemáme ani jednu odmocninu. Je to obyčajná racionálna funkcia.

    Vykonáme delenie:

    $$
    \frac{t^2}{1-t} = -t-1+\frac1{1-t}.
    $$

    Preto

    $$
    6\int \left( -t-1+\frac1{1-t} \right)dt.
    $$

    Dostávame

    $$
    -3t^2-6t-6\ln|1-t|+C.
    $$

    Nakoniec

    $$
    t=(x+1)^{1/6}.
    $$

    Výsledok je teda

    $$
    \boxed{ -3(x+1)^{1/3} -6(x+1)^{1/6} -6\ln\left|1-(x+1)^{1/6}\right| +C. }
    $$

    Dôležitejší než výsledok je však postup:

    $$
    \boxed{ \text{NSN stupňov odmocnín} \rightarrow t^k=\text{spoločný výraz} \rightarrow \text{racionálna funkcia}. }
    $$

## Odmocnina lineárne lomenej funkcie

!!! example "Substitúcia $t^2=(1+x)/(1-x)$"

    Veľmi typický príklad je výraz

    $$
    \sqrt{\frac{1+x}{1-x}}.
    $$

    Položíme

    $$
    t^2=\frac{1+x}{1-x}.
    $$

    Potrebujeme vyjadriť $x$.

    $$
    t^2(1-x)=1+x.
    $$

    Roznásobíme:

    $$
    t^2-t^2x=1+x.
    $$

    Členy s $x$ presunieme:

    $$
    -t^2x-x=1-t^2.
    $$

    Teda

    $$
    -x(t^2+1)=1-t^2
    $$

    a

    $$
    \boxed{ x=\frac{t^2-1}{t^2+1}. }
    $$

    Derivujeme:

    $$
    dx= \frac{(2t)(t^2+1)-(t^2-1)(2t)} {(t^2+1)^2}\,dt.
    $$

    V čitateli:

    $$
    2t^3+2t-2t^3+2t=4t.
    $$

    Preto

    $$
    \boxed{ dx=\frac{4t}{(1+t^2)^2}\,dt. }
    $$

    A súčasne

    $$
    1-x=\frac{2}{1+t^2},
    $$

    $$
    1+x=\frac{2t^2}{1+t^2}.
    $$

    Takže každý výraz vytvorený z $x$ a

    $$
    \sqrt{\frac{1+x}{1-x}}
    $$

    sa po tejto substitúcii zmení na racionálnu funkciu $t$.

## Odmocniny samotného $x$

Ak integrál obsahuje iba výrazy

$$
x,\quad \sqrt[k_1]{x},\quad \sqrt[k_2]{x},\ldots,
$$

postup je ešte jednoduchší.

!!! success "Substitúcia $x=t^k$"

    Opäť nájdeme

    $$
    k=\operatorname{nsn}(k_1,\ldots,k_m)
    $$

    a položíme

    $$
    \boxed{x=t^k}.
    $$

    Potom

    $$
    dx=kt^{k-1}\,dt
    $$

    a každá odmocnina sa zmení na celočíselnú mocninu:

    $$
    \sqrt[k_i]{x} = t^{k/k_i}.
    $$

### Príklad s odmocninami $x$

!!! example "Druhá a tretia odmocnina z $x$"

    Uvažujme

    $$
    \int \frac{\sqrt{x}} {\sqrt[3]{x}+1}\,dx.
    $$

    Máme druhú a tretiu odmocninu, takže

    $$
    k=\operatorname{nsn}(2,3)=6.
    $$

    Položíme

    $$
    x=t^6.
    $$

    Potom

    $$
    dx=6t^5\,dt,
    $$

    $$
    \sqrt{x}=t^3,
    $$

    $$
    \sqrt[3]{x}=t^2.
    $$

    Integrál je

    $$
    6\int \frac{t^8}{t^2+1}\,dt.
    $$

    Teraz vykonáme delenie polynómov:

    $$
    \frac{t^8}{t^2+1} = t^6-t^4+t^2-1+\frac1{t^2+1}.
    $$

    Preto

    $$
    6\int \left( t^6-t^4+t^2-1+\frac1{t^2+1} \right)dt.
    $$

    Dostávame

    $$
    6\left( \frac{t^7}{7} -\frac{t^5}{5} +\frac{t^3}{3} -t +\arctan t \right)+C.
    $$

    Nakoniec dosadíme $t=x^{1/6}$:

    $$
    \begin{aligned}
    \int\frac{\sqrt{x}}{\sqrt[3]{x}+1}\,dx ={}& \frac67x^{7/6}-\frac65x^{5/6}\\
     &+2\sqrt{x}-6x^{1/6}+6\arctan(x^{1/6})+C.
    \end{aligned}
    $$

    Opäť sme komplikovaný integrál s odmocninami zredukovali na obyčajnú racionálnu funkciu.

## Prehľad substitúcií

| Tvar integrandu | Užitočný krok |
|---|---|
| Odmocniny $\sqrt[k_i]{(ax+b)/(cx+d)}$ | $k=\operatorname{nsn}(k_1,\ldots,k_m)$, potom $t^k=(ax+b)/(cx+d)$ |
| Odmocniny $\sqrt[k_i]{x}$ | $k=\operatorname{nsn}(k_1,\ldots,k_m)$, potom $x=t^k$ |

!!! tip "Spoločná myšlienka"

    Vhodnou substitúciou prevedieme integrál na racionálny integrál alebo iný známy typ.
