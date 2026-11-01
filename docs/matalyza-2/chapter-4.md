---
icon: fontawesome/solid/4
---

# Doplnenie k racionálnym funkciám

## Kvadratický menovateľ a význam diskriminantu

Pri integráloch obsahujúcich kvadratický polynóm

$$
x^2+px+q
$$

je rozhodujúci jeho diskriminant

$$
D=p^2-4q.
$$

Podľa znamienka diskriminantu sa totiž menovateľ správa tromi úplne odlišnými spôsobmi.

!!! info "$D<0$: doplnenie na štvorec"

    Ak

    $$
    D<0,
    $$

    kvadratický polynóm nemá reálne korene. Nemožno ho teda nad $\mathbb R$ rozložiť na lineárne faktory. Doplníme ho na štvorec

    $$
    x^2+px+q = \left(x+\frac p2\right)^2+ q-\frac{p^2}{4}
    $$

    a dostávame integrál typu

    $$
    \frac1{t^2+a^2},
    $$

    ktorý vedie na $\arctan$.

!!! info "$D>0$: parciálne zlomky"

    Ak

    $$
    D>0,
    $$

    existujú dva rôzne reálne korene $x_1,x_2$, takže

    $$
    x^2+px+q=(x-x_1)(x-x_2).
    $$

    Potom integrál riešime rozkladom na parciálne zlomky

    $$
    \frac1{(x-x_1)(x-x_2)} = \frac A{x-x_1}+\frac B{x-x_2}.
    $$

    Výsledkom budú logaritmy.

!!! info "$D=0$: dvojnásobný koreň"

    Ak

    $$
    D=0,
    $$

    existuje jeden dvojnásobný koreň $x_0$:

    $$
    x^2+px+q=(x-x_0)^2.
    $$

    Potom sme späť pri I. type racionálnych integrálov,

    $$
    \int\frac{A}{(x-x_0)^2}\,dx.
    $$

!!! tip "Diskriminant určuje metódu"

    Takže diskriminant tu nie je iba informácia o koreňoch kvadratickej rovnice. Hovorí nám priamo, **akú integračnú metódu máme použiť**.

## Nerýdza racionálna funkcia

!!! warning "Pred rozkladom vykonaj delenie polynómov"

    Ak máme

    $$
    \frac{P(x)}{Q(x)}
    $$

    a

    $$
    \deg P\geq \deg Q,
    $$

    najskôr musíme vykonať delenie polynómov. Až zvyšnú rýdzu racionálnu časť rozkladáme na parciálne zlomky.

!!! example "Delenie polynómov a parciálne zlomky"

    Uvažujme napríklad

    $$
    \int \frac{x^3+x-1}{x^3+x}\,dx.
    $$

    Čitateľ a menovateľ majú rovnaký stupeň. Preto najskôr vydelíme:

    $$
    x^3+x-1 = (x^3+x)-1.
    $$

    Teda

    $$
    \frac{x^3+x-1}{x^3+x} = 1-\frac1{x^3+x}.
    $$

    Menovateľ zlomku rozložíme:

    $$
    x^3+x=x(x^2+1).
    $$

    Dostávame

    $$
    1-\frac1{x(x^2+1)}.
    $$

    Teraz rozložíme

    $$
    \frac1{x(x^2+1)} = \frac Ax+\frac{Bx+C}{x^2+1}.
    $$

    Po vynásobení spoločným menovateľom:

    $$
    1=A(x^2+1)+x(Bx+C).
    $$

    Roznásobíme:

    $$
    1=(A+B)x^2+Cx+A.
    $$

    Porovnáme s

    $$
    0x^2+0x+1.
    $$

    Preto

    $$
    A+B=0,\qquad C=0,\qquad A=1.
    $$

    Teda

    $$
    A=1,\qquad B=-1,\qquad C=0.
    $$

    Máme

    $$
    \frac1{x(x^2+1)} = \frac1x-\frac{x}{x^2+1}.
    $$

    Pôvodný integrál je teda

    $$
    \int \left( 1-\frac1x+\frac{x}{x^2+1} \right)dx.
    $$

    Integrujeme:

    $$
    \int1\,dx=x,
    $$

    $$
    \int\frac1x\,dx=\ln|x|,
    $$

    a pri poslednom integráli

    $$
    \int\frac{x}{x^2+1}\,dx
    $$

    použijeme

    $$
    t=x^2+1,\qquad dt=2x\,dx.
    $$

    Preto

    $$
    \int\frac{x}{x^2+1}\,dx = \frac12\ln(x^2+1).
    $$

    Výsledok je

    $$
    \boxed{ x-\ln|x| +\frac12\ln(x^2+1)+C. }
    $$

    Toto je pekná ukážka celého postupu:

    $$
    \text{delenie polynómov} \rightarrow \text{parciálne zlomky} \rightarrow \text{známe integračné typy}.
    $$
