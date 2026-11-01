---
icon: fontawesome/solid/2
---

# Zaujímavejšie príklady z neurčitého integrálu

## 1. Substitúcia, pri ktorej nestačí nahradiť iba vnútorný výraz

!!! example "Integrál $x\sqrt[3]{x+5}$"

    Uvažujme

    $$
    \int x\sqrt[3]{x+5}\,dx.
    $$

    Pri substitúcii prirodzene zvolíme

    $$
    t=x+5,\qquad dt=dx.
    $$

    Lenže v integrále stále zostáva samostatné $x$. Preto zo substitúcie vyjadríme aj $x$:

    $$
    x=t-5.
    $$

    Teda

    $$
    \int x\sqrt[3]{x+5}\,dx
      =\int(t-5)t^{1/3}\,dt
      =\int\left(t^{4/3}-5t^{1/3}\right)\,dt.
    $$

    Použijeme mocninový integračný vzorec:

    $$
    \frac{t^{7/3}}{7/3}-5\frac{t^{4/3}}{4/3}+C
      =\frac37t^{7/3}-\frac{15}{4}t^{4/3}+C.
    $$

    Vrátime $t=x+5$:

    $$
    \boxed{\int x\sqrt[3]{x+5}\,dx
      =\frac37(x+5)^{7/3}-\frac{15}{4}(x+5)^{4/3}+C}.
    $$

!!! warning "Pri substitúcii prepíš celý integrál"

    Ak položíme $t=g(x)$, musíme prepísať **všetky výskyty $x$ aj diferenciál $dx$** pomocou $t$ a $dt$. Zápis

    $$
    \int(t-5)t^{1/3}\,dx
    $$

    ešte nie je dokončená substitúcia: mieša premenné $t$ a $x$.

## 2. Dvojitá substitúcia: skrytá derivácia arkustangensu

!!! example "Integrál s $\arctan(2x/3)$"

    Uvažujme

    $$
    \int\frac{\arctan\left(\frac{2x}{3}\right)}{9+4x^2}\,dx.
    $$

    Menovateľ upravíme tak, aby sa objavil výraz $1+t^2$:

    $$
    9+4x^2
      =9\left(1+\frac{4x^2}{9}\right)
      =9\left(1+\left(\frac{2x}{3}\right)^2\right).
    $$

    Preto

    $$
    \int\frac{\arctan\left(\frac{2x}{3}\right)}{9+4x^2}\,dx
      =\frac19\int
        \frac{\arctan\left(\frac{2x}{3}\right)}
             {1+\left(\frac{2x}{3}\right)^2}\,dx.
    $$

    Položíme $t=\frac{2x}{3}$. Potom

    $$
    dt=\frac23\,dx,\qquad dx=\frac32\,dt.
    $$

    Dostaneme

    $$
    \frac19\cdot\frac32
      \int\frac{\arctan t}{1+t^2}\,dt
      =\frac16\int\frac{\arctan t}{1+t^2}\,dt.
    $$

    Teraz využijeme deriváciu

    $$
    (\arctan t)'=\frac1{1+t^2}
    $$

    a položíme $u=\arctan t$. Keďže

    $$
    du=\frac1{1+t^2}\,dt,
    $$

    celý integrál sa zmení na

    $$
    \frac16\int u\,du
      =\frac16\cdot\frac{u^2}{2}+C
      =\frac{u^2}{12}+C.
    $$

    Po návrate $u=\arctan t$ a $t=\frac{2x}{3}$:

    $$
    \boxed{
      \int\frac{\arctan\left(\frac{2x}{3}\right)}{9+4x^2}\,dx
      =\frac1{12}\arctan^2\left(\frac{2x}{3}\right)+C
    }.
    $$

!!! tip "Substitúcie sa môžu vrstviť"

    Prvá substitúcia upraví menovateľ na $1+t^2$. Druhá využije, že $\frac1{1+t^2}$ je deriváciou $\arctan t$.

## 3. Integrál $1/\sin x$: najprv úprava, potom substitúcia

!!! example "Integrál prevrátenej hodnoty sínusu"

    Počítame

    $$
    \int\frac1{\sin x}\,dx.
    $$

    Začneme vzorcom

    $$
    \sin x=2\sin\frac x2\cos\frac x2.
    $$

    Potom

    $$
    \int\frac1{\sin x}\,dx
      =\int\frac1{2\sin\frac x2\cos\frac x2}\,dx.
    $$

    Položíme $t=\frac x2$. Keďže $x=2t$ a $dx=2\,dt$, dvojka sa skráti:

    $$
    \int\frac1{\sin t\cos t}\,dt.
    $$

    Teraz výraz upravíme tak, aby sa objavila derivácia tangensu:

    $$
    \frac1{\sin t\cos t}
      =\frac{1/\cos^2t}{\sin t/\cos t}
      =\frac{(\tan t)'}{\tan t}.
    $$

    Položíme $u=\tan t$. Potom

    $$
    du=\frac1{\cos^2t}\,dt,
    $$

    a integrál sa zmení na

    $$
    \int\frac1u\,du=\ln|u|+C.
    $$

    Vrátime $u=\tan t$ a $t=\frac x2$:

    $$
    \boxed{
      \int\frac1{\sin x}\,dx
        =\ln\left|\tan\frac x2\right|+C
    }.
    $$

!!! tip "Najprv uprav, potom vyber metódu"

    Pri integráloch často treba výraz algebraicky alebo goniometricky upraviť. Až potom sa ukáže vhodná substitúcia.

!!! warning "Interval platnosti"

    Vzorec používame na intervale, ktorý neobsahuje nulu funkcie $\sin x$, teda žiadny násobok $\pi$. Integračná konštanta sa na jednotlivých intervaloch môže líšiť.

## Integrácia per partes

Integrácia per partes vzniká z pravidla pre derivovanie súčinu:

$$
(u(x)v(x))'=u'(x)v(x)+u(x)v'(x).
$$

Členy upravíme a obe strany zintegrujeme:

$$
u(x)v'(x)=(u(x)v(x))'-u'(x)v(x),
$$

$$
\int u(x)v'(x)\,dx
  =\int (u(x)v(x))'\,dx-\int u'(x)v(x)\,dx.
$$

!!! success "Vzorec integrácie per partes"

    $$
    \boxed{
      \int u(x)v'(x)\,dx
        =u(x)v(x)-\int u'(x)v(x)\,dx
    }.
    $$

    V skrátenom zápise:

    $$
    \boxed{\int u\,dv=uv-\int v\,du}.
    $$

### Ako si zvoliť $u$ a $dv$?

Jednu časť integrandu budeme **derivovať** (zvolíme ju ako $u$), druhú **integrovať** (zvolíme ju ako $dv$). Cieľom je, aby bol nový integrál

$$
\int v\,du
$$

jednoduchší než pôvodný.

## 4. Klasický príklad per partes

!!! example "Integrál $x\ln x$"

    Uvažujme $\int x\ln x\,dx$ pre $x>0$.

    Zvolíme

    $$
    u=\ln x,\qquad du=\frac1x\,dx,
    $$

    pretože derivovaním sa logaritmus zjednoduší. Zvyšok zvolíme ako

    $$
    dv=x\,dx,\qquad v=\frac{x^2}{2}.
    $$

    Použijeme vzorec $\int u\,dv=uv-\int v\,du$:

    $$
    \int x\ln x\,dx
      =\ln x\cdot\frac{x^2}{2}
       -\int\frac{x^2}{2}\frac1x\,dx.
    $$

    Po skrátení $x$ dostaneme

    $$
    \frac{x^2}{2}\ln x-\frac12\int x\,dx.
    $$

    Výsledok:

    $$
    \boxed{
      \int x\ln x\,dx
      =\frac{x^2}{2}\ln x-\frac{x^2}{4}+C
    }.
    $$

    Metóda funguje, lebo $\ln x$ sa derivovaním zmení na jednoduchší výraz $1/x$.

### Užitočný trik: aj jedna funkcia môže byť súčinom

!!! example "Integrál $\ln x$"

    Integrál si predstavíme ako súčin:

    $$
    \int\ln x\,dx=\int 1\cdot\ln x\,dx.
    $$

    Zvolíme

    $$
    u=\ln x,\qquad dv=dx,
    $$

    takže

    $$
    du=\frac1x\,dx,\qquad v=x.
    $$

    Potom

    $$
    \int\ln x\,dx
      =x\ln x-\int1\,dx
      =\boxed{x\ln x-x+C},\qquad x>0.
    $$

    Funkciu $\ln x$ teda vieme integrovať per partes aj bez viditeľného druhého činiteľa.

## 5. Kombinácia per partes a substitúcie

!!! example "Integrál $\arctan\sqrt{x}$"

    Počítame

    $$
    \int\arctan\sqrt{x}\,dx.
    $$

    Funkcia $\arctan\sqrt{x}$ sa derivovaním zjednoduší, preto začneme per partes:

    $$
    u=\arctan\sqrt{x},\qquad dv=dx,\qquad v=x.
    $$

    Derivujeme zloženú funkciu. Pre $z=\sqrt{x}$ platí

    $$
    (\arctan z)'=\frac1{1+z^2},
    $$

    a preto pri $x>0$

    $$
    u'=\frac1{1+x}\cdot\frac1{2\sqrt{x}},
    \qquad
    du=\frac{1}{2\sqrt{x}(1+x)}\,dx.
    $$

    Per partes dá

    $$
    \int\arctan\sqrt{x}\,dx
      =x\arctan\sqrt{x}
       -\frac12\int\frac{x}{\sqrt{x}(1+x)}\,dx.
    $$

    Keďže $x/\sqrt{x}=\sqrt{x}$, zostáva

    $$
    x\arctan\sqrt{x}
       -\frac12\int\frac{\sqrt{x}}{1+x}\,dx.
    $$

    Teraz položíme $t=\sqrt{x}$, teda

    $$
    x=t^2,\qquad dx=2t\,dt.
    $$

    Zvyšný člen sa zmení na

    $$
    -\frac12\int\frac{t}{1+t^2}\cdot2t\,dt
      =-\int\frac{t^2}{1+t^2}\,dt.
    $$

    Rozložíme čitateľ: $t^2=(1+t^2)-1$. Tým dostaneme

    $$
    \frac{t^2}{1+t^2}=1-\frac1{1+t^2},
    $$

    takže

    $$
    -\int\left(1-\frac1{1+t^2}\right)\,dt
      =-t+\arctan t.
    $$

    Vrátime $t=\sqrt{x}$ a spojíme s prvým členom:

    $$
    \boxed{
      \int\arctan\sqrt{x}\,dx
       =(x+1)\arctan\sqrt{x}-\sqrt{x}+C
    }.
    $$

!!! tip "Tri myšlienky v jednom príklade"

    Najskôr použijeme per partes, potom substitúciu $t=\sqrt{x}$ a nakoniec algebraický rozklad

    $$
    \frac{t^2}{1+t^2}=1-\frac1{1+t^2}.
    $$

## 6. Integrál s kvadratickým menovateľom

Uvažujme skupinu integrálov

$$
\int\frac{dx}{x^2+px+q}
$$

za predpokladu, že diskriminant $D=p^2-4q$ je záporný. Menovateľ potom nemá reálne korene a môžeme ho upraviť na súčet štvorcov.

### Doplnenie na štvorec

Vychádzame z rovnosti

$$
\left(x+\frac p2\right)^2=x^2+px+\frac{p^2}{4}.
$$

Preto

$$
x^2+px+q
  =\left(x+\frac p2\right)^2+q-\frac{p^2}{4}.
$$

Z podmienky $p^2-4q<0$ vyplýva $q-\frac{p^2}{4}>0$. Môžeme teda položiť

$$
a=\sqrt{q-\frac{p^2}{4}}>0.
$$

Pri substitúcii $t=x+\frac p2$ a $dt=dx$ sa integrál zmení na

$$
\int\frac{dt}{t^2+a^2}.
$$

!!! success "Základný vzorec pre súčet štvorcov"

    $$
    \boxed{
      \int\frac{dt}{t^2+a^2}
        =\frac1a\arctan\frac ta+C
    },\qquad a>0.
    $$

Po dosadení späť dostaneme:

!!! success "Vzorec pre kvadratický menovateľ"

    $$
    \boxed{
      \int\frac{dx}{x^2+px+q}
      =
      \frac1{\sqrt{q-\frac{p^2}{4}}}
      \arctan\left(
        \frac{x+\frac p2}{\sqrt{q-\frac{p^2}{4}}}
      \right)+C
    },\qquad p^2-4q<0.
    $$

!!! tip "Čo si zapamätať"

    Stačí poznať vzorec pre $\frac1{t^2+a^2}$, ktorý vedie na $\arctan$, a vedieť kvadratický výraz doplniť na štvorec.

## Ako vyberať integračnú metódu

!!! tip "Otázky, ktoré si položiť pri integráli"

    1. **Dá sa výraz najprv upraviť?** Skús prepísať mocniny a odmocniny, použiť goniometrickú identitu alebo rozložiť zlomok.
    2. **Vidím vnútornú funkciu a jej deriváciu?** Hľadaj tvar $f(g(x))g'(x)$. Pravdepodobne pomôže substitúcia.
    3. **Je tam súčin rôznych typov funkcií?** Pri $x\ln x$, $xe^x$, $x\sin x$, ale aj pri samotných $\ln x$ či $\arctan x$, skús per partes.
    4. **Je v menovateli kvadratický výraz?** Skús doplniť na štvorec a získať tvar $\frac1{t^2+a^2}$.

Metódy sa môžu kombinovať. Integrál $\int\arctan\sqrt{x}\,dx$ sa začne per partes, pokračuje substitúciou a dokončí algebraickou úpravou. Cieľom je upraviť integrál do tvaru, na ktorý už poznáme vzorec.
