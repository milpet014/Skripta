---
icon: fontawesome/solid/1
---

# Neurčitý integrál

Neurčitý integrál je v podstate **opačná operácia k derivovaniu**. Pri derivácii poznáme funkciu $F(x)$ a zisťujeme jej deriváciu $f(x)$. Pri integrovaní poznáme $f(x)$ a snažíme sa nájsť funkciu $F(x)$, ktorej derivácia je práve $f(x)$.

Schematicky:

$$
F(x)\xrightarrow{\text{derivovanie}}f(x)
$$

a opačným smerom

$$
f(x)\xrightarrow{\text{integrovanie}}F(x)+C.
$$

To $+C$ bude veľmi dôležité.

## Primitívna funkcia

!!! info "Definícia: primitívna funkcia"

    Nech sú funkcie $f(x)$ a $F(x)$ definované na nejakom intervale $I$.

    Funkciu $F(x)$ nazývame **primitívnou funkciou k funkcii $f(x)$ na intervale $I$**, ak pre každé $x\in I$ platí

    $$
    F'(x)=f(x).
    $$

Čiže primitívna funkcia je jednoducho funkcia, ktorá sa po zderivovaní zmení na pôvodnú funkciu $f$.

!!! example "Príklady primitívnych funkcií"

    Napríklad

    $$
    F(x)=x^3.
    $$

    Po derivovaní dostaneme

    $$
    F'(x)=3x^2.
    $$

    Preto $x^3$ je primitívnou funkciou k

    $$
    f(x)=3x^2.
    $$

    Podobne

    $$
    F(x)=\tan x
    $$

    je primitívna funkcia k

    $$
    f(x)=\frac{1}{\cos^2 x},
    $$

    pretože

    $$
    (\tan x)'=\frac{1}{\cos^2x}.
    $$

!!! note "Prečo záleží na intervale"

    Dôležité je, že primitívna funkcia sa vždy chápe **na určitom intervale**. Nie je to iba technická poznámka. Niektoré funkcie totiž nie sú definované na celej reálnej osi alebo majú rôzne správanie na rôznych intervaloch.

## Prečo pridávame integračnú konštantu?

Predstavme si funkciu

$$
f(x)=3x^2.
$$

Jedna primitívna funkcia je

$$
F(x)=x^3.
$$

Ale rovnako dobre funguje

$$
G(x)=x^3+5,
$$

pretože

$$
G'(x)=3x^2+0=3x^2.
$$

Rovnako

$$
x^3-17,
$$

$$
x^3+\pi,
$$

$$
x^3+1000000
$$

majú všetky rovnakú deriváciu:

$$
3x^2.
$$

Dôvod je jednoduchý:

$$
C'=0.
$$

!!! tip "Prečo pridávame +C"

    Derivovanie teda „zabudne“ informáciu o konštante.

    Keď sa snažíme derivovanie obrátiť, už nemáme ako zistiť, aká konštanta tam pôvodne bola.

    Preto integrál nemôže byť iba

    $$
    x^3.
    $$

    Musíme napísať

    $$
    x^3+C, \qquad C\in\mathbb R.
    $$

## Všetky primitívne funkcie sa líšia o konštantu

!!! success "Veta 1: všetky primitívne funkcie"

    Nech $F(x)$ je primitívna funkcia k $f(x)$ na intervale $I$.

    Potom funkcia $G(x)$ je tiež primitívnou funkciou k $f(x)$ práve vtedy, keď existuje konštanta

    $$
    C\in\mathbb R
    $$

    taká, že

    $$
    G(x)=F(x)+C.
    $$

    Inými slovami:

    Ak poznáme jednu primitívnu funkciu, poznáme vlastne všetky. Stačí k nej pripočítať ľubovoľnú konštantu.

**Prečo to platí?**

Ak sú $F$ aj $G$ primitívne funkcie k tej istej funkcii $f$, potom

$$
F'(x)=f(x)
$$

a zároveň

$$
G'(x)=f(x).
$$

Odčítajme ich:

$$
G'(x)-F'(x)=0.
$$

Teda

$$
(G(x)-F(x))'=0.
$$

Funkcia, ktorej derivácia je na celom intervale nulová, musí byť konštantná.

Preto

$$
G(x)-F(x)=C
$$

a teda

$$
G(x)=F(x)+C.
$$

!!! example "Geometrická predstava"

    Geometricky ide o rovnakú krivku posunutú nahor alebo nadol.

    Napríklad

    $$
    x^2,\quad x^2+3,\quad x^2-10
    $$

    majú úplne rovnaký tvar. Iba ležia v rôznych výškach.

    Ich derivácia je vo všetkých prípadoch

    $$
    2x.
    $$

## Existencia primitívnej funkcie

!!! success "Veta 2: existencia primitívnej funkcie"

    Ak je funkcia $f(x)$ **spojitá na otvorenom intervale $I$**, potom na tomto intervale existuje primitívna funkcia.

To je veľmi dôležitá existenčná veta.

Hovorí:

> Ak je funkcia dostatočne „slušná“, konkrétne spojitá, nemusíme sa báť, že hľadáme niečo, čo vôbec neexistuje.

!!! warning "Postačujúca podmienka"

    Pozor však na logiku tejto vety.

    Hovorí:

    $$
    f\text{ spojitá}\quad\Rightarrow\quad f\text{ má primitívnu funkciu}.
    $$

    Nehovorí opačný smer. Spojitosť je **postačujúca podmienka**, nie nevyhnutná podmienka.

## Definícia neurčitého integrálu

!!! info "Definícia: neurčitý integrál"

    Množinu všetkých primitívnych funkcií k funkcii $f(x)$ nazývame **neurčitým integrálom funkcie $f(x)$**.

    Zapisujeme

    $$
    \boxed{\int f(x)\,dx}
    $$

    a ak je $F(x)$ jedna primitívna funkcia k $f(x)$, potom

    $$
    \boxed{\int f(x)\,dx=F(x)+C}
    $$

    kde

    $$
    C\in\mathbb R.
    $$

Toto je presný význam neurčitého integrálu.

!!! tip "Neurčitý integrál je rodina funkcií"

    Veľmi dôležité je uvedomiť si, že

    $$
    \int f(x)\,dx
    $$

    nie je v skutočnosti jedna jediná funkcia.

    Je to **celá rodina funkcií**

    $$
    F(x)+C.
    $$

### Čo znamenajú jednotlivé symboly?

Vo výraze

$$
\int f(x)\,dx
$$

je

$$
\int
$$

integračný znak,

$$
f(x)
$$

je **integrand**, teda funkcia, ktorú integrujeme,

a

$$
dx
$$

hovorí, že integrujeme podľa premennej $x$.

!!! example "Ako čítať integrál"

    Napríklad

    $$
    \int x^2\,dx
    $$

    znamená:

    Nájdime všetky funkcie, ktorých derivácia podľa $x$ je $x^2$.

    Výsledkom je

    $$
    \frac{x^3}{3}+C,
    $$

    pretože

    $$
    \left(\frac{x^3}{3}+C\right)' = x^2.
    $$

## Súvislosť integrálu a derivácie

Ak

$$
F'(x)=f(x),
$$

potom

$$
\int f(x)\,dx=F(x)+C.
$$

A keď výsledok integrálu zderivujeme, dostaneme späť integrand:

$$
\left(F(x)+C\right)'=f(x).
$$

Preto môžeme symbolicky písať

$$
\boxed{\left(\int f(x)\,dx\right)'=f(x)}.
$$

Práve toto je veľmi dobrá kontrola vypočítaného integrálu.

!!! example "Kontrola deriváciou"

    Keď dostaneš napríklad

    $$
    \int 3x^2\,dx=x^3+C,
    $$

    stačí výsledok zderivovať:

    $$
    (x^3+C)'=3x^2.
    $$

    Sedí, takže integrál je správne.

!!! warning "Integrál nie je pôvodný integrand"

    Pozor na zápis

    $$
    \int f(x)\,dx=f(x).
    $$

    Takto to všeobecne **neplatí**. Správne je

    $$
    \int f(x)\,dx=F(x)+C,
    $$

    pričom

    $$
    F'(x)=f(x).
    $$

## Základné integračné vzorce

Tieto vzorce sú v podstate iba obrátené derivačné vzorce.

### Mocninová funkcia

Pre

$$
a\neq -1
$$

platí

$$
\boxed{ \int x^a\,dx = \frac{x^{a+1}}{a+1}+C }
$$

Prečo?

Derivujme pravú stranu:

$$
\left(\frac{x^{a+1}}{a+1}\right)' = \frac{1}{a+1}(a+1)x^a = x^a.
$$

Pri integrovaní mocniny teda:

1. exponent zvýšime o $1$,
2. vydelíme novým exponentom.

!!! example "Integrál mocniny"

    Napríklad

    $$
    \int x^4\,dx = \frac{x^5}{5}+C.
    $$

!!! warning "Výnimka: exponent −1"

    Výnimkou je

    $$
    a=-1,
    $$

    pretože by sme dostali delenie nulou:

    $$
    a+1=0.
    $$

    Preto má funkcia $1/x$ samostatný vzorec.

### Integrál $1/x$

$$
\boxed{ \int \frac1x\,dx = \ln|x|+C }
$$

pretože

$$
(\ln|x|)'=\frac1x.
$$

!!! warning "Prečo je v logaritme absolútna hodnota"

    Absolútna hodnota tam nie je ozdoba.

    Funkcia $1/x$ je definovaná aj pre záporné $x$, zatiaľ čo obyčajné

    $$
    \ln x
    $$

    je v reálnych číslach definované iba pre

    $$
    x>0.
    $$

    Preto potrebujeme

    $$
    \ln|x|.
    $$

### Exponenciálne funkcie

$$
\boxed{ \int e^x\,dx=e^x+C }
$$

pretože $e^x$ je špeciálna funkcia, ktorá sa deriváciou nemení:

$$
(e^x)'=e^x.
$$

Pre všeobecný základ $a$,

$$
a>0,\qquad a\neq1,
$$

platí

$$
\boxed{ \int a^x\,dx=\frac{a^x}{\ln a}+C }
$$

pretože

$$
(a^x)'=a^x\ln a.
$$

Musíme teda vydeliť faktorom $\ln a$.

### Goniometrické integrály

Platí

$$
\boxed{ \int \sin x\,dx=-\cos x+C }
$$

pretože

$$
(-\cos x)'=\sin x.
$$

Ďalej

$$
\boxed{ \int \cos x\,dx=\sin x+C }
$$

pretože

$$
(\sin x)'=\cos x.
$$

Tiež

$$
\boxed{ \int\frac1{\cos^2x}\,dx=\tan x+C }
$$

a

$$
\boxed{ \int\frac1{\sin^2x}\,dx=-\cot x+C. }
$$

### Integrály inverzných goniometrických funkcií

$$
\boxed{ \int\frac1{1+x^2}\,dx = \arctan x+C }
$$

pretože

$$
(\arctan x)'=\frac1{1+x^2}.
$$

A

$$
\boxed{ \int\frac1{\sqrt{1-x^2}}\,dx = \arcsin x+C. }
$$

Rovnaký integrál môžeme zapísať aj ako

$$
-\arccos x+C,
$$

pretože

$$
(\arccos x)'=-\frac1{\sqrt{1-x^2}}.
$$

!!! note "Dve podoby tej istej primitívnej funkcie"

    Tieto dve primitívne funkcie sa skutočne líšia iba konštantou, pretože

    $$
    \arcsin x+\arccos x=\frac\pi2.
    $$

    Takže

    $$
    -\arccos x = \arcsin x-\frac\pi2.
    $$

    Rozdiel je iba konštanta, presne ako tvrdila veta 1.

### Logaritmický integrál

!!! tip "Vzorec pre podiel derivácie a funkcie"

    Ak máme funkciu v tvare

    $$
    \frac{f'(x)}{f(x)},
    $$

    potom

    $$
    \boxed{ \int\frac{f'(x)}{f(x)}\,dx = \ln|f(x)|+C }
    $$

    na intervaloch, kde $f(x)\neq0$.

    Dôvod je reťazové pravidlo:

    $$
    (\ln|f(x)|)' = \frac{f'(x)}{f(x)}.
    $$

!!! example "Integrál 2x/(x² + 1)"

    Napríklad

    $$
    \int\frac{2x}{x^2+1}\,dx.
    $$

    Menovateľ je

    $$
    x^2+1
    $$

    a jeho derivácia je

    $$
    2x,
    $$

    čo máme presne v čitateli.

    Preto okamžite

    $$
    \int\frac{2x}{x^2+1}\,dx = \ln(x^2+1)+C.
    $$

    Tu absolútnu hodnotu ani nepotrebujeme, pretože

    $$
    x^2+1>0
    $$

    pre každé reálne $x$.

## Linearita neurčitého integrálu

!!! success "Linearita"

    Integrál je lineárna operácia.

    Ak majú funkcie

    $$
    f_1(x),f_2(x),\ldots,f_n(x)
    $$

    primitívne funkcie a

    $$
    c_1,c_2,\ldots,c_n\in\mathbb R,
    $$

    potom

    $$
    \boxed{ \int \left( c_1f_1(x)+c_2f_2(x)+\cdots+c_nf_n(x) \right)\,dx }
    $$

    sa môže rozdeliť na

    $$
    \boxed{ c_1\int f_1(x)\,dx + c_2\int f_2(x)\,dx +\cdots+ c_n\int f_n(x)\,dx. }
    $$

    V jednoduchšej podobe:

    $$
    \int(f(x)+g(x))\,dx = \int f(x)\,dx+\int g(x)\,dx
    $$

    a

    $$
    \int c f(x)\,dx = c\int f(x)\,dx.
    $$

To je presne dôvod, prečo môžeme veľký súčet rozbiť na malé ľahké integrály.

!!! warning "Integračná konštanta pri linearite"

    Konštanty z jednotlivých členov sa napokon zlúčia do jedného spoločného $C$. Pri koeficiente $c=0$ je napríklad $\int 0\,dx=C$; zápis $0\int f(x)\,dx$ preto nemožno chápať ako doslovnú rovnosť množín funkcií.

### Prečo linearita funguje?

Nech

$$
F_1'(x)=f_1(x)
$$

a

$$
F_2'(x)=f_2(x).
$$

Potom

$$
(c_1F_1(x)+c_2F_2(x))'
$$

je podľa pravidiel derivovania

$$
c_1F_1'(x)+c_2F_2'(x).
$$

Dosadíme

$$
F_1'=f_1,\qquad F_2'=f_2
$$

a dostaneme

$$
c_1f_1(x)+c_2f_2(x).
$$

Teda

$$
c_1F_1+c_2F_2
$$

je primitívna funkcia k

$$
c_1f_1+c_2f_2.
$$

Celá veta je teda v podstate dôsledkom linearity derivácie.

### Príklad: rozklad integrálu pomocou linearity

!!! example "Integrál súčtu štyroch členov"

    Vezmime integrál

    $$
    \int \left( 5x^4+3+\frac{\sqrt[3]{x}}2+\frac2x \right)\,dx.
    $$

    Prvý krok je prepísať všetko do tvaru, ktorý poznáme:

    $$
    \sqrt[3]{x}=x^{1/3}.
    $$

    Takže

    $$
    \int \left( 5x^4+3+\frac12x^{1/3}+\frac2x \right)\,dx.
    $$

    Použijeme linearitu:

    $$
    5\int x^4\,dx + 3\int1\,dx + \frac12\int x^{1/3}\,dx + 2\int\frac1x\,dx.
    $$

    Teraz už riešime štyri základné integrály.

    Prvý:

    $$
    \int x^4\,dx = \frac{x^5}{5}.
    $$

    Po vynásobení päťkou:

    $$
    5\frac{x^5}{5}=x^5.
    $$

    Druhý:

    $$
    \int1\,dx=x,
    $$

    takže

    $$
    3\int1\,dx=3x.
    $$

    Tretí:

    $$
    \int x^{1/3}\,dx.
    $$

    Exponent zvýšime o jednotku:

    $$
    \frac13+1=\frac43.
    $$

    A vydelíme novým exponentom:

    $$
    \int x^{1/3}\,dx = \frac{x^{4/3}}{4/3}.
    $$

    Delenie zlomkom znamená násobenie prevrátenou hodnotou:

    $$
    \frac{x^{4/3}}{4/3} = \frac34x^{4/3}.
    $$

    Pred integrálom však máme ešte $1/2$:

    $$
    \frac12\cdot\frac34x^{4/3} = \frac38x^{4/3}.
    $$

    Posledný člen:

    $$
    2\int\frac1x\,dx = 2\ln|x|.
    $$

    Výsledok teda je

    $$
    \boxed{ x^5+3x+\frac38x^{4/3}+2\ln|x|+C. }
    $$

    A keby sme si neboli istí, jednoducho výsledok zderivujeme.

## Substitučná metóda

Substitúcia je jedna z najdôležitejších metód integrácie.

Je to v zásade **obrátené reťazové pravidlo derivovania**.

Pri derivovaní zloženej funkcie máme

$$
(F(g(x)))' = F'(g(x))g'(x).
$$

Ak označíme

$$
F'=f,
$$

dostaneme

$$
(F(g(x)))' = f(g(x))g'(x).
$$

A teraz to prečítame opačným smerom:

$$
\boxed{ \int f(g(x))g'(x)\,dx = F(g(x))+C. }
$$

To je základ substitučnej metódy.

### Prvá substitučná veta

!!! success "Prvá substitučná veta"

    Predstavme si integrál

    $$
    \int f(g(x))g'(x)\,dx.
    $$

    Položíme

    $$
    t=g(x).
    $$

    Potom diferenciálne píšeme

    $$
    dt=g'(x)\,dx.
    $$

    Integrál sa zmení na

    $$
    \int f(t)\,dt.
    $$

    Ak je $F$ primitívna funkcia k $f$, potom

    $$
    \int f(t)\,dt=F(t)+C.
    $$

    Nakoniec sa vrátime späť:

    $$
    t=g(x),
    $$

    takže

    $$
    \boxed{ F(g(x))+C. }
    $$

### Čo substitúcia vlastne robí?

Máme komplikovaný výraz obsahujúci nejakú vnútornú funkciu.

Napríklad

$$
(x^3+1)^2.
$$

Tá vnútorná časť

$$
x^3+1
$$

sa opakuje ako jeden celok.

Povieme si:

$$
t=x^3+1.
$$

Tým z nej spravíme novú jednoduchú premennú.

!!! tip "Vnútorná funkcia aj jej derivácia"

    Ale keď meníme $x$ na $t$, musíme zmeniť aj diferenciál $dx$.

    Derivujeme:

    $$
    t=x^3+1
    $$

    $$
    \frac{dt}{dx}=3x^2.
    $$

    Teda

    $$
    dt=3x^2\,dx.
    $$

    A práve preto v integrále veľmi často hľadáme vnútornú funkciu **spolu s jej deriváciou**.

### Príklad: priama substitúcia

!!! example "Substitúcia t = x³ + 1"

    Vezmime

    $$
    \int 3x^2(x^3+1)^2\,dx.
    $$

    Na prvý pohľad to vyzerá nepríjemne. Mohli by sme druhú mocninu roznásobiť, ale substitúcia je oveľa prirodzenejšia.

    Vnútorná funkcia je

    $$
    x^3+1.
    $$

    Položíme

    $$
    t=x^3+1.
    $$

    Zderivujeme:

    $$
    dt=3x^2\,dx.
    $$

    A presne výraz

    $$
    3x^2\,dx
    $$

    sa nachádza v integrále.

    Preto celý integrál

    $$
    \int 3x^2(x^3+1)^2\,dx
    $$

    prejde na

    $$
    \int t^2\,dt.
    $$

    A toto už je základný integrál:

    $$
    \int t^2\,dt = \frac{t^3}{3}+C.
    $$

    Teraz vrátime

    $$
    t=x^3+1.
    $$

    Dostaneme

    $$
    \boxed{ \frac{(x^3+1)^3}{3}+C. }
    $$

    Kontrola deriváciou:

    $$
    \left( \frac{(x^3+1)^3}{3} \right)'.
    $$

    Použijeme reťazové pravidlo:

    $$
    \frac13\cdot3(x^3+1)^2\cdot3x^2.
    $$

    Prvá trojka sa skráti s $1/3$:

    $$
    3x^2(x^3+1)^2.
    $$

    Dostali sme presne pôvodný integrand.

    A toto krásne ukazuje, že **substitúcia pri integráli je naozaj obrátené reťazové pravidlo**.

### Ako spoznať substitúciu

!!! tip "Vnútorná funkcia a jej derivácia"

    Veľmi často má integrál približný tvar

    $$
    f(g(x))\cdot g'(x).
    $$

    Teda:

    - niekde vidíš zložitejší výraz $g(x)$,
    - a niekde vedľa neho je jeho derivácia $g'(x)$, prípadne sa od nej líši iba konštantou.

!!! example "Ako vybrať substitúciu"

    Napríklad

    $$
    \int \frac{2x}{x^2+5}\,dx.
    $$

    Vnútorná funkcia:

    $$
    g(x)=x^2+5.
    $$

    Jej derivácia:

    $$
    g'(x)=2x.
    $$

    Máme ju presne v čitateli.

    Preto

    $$
    t=x^2+5, \qquad dt=2x\,dx
    $$

    a dostávame

    $$
    \int\frac1t\,dt = \ln|t|+C.
    $$

    Po návrate:

    $$
    \boxed{ \ln(x^2+5)+C. }
    $$

### Keď derivácia nesedí presne

!!! example "Doplnenie chýbajúcej konštanty"

    Nemusí tam byť úplne presne.

    Napríklad

    $$
    \int x(3x^2-2)^{-2/3}\,dx.
    $$

    Vnútorná funkcia je

    $$
    t=3x^2-2.
    $$

    Jej derivácia je

    $$
    dt=6x\,dx.
    $$

    V integrále však máme iba

    $$
    x\,dx.
    $$

    Zo vzťahu

    $$
    dt=6x\,dx
    $$

    dostaneme

    $$
    x\,dx=\frac16dt.
    $$

    Takže

    $$
    \int x(3x^2-2)^{-2/3}\,dx = \frac16\int t^{-2/3}\,dt.
    $$

    Teraz použijeme mocninový vzorec:

    $$
    \frac16\cdot \frac{t^{1/3}}{1/3}+C.
    $$

    Keďže

    $$
    \frac1{1/3}=3,
    $$

    dostaneme

    $$
    \frac12t^{1/3}+C.
    $$

    A po návrate

    $$
    \boxed{ \frac12(3x^2-2)^{1/3}+C. }
    $$

### Druhá substitučná veta

!!! success "Druhá substitučná veta"

    Existuje aj opačný spôsob substitúcie.

    Namiesto

    $$
    t=g(x)
    $$

    zavedieme

    $$
    x=\varphi(t).
    $$

    Potom

    $$
    dx=\varphi'(t)\,dt.
    $$

    A teda

    $$
    \boxed{ \int f(x)\,dx = \int f(\varphi(t))\varphi'(t)\,dt. }
    $$

Tento variant je užitočný hlavne vtedy, keď vieme nepríjemný výraz v $x$ zjednodušiť vhodným vyjadrením

$$
x=\varphi(t).
$$

Je to tá istá myšlienka ako prvá substitúcia, len sa na zmenu premennej pozeráme z opačnej strany.

!!! warning "Podmienka spätnej substitúcie"

    Formálne sa pri tejto verzii vyžaduje, aby bola použitá funkcia vhodne invertovateľná, teda aby sme sa vedeli medzi $x$ a $t$ jednoznačne vracať.

### Prečo sa pri substitúcii mení aj $dx$?

!!! warning "Pri substitúcii treba zmeniť aj diferenciál"

    Toto býva častý zdroj zmätku.

    Keď napíšeme

    $$
    t=g(x),
    $$

    nemôžeme potom v integrále iba mechanicky nahradiť všetky $g(x)$ za $t$ a nechať

    $$
    dx.
    $$

    Integrujeme totiž už podľa novej premennej.

    Preto musíme zmeniť aj diferenciál:

    $$
    dt=g'(x)\,dx.
    $$

    Napríklad

    $$
    t=x^3+1
    $$

    znamená

    $$
    dt=3x^2\,dx.
    $$

    Výraz

    $$
    dx
    $$

    teda nie je bezvýznamná ozdoba na konci integrálu. Informuje nás, **podľa akej premennej integrujeme**, a pri substitúcii sa s ním musí pracovať.

## Zhrnutie

Neurčitý integrál nie je úplne nová matematická operácia odtrhnutá od derivácií.

Celá téma stojí na jednej myšlienke:

$$
\boxed{\text{integrovanie = hľadanie funkcie podľa jej derivácie}.}
$$

Ak vieš derivácie dobre, integračné vzorce sú väčšinou iba derivácie čítané odzadu.

Napríklad

$$
(\sin x)'=\cos x
$$

čítame odzadu ako

$$
\int\cos x\,dx=\sin x+C.
$$

Rovnako

$$
(\ln|x|)'=\frac1x
$$

dáva

$$
\int\frac1x\,dx=\ln|x|+C.
$$

A reťazové pravidlo

$$
(F(g(x)))' = F'(g(x))g'(x)
$$

čítané odzadu dáva substitučnú metódu.

!!! tip "Otázka, ktorá pomáha pri integrovaní"

    Práve preto je pri integráloch často užitočnejšie položiť si otázku

    **„Čo by som musel zderivovať, aby som dostal toto?“**

    než snažiť sa naspamäť hľadať nejaký kúzelný integračný vzorec.
