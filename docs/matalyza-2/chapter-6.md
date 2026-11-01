---
icon: fontawesome/solid/6
---

# Integrovanie goniometrických funkcií

Pri integrovaní goniometrických funkcií hľadáme predovšetkým spôsob, ako integrál previesť na jednoduchší tvar. Často sa vhodnou substitúciou zbavíme goniometrických funkcií úplne a dostaneme integrál racionálnej funkcie. Inokedy stačí pomocou goniometrických identít zmeniť súčin alebo mocninu na súčet funkcií, ktoré už vieme integrovať.

Základná otázka preto znie:

!!! tip "Hlavná otázka"

    **Ako upraviť integrand, aby sa v ňom objavila známa funkcia spolu so svojou deriváciou alebo aby sa zmenil na racionálnu funkciu novej premennej?**

Budeme rozlišovať šesť typov I–VI. Toto rozdelenie predstavuje rôzne metódy riešenia, nie šesť navzájom oddelených skupín. Jeden integrál môže patriť k viacerým typom. Vtedy si vyberáme postup, ktorý vedie k jednoduchšiemu výpočtu.

## Základné pojmy a vzťahy

!!! info "Primitívna funkcia a integračná konštanta"

    Zápis

    $$
    \int f(x)\,dx=F(x)+C
    $$

    znamená, že

    $$
    F'(x)=f(x)
    $$

    na uvažovanom intervale. Funkciu $F$ nazývame primitívnou funkciou k funkcii $f$. Konštanta $C$ vyjadruje, že pridaním ľubovoľnej konštanty sa derivácia nezmení.

!!! warning "Definičný obor a integračná konštanta"

    Pri integráloch so zlomkami pracujeme na intervaloch, na ktorých je integrand definovaný. Ak napríklad obsahuje $\frac1{\sin x}$, nesmie byť $\sin x=0$. Na rôznych oddelených intervaloch definičného oboru môžu byť integračné konštanty odlišné.

!!! success "Derivácie v radiánoch"

    Všetky uhly chápeme v radiánoch. Práve vtedy platia derivačné vzorce

    $$
    (\sin x)'=\cos x, \qquad (\cos x)'=-\sin x,
    $$

    $$
    (\tan x)'=\frac1{\cos^2x}=1+\tan^2x,
    $$

    $$
    (\cot x)'=-\frac1{\sin^2x}=-(1+\cot^2x).
    $$

Označenia $\tan x$ a $\cot x$ znamenajú to isté ako $\operatorname{tg}x$ a $\operatorname{cotg}x$.

!!! success "Základná goniometrická identita"

    Najčastejšie budeme používať identitu

    $$
    \sin^2x+\cos^2x=1.
    $$

    Z nej vyplýva

    $$
    \sin^2x=1-\cos^2x, \qquad \cos^2x=1-\sin^2x.
    $$

    Tieto úpravy umožňujú odstrániť párne mocniny jednej goniometrickej funkcie v prospech druhej.

### Prečo funguje substitúcia

Nech $H$ je primitívna funkcia k funkcii $h$, teda $H'=h$. Podľa pravidla o derivovaní zloženej funkcie platí

$$
\frac{d}{dx}H(g(x)) = H'(g(x))g'(x) = h(g(x))g'(x).
$$

!!! success "Substitučné pravidlo"

    Preto

    $$
    \int h(g(x))g'(x)\,dx = H(g(x))+C.
    $$

Substitúcia

$$
t=g(x), \qquad dt=g'(x)\,dx
$$

je praktický zápis tohto pravidla použitého opačným smerom.

!!! warning "Substitúciu treba dokončiť"

    Hľadáme teda vnútornú funkciu $g(x)$ a jej deriváciu $g'(x)$. Po substitúcii musí byť celý integrál vyjadrený pomocou novej premennej. Ak zostane napríklad

    $$
    \int t^2\cos^2x\,dt,
    $$

    substitúcia ešte nie je dokončená: výraz $\cos^2x$ treba tiež prepísať pomocou $t$.

## I. typ – všeobecný integrál racionálnej funkcie sínusu a kosínusu

!!! info "Racionálna funkcia dvoch premenných"

    Uvažujme integrál

    $$
    \boxed{\int R(\sin x,\cos x)\,dx,}
    $$

    kde $R$ je racionálna funkcia dvoch premenných.

    To znamená, že existujú polynómy $P(u,v)$ a $Q(u,v)$, pre ktoré

    $$
    R(u,v)=\frac{P(u,v)}{Q(u,v)},
    $$

    pričom menovateľ nesmie byť nulový.

Po dosadení $u=\sin x$ a $v=\cos x$ dostávame napríklad výrazy

$$
\frac1{3+\cos x-2\sin x}, \qquad \frac{\sin x\cos x}{1+\sin^2x}, \qquad \sin^2x\cos^3x.
$$

Aj polynóm v sínuse a kosínuse patrí medzi racionálne výrazy: môžeme si predstaviť, že má menovateľ $1$.

!!! warning "Rozsah metódy"

    Výraz $\sqrt{1+\sin x}$ však vo všeobecnosti nie je racionálnou funkciou sínusu a kosínusu. Nasledujúca metóda preto automaticky nezaručuje racionalizáciu každého výrazu obsahujúceho goniometrické funkcie.

### Hlavná myšlienka: univerzálna goniometrická substitúcia

!!! success "Univerzálna goniometrická substitúcia"

    Použijeme substitúciu

    $$
    \boxed{t=\tan\frac{x}{2}.}
    $$

    Jej výhodou je, že pomocou $t$ vieme racionálne vyjadriť súčasne $\sin x$, $\cos x$ aj diferenciál $dx$:

    $$
    \boxed{\begin{aligned}
    \sin x&=\frac{2t}{1+t^2},\\
    \cos x&=\frac{1-t^2}{1+t^2},\\
    dx&=\frac{2}{1+t^2}\,dt.
    \end{aligned}}
    $$

Slovo „univerzálna“ znamená, že táto substitúcia prevedie každý integrál uvedeného racionálneho tvaru na integrál racionálnej funkcie premennej $t$. Neznamená to, že bude vždy najkratším riešením.

### Odvodenie vzťahu pre sínus

Zo vzorca pre dvojnásobný uhol máme

$$
\sin x=2\sin\frac{x}{2}\cos\frac{x}{2}.
$$

Keďže

$$
\sin^2\frac{x}{2}+\cos^2\frac{x}{2}=1,
$$

môžeme písať

$$
\sin x = \frac{2\sin\frac{x}{2}\cos\frac{x}{2}} {\sin^2\frac{x}{2}+\cos^2\frac{x}{2}}.
$$

Čitateľa aj menovateľa vydelíme výrazom $\cos^2\frac{x}{2}$. Robíme to tam, kde je tento výraz nenulový:

$$
\sin x = \frac{ 2\frac{\sin\frac{x}{2}}{\cos\frac{x}{2}} }{ \frac{\sin^2\frac{x}{2}}{\cos^2\frac{x}{2}}+1 }.
$$

Podiel sínusu a kosínusu je tangens, takže

$$
\sin x = \frac{2\tan\frac{x}{2}} {1+\tan^2\frac{x}{2}}.
$$

Po dosadení $t=\tan\frac{x}{2}$ dostávame

$$
\boxed{\sin x=\frac{2t}{1+t^2}.}
$$

### Odvodenie vzťahu pre kosínus

Použijeme identitu

$$
\cos x=\cos^2\frac{x}{2}-\sin^2\frac{x}{2}.
$$

Opäť vložíme do menovateľa jednotku v goniometrickom tvare:

$$
\cos x = \frac{ \cos^2\frac{x}{2}-\sin^2\frac{x}{2} }{ \cos^2\frac{x}{2}+\sin^2\frac{x}{2} }.
$$

Po vydelení čitateľa a menovateľa výrazom $\cos^2\frac{x}{2}$ máme

$$
\cos x = \frac{1-\tan^2\frac{x}{2}} {1+\tan^2\frac{x}{2}}.
$$

Teda

$$
\boxed{\cos x=\frac{1-t^2}{1+t^2}.}
$$

### Odvodenie diferenciálu

Derivujeme substitučný vzťah:

$$
t=\tan\frac{x}{2}.
$$

Vnútornou funkciou v tangense je $\frac{x}{2}$, ktorej derivácia je $\frac12$. Preto

$$
\frac{dt}{dx} = \frac12\frac1{\cos^2\frac{x}{2}}.
$$

Použitím identity $1+\tan^2u=\frac1{\cos^2u}$ dostávame

$$
\frac{dt}{dx}=\frac12(1+t^2).
$$

Odtiaľ

$$
dt=\frac{1+t^2}{2}\,dx
$$

a následne

$$
\boxed{dx=\frac2{1+t^2}\,dt.}
$$

### Prečo sa výsledný integrál stane racionálnym

Po dosadení dostaneme

$$
\int R\left( \frac{2t}{1+t^2}, \frac{1-t^2}{1+t^2} \right) \frac2{1+t^2}\,dt.
$$

Všetky výskyty sínusu a kosínusu sme nahradili podielmi polynómov. Aj násobiteľ pochádzajúci z $dx$ je podielom polynómov. Výsledkom je preto racionálna funkcia premennej $t$.

Tým sme goniometrický problém previedli na už známu úlohu: integrovanie racionálnych funkcií.

### Podmienky substitúcie

!!! warning "Intervaly a vetvy inverznej funkcie"

    Funkcia $\tan\frac{x}{2}$ nie je definovaná v bodoch

    $$
    x=(2k+1)\pi, \qquad k\in\mathbb Z.
    $$

    Postup preto priamo používame na intervaloch medzi týmito bodmi a zároveň rešpektujeme definičný obor pôvodného integrandu.

    Pôvodná funkcia pritom môže byť v niektorom z týchto bodov úplne v poriadku. Vtedy ide iba o obmedzenie zvolenej substitúcie. Výsledný vzorec môže vyžadovať nadviazanie pomocou vhodných integračných konštánt.

    Rovnako zápis

    $$
    x=2\arctan t
    $$

    platí priamo iba na príslušnej vetve. Všeobecnejšie máme na vhodnom intervale

    $$
    x=2\arctan t+2k\pi.
    $$

    Na diferenciál nemá pridaná konštanta vplyv.

### Podrobný príklad I. typu

!!! example "Racionalizácia a doplnenie na štvorec"

    Vypočítajme

    $$
    I=\int\frac{dx}{3+\cos x-2\sin x}.
    $$

    V menovateli sú lineárne prítomné sínus aj kosínus. Nevidíme jednoduchý tvar „funkcia krát derivácia vnútornej funkcie“, preto je prirodzená univerzálna substitúcia.

    Dosadíme

    $$
    t=\tan\frac{x}{2}.
    $$

    Dostávame

    $$
    I= \int \frac1{ 3+\frac{1-t^2}{1+t^2} -\frac{4t}{1+t^2} } \frac2{1+t^2}\,dt.
    $$

    Najprv upravíme menovateľ na spoločný menovateľ:

    $$
    3+\frac{1-t^2}{1+t^2} -\frac{4t}{1+t^2} = \frac{3(1+t^2)+1-t^2-4t}{1+t^2}.
    $$

    Roznásobíme:

    $$
    3(1+t^2)+1-t^2-4t = 3+3t^2+1-t^2-4t.
    $$

    Spojíme rovnaké mocniny:

    $$
    3+3t^2+1-t^2-4t = 2t^2-4t+4.
    $$

    Preto

    $$
    I= \int \frac{1+t^2}{2t^2-4t+4} \frac2{1+t^2}\,dt.
    $$

    Faktory $1+t^2$ sa skrátia. Tento výraz je pre reálne $t$ vždy kladný, takže pri krátení nevzniká problém s delením nulou:

    $$
    I=\int\frac2{2t^2-4t+4}\,dt.
    $$

    V menovateli vytkneme dvojku a skrátime:

    $$
    I=\int\frac1{t^2-2t+2}\,dt.
    $$

    Teraz máme racionálny integrál s kvadratickým menovateľom. Diskriminant je

    $$
    D=(-2)^2-4\cdot1\cdot2=-4<0.
    $$

    Kvadratický polynóm nemá reálne korene, a preto sa nad reálnymi číslami nerozkladá na lineárne faktory. Doplníme ho na štvorec:

    $$
    t^2-2t+2 = (t^2-2t+1)+1 = (t-1)^2+1.
    $$

    Teda

    $$
    I=\int\frac{dt}{(t-1)^2+1}.
    $$

    Použijeme jednoduchú substitúciu

    $$
    u=t-1, \qquad du=dt.
    $$

    Potom

    $$
    I=\int\frac{du}{1+u^2}.
    $$

    Keďže

    $$
    (\arctan u)'=\frac1{1+u^2},
    $$

    dostávame

    $$
    I=\arctan u+C.
    $$

    Vrátime obe substitúcie:

    $$
    \boxed{ I=\arctan\left(\tan\frac{x}{2}-1\right)+C. }
    $$

!!! warning "Vetva arctangensu vo výsledku"

    Tento zápis platí na intervaloch, na ktorých použitá substitúcia funguje. Pôvodný integrand je pritom definovaný na celej reálnej osi, pretože

    $$
    3+\cos x-2\sin x\geq 3-\sqrt5>0.
    $$

    Prípadné skoky uvedeného výrazu pri prechode cez body $x=(2k+1)\pi$ sú teda dôsledkom zvolenej vetvy arctangensu, nie nespojitosti integrandu.

### Aké racionálne integrály môžu vzniknúť

!!! info "Význam diskriminantu"

    Pri kvadratickom menovateli $at^2+bt+c$, kde $a\neq0$, rozhoduje diskriminant

    $$
    D=b^2-4ac.
    $$

    - Ak $D>0$, existujú dva rôzne reálne korene. Menovateľ rozložíme na lineárne faktory a môžeme použiť parciálne zlomky.
    - Ak $D=0$, dostaneme násobok štvorca lineárneho výrazu.
    - Ak $D<0$, kvadratický faktor je nad reálnymi číslami nerozložiteľný. Často pomôže doplnenie na štvorec a integrál vedúci na arctangens.

!!! example "Dvojnásobný lineárny faktor"

    Napríklad

    $$
    \int\frac{dx}{1-\sin x} = \int\frac{2\,dt}{1+t^2-2t}.
    $$

    Keďže

    $$
    1+t^2-2t=(t-1)^2,
    $$

    máme

    $$
    \int\frac{dx}{1-\sin x} = 2\int(t-1)^{-2}\,dt = -\frac2{t-1}+C.
    $$

    Po návrate:

    $$
    \boxed{ \int\frac{dx}{1-\sin x} = -\frac2{\tan\frac{x}{2}-1}+C. }
    $$

!!! example "Po úprave zostane lineárny menovateľ"

    V inom príklade sa kvadratické členy môžu úplne vyrušiť:

    $$
    \int\frac{dx}{4\sin x-7\cos x-7} = \int\frac{2\,dt}{8t-7(1-t^2)-7(1+t^2)}.
    $$

    Roznásobením dostaneme

    $$
    8t-7+7t^2-7-7t^2=8t-14.
    $$

    Preto

    $$
    \int\frac{dx}{4\sin x-7\cos x-7} = \int\frac{dt}{4t-7} = \frac14\ln|4t-7|+C.
    $$

    Teda

    $$
    \boxed{ \int\frac{dx}{4\sin x-7\cos x-7} = \frac14\ln\left|4\tan\frac{x}{2}-7\right|+C. }
    $$

### Čo si zapamätať pri type I

!!! tip "Myšlienka I. typu"

    Hlavnou myšlienkou je nahradiť sínus aj kosínus racionálnymi výrazmi. Tri substitučné vzorce je užitočné vedieť naspamäť, ale ich pôvod je v identitách pre dvojnásobný uhol a v derivácii tangensu. Následné krátenie zlomkov a dopĺňanie na štvorec sú už algebraické kroky.

## II. typ – integrál upraviteľný na tvar $f(\sin x)\cos x$

!!! info "Základný tvar typu II"

    Uvažujme integrál

    $$
    \boxed{\int f(\sin x)\cos x\,dx.}
    $$

    V rámci racionálnych goniometrických integrálov bude $f$ racionálna funkcia. Samotný substitučný princíp však funguje aj pre iné vhodné funkcie $f$.

!!! success "Substitúcia sínusu"

    Základom je vzťah

    $$
    (\sin x)'=\cos x.
    $$

    Preto volíme

    $$
    \boxed{t=\sin x,\qquad dt=\cos x\,dx.}
    $$

    Dostávame

    $$
    \int f(\sin x)\cos x\,dx = \int f(t)\,dt.
    $$

Vnútornou funkciou je $\sin x$ a jej deriváciou je $\cos x$. Faktor $\cos x\,dx$ sa preto nahradí celým diferenciálom $dt$.

!!! tip "Nahradíme celý diferenciál"

    Nie je potrebné samostatne vyjadrovať

    $$
    dx=\frac{dt}{\cos x},
    $$

    ak už máme v integráli súčin $\cos x\,dx$. Priame nahradenie tohto súčinu je jednoduchšie a nevyžaduje delenie kosínusom.

### Ako rozpoznať II. typ

!!! tip "Ponecháme jeden kosínus"

    Hľadáme možnosť ponechať jeden faktor $\cos x$ a všetko ostatné vyjadriť pomocou $\sin x$.

    Najtypickejším prípadom je nepárna nezáporná mocnina kosínusu:

    $$
    \cos^{2k+1}x = (\cos^2x)^k\cos x.
    $$

    Použitím identity $\cos^2x=1-\sin^2x$ dostávame

    $$
    \cos^{2k+1}x = (1-\sin^2x)^k\cos x.
    $$

    Takto sme získali presne potrebný tvar.

### Podrobný príklad II. typu

!!! example "Integrál $\sin^2x\cos^3x$ a kontrola deriváciou"

    Vypočítajme

    $$
    I=\int\sin^2x\cos^3x\,dx.
    $$

    Kosínus má nepárny exponent $3$. Rozdelíme preto jeho mocninu na

    $$
    \cos^3x=\cos^2x\cos x.
    $$

    Dostávame

    $$
    I=\int\sin^2x\cos^2x\cos x\,dx.
    $$

    Jeden kosínus ponecháme pre diferenciál. Druhú mocninu kosínusu nahradíme:

    $$
    I=\int\sin^2x(1-\sin^2x)\cos x\,dx.
    $$

    Až teraz vykonáme substitúciu

    $$
    t=\sin x, \qquad dt=\cos x\,dx.
    $$

    Jednotlivé časti sa zmenia takto:

    $$
    \sin^2x\longrightarrow t^2,
    $$

    $$
    1-\sin^2x\longrightarrow1-t^2,
    $$

    $$
    \cos x\,dx\longrightarrow dt.
    $$

    Preto

    $$
    I=\int t^2(1-t^2)\,dt.
    $$

    Roznásobíme:

    $$
    t^2(1-t^2)=t^2-t^4.
    $$

    Teda

    $$
    I=\int(t^2-t^4)\,dt.
    $$

    Použijeme mocninový vzorec:

    $$
    I=\frac{t^3}{3}-\frac{t^5}{5}+C.
    $$

    Po návrate k $x$:

    $$
    \boxed{ \int\sin^2x\cos^3x\,dx = \frac{\sin^3x}{3}-\frac{\sin^5x}{5}+C. }
    $$

    Výsledok môžeme overiť deriváciou:

    $$
    \frac{d}{dx} \left( \frac{\sin^3x}{3}-\frac{\sin^5x}{5} \right) = \sin^2x\cos x-\sin^4x\cos x.
    $$

    Vytkneme spoločný faktor:

    $$
    \sin^2x\cos x-\sin^4x\cos x = \sin^2x\cos x(1-\sin^2x).
    $$

    Keďže $1-\sin^2x=\cos^2x$, dostávame

    $$
    \sin^2x\cos x(1-\sin^2x)=\sin^2x\cos^3x.
    $$

    Deriváciou sme získali pôvodný integrand.

!!! example "Samostatná mocnina $\cos^5x$"

    Rovnakým princípom sa rieši aj samostatná nepárna mocnina kosínusu:

    $$
    \int\cos^5x\,dx = \int(1-\sin^2x)^2\cos x\,dx.
    $$

    Po substitúcii vznikne

    $$
    \int(1-t^2)^2\,dt = \int(1-2t^2+t^4)\,dt,
    $$

    takže

    $$
    \boxed{ \int\cos^5x\,dx = \sin x-\frac23\sin^3x+\frac15\sin^5x+C. }
    $$

### Keď po substitúcii treba deliť polynómy

!!! example "Substitúcia a delenie polynómov"

    Uvažujme

    $$
    J=\int\frac{\cos^3x}{3+\sin x}\,dx.
    $$

    Opäť ponecháme jeden faktor $\cos x$:

    $$
    J= \int \frac{(1-\sin^2x)\cos x}{3+\sin x}\,dx.
    $$

    Po substitúcii $t=\sin x$ dostávame

    $$
    J=\int\frac{1-t^2}{t+3}\,dt.
    $$

    Čitateľ má stupeň $2$, menovateľ stupeň $1$. Ide teda o nerýdzo racionálnu funkciu. Najprv vykonáme delenie polynómov.

    Vedúci člen čitateľa $-t^2$ vydelíme vedúcim členom menovateľa $t$:

    $$
    \frac{-t^2}{t}=-t.
    $$

    Vynásobíme:

    $$
    (-t)(t+3)=-t^2-3t.
    $$

    Odčítame od pôvodného čitateľa:

    $$
    (-t^2+1)-(-t^2-3t)=3t+1.
    $$

    Teraz delíme

    $$
    \frac{3t}{t}=3.
    $$

    Vynásobíme:

    $$
    3(t+3)=3t+9.
    $$

    Odčítame:

    $$
    (3t+1)-(3t+9)=-8.
    $$

    Teda

    $$
    \frac{1-t^2}{t+3} = -t+3-\frac8{t+3}.
    $$

    Integrujeme po členoch:

    $$
    J = -\frac{t^2}{2}+3t-8\ln|t+3|+C.
    $$

    Po návrate:

    $$
    \boxed{ J= -\frac{\sin^2x}{2} +3\sin x -8\ln(3+\sin x)+C. }
    $$

    Absolútnu hodnotu sme mohli vynechať, pretože

    $$
    3+\sin x\geq2>0.
    $$

    Hlavná goniometrická myšlienka bola voľba substitúcie. Delenie polynómov predstavovalo následnú algebraickú úpravu.

### Keď treba vhodný faktor vytvoriť

!!! example "Skrytá substitúcia a parciálne zlomky"

    Typ II nemusí byť na prvý pohľad zrejmý. Napríklad

    $$
    K=\int\frac{dx}{\sin x\cos x}.
    $$

    Pôvodný integrand je definovaný iba tam, kde sú sínus aj kosínus nenulové. Na tomto obore môžeme zlomok rozšíriť kosínusom:

    $$
    \frac1{\sin x\cos x} = \frac{\cos x}{\sin x\cos^2x}.
    $$

    Použijeme $\cos^2x=1-\sin^2x$:

    $$
    K = \int \frac{\cos x}{\sin x(1-\sin^2x)}\,dx.
    $$

    Teraz už máme typ II. Substitúcia $t=\sin x$ dáva

    $$
    K=\int\frac{dt}{t(1-t^2)}.
    $$

    Menovateľ rozložíme:

    $$
    t(1-t^2)=t(1-t)(1+t).
    $$

    Všetky faktory sú lineárne a navzájom rôzne. Preto hľadáme rozklad

    $$
    \frac1{t(1-t)(1+t)} = \frac At+\frac B{1-t}+\frac D{1+t}.
    $$

    Pri lineárnom faktore má čitateľ stupeň menší ako $1$, teda je konštantný. Preto nad jednotlivými menovateľmi píšeme konštanty.

    Po vynásobení spoločným menovateľom dostaneme

    $$
    1=A(1-t)(1+t)+Bt(1+t)+Dt(1-t).
    $$

    Roznásobíme:

    $$
    1=A(1-t^2)+Bt+Bt^2+Dt-Dt^2.
    $$

    Usporiadame podľa mocnín $t$:

    $$
    1=A+(B+D)t+(-A+B-D)t^2.
    $$

    Dva polynómy sa rovnajú pre všetky $t$ práve vtedy, keď sa rovnajú koeficienty pri rovnakých mocninách. Preto

    $$
    A=1,
    $$

    $$
    B+D=0,
    $$

    $$
    -A+B-D=0.
    $$

    Z druhej rovnice máme $D=-B$. Po dosadení do tretej:

    $$
    -1+B+B=0,
    $$

    $$
    2B=1.
    $$

    Teda

    $$
    A=1,\qquad B=\frac12,\qquad D=-\frac12.
    $$

    Dostávame

    $$
    K= \int\frac{dt}{t} + \frac12\int\frac{dt}{1-t} - \frac12\int\frac{dt}{1+t}.
    $$

    Pri prostrednom integráli musíme zohľadniť deriváciu výrazu $1-t$, ktorá je $-1$:

    $$
    \int\frac{dt}{1-t}=-\ln|1-t|+C.
    $$

    Preto

    $$
    K= \ln|t| -\frac12\ln|1-t| -\frac12\ln|1+t| +C.
    $$

    Spojením posledných dvoch logaritmov:

    $$
    K= \ln|t|-\frac12\ln|1-t^2|+C.
    $$

    Po dosadení $t=\sin x$:

    $$
    K= \ln|\sin x|-\frac12\ln(\cos^2x)+C.
    $$

    Keďže

    $$
    \ln(\cos^2x)=2\ln|\cos x|,
    $$

    dostávame

    $$
    \boxed{ \int\frac{dx}{\sin x\cos x} = \ln|\tan x|+C. }
    $$

    Tento príklad ukazuje, že vhodná substitúcia môže byť skrytá za jednoduchou úpravou zlomku.

## III. typ – integrál upraviteľný na tvar $f(\cos x)\sin x$

!!! info "Základný tvar typu III"

    Uvažujme integrál

    $$
    \boxed{\int f(\cos x)\sin x\,dx.}
    $$

Tentoraz využívame

$$
(\cos x)'=-\sin x.
$$

!!! success "Substitúcia kosínusu"

    Volíme preto

    $$
    \boxed{t=\cos x,\qquad dt=-\sin x\,dx.}
    $$

    Z toho vyplýva

    $$
    \sin x\,dx=-dt.
    $$

    Teda

    $$
    \boxed{ \int f(\cos x)\sin x\,dx = -\int f(t)\,dt. }
    $$

!!! warning "Znamienko diferenciálu"

    Záporné znamienko je podstatnou súčasťou substitúcie. Pochádza z derivácie kosínusu.

### Ako rozpoznať III. typ

!!! tip "Ponecháme jeden sínus"

    Hľadáme možnosť ponechať jeden faktor $\sin x$ a zvyšok vyjadriť pomocou $\cos x$.

    Ak je mocnina sínusu nepárna, píšeme

    $$
    \sin^{2k+1}x = (\sin^2x)^k\sin x.
    $$

    Pomocou identity $\sin^2x=1-\cos^2x$ dostaneme

    $$
    \sin^{2k+1}x = (1-\cos^2x)^k\sin x.
    $$

    Tým sa integrand dostane do požadovaného tvaru.

!!! example "Samostatná mocnina $\sin^3x$"

    Napríklad

    $$
    \int\sin^3x\,dx = \int(1-\cos^2x)\sin x\,dx.
    $$

    Po substitúcii $t=\cos x$:

    $$
    -\int(1-t^2)\,dt = -t+\frac{t^3}{3}+C.
    $$

    Preto

    $$
    \boxed{ \int\sin^3x\,dx = -\cos x+\frac{\cos^3x}{3}+C. }
    $$

### Podrobný príklad III. typu s dvojnásobným uhlom

!!! example "Dvojnásobný uhol a logaritmus"

    Vypočítajme

    $$
    I= \int \frac{\sin(2x)}{\sin^2x+2\cos^2x}\,dx.
    $$

    Najprv prepíšeme sínus dvojnásobného uhla:

    $$
    \sin(2x)=2\sin x\cos x.
    $$

    Dostávame

    $$
    I= 2\int \frac{\cos x\sin x}{\sin^2x+2\cos^2x}\,dx.
    $$

    Aby sme mohli použiť $t=\cos x$, prepíšeme menovateľ iba pomocou kosínusu:

    $$
    \sin^2x+2\cos^2x = 1-\cos^2x+2\cos^2x.
    $$

    Teda

    $$
    \sin^2x+2\cos^2x=1+\cos^2x.
    $$

    Integrál má tvar

    $$
    I= 2\int \frac{\cos x}{1+\cos^2x}\sin x\,dx.
    $$

    Teraz je vnútornou funkciou kosínus a faktor $\sin x\,dx$ sa zmení na $-dt$:

    $$
    t=\cos x, \qquad dt=-\sin x\,dx.
    $$

    Preto

    $$
    I=-2\int\frac{t}{1+t^2}\,dt.
    $$

    V čitateli je až na konštantu derivácia menovateľa:

    $$
    (1+t^2)'=2t.
    $$

    Zapíšeme teda

    $$
    I=-\int\frac{2t}{1+t^2}\,dt.
    $$

    Zo vzorca

    $$
    \frac{d}{dt}\ln|g(t)|=\frac{g'(t)}{g(t)}
    $$

    vyplýva

    $$
    I=-\ln(1+t^2)+C.
    $$

    Absolútnu hodnotu netreba, pretože $1+t^2>0$. Po návrate:

    $$
    \boxed{ I=-\ln(1+\cos^2x)+C. }
    $$

    Aj pôvodný menovateľ je vždy kladný, takže výsledok platí na celej reálnej osi.

### Ďalší dôležitý prípad: integrál $\frac1{\sin x}$

!!! example "Integrál $1/\sin x$"

    Uvažujme

    $$
    J=\int\frac{dx}{\sin x}.
    $$

    Na definičnom obore máme $\sin x\neq0$, takže môžeme zlomok rozšíriť sínusom:

    $$
    \frac1{\sin x} = \frac{\sin x}{\sin^2x}.
    $$

    Použijeme identitu

    $$
    \sin^2x=1-\cos^2x.
    $$

    Teda

    $$
    J=\int\frac{\sin x}{1-\cos^2x}\,dx.
    $$

    Po substitúcii $t=\cos x$ dostávame

    $$
    J=-\int\frac{dt}{1-t^2} = \int\frac{dt}{t^2-1}.
    $$

    Menovateľ sa rozkladá na

    $$
    t^2-1=(t-1)(t+1).
    $$

    Hľadáme

    $$
    \frac1{(t-1)(t+1)} = \frac A{t-1}+\frac B{t+1}.
    $$

    Po odstránení menovateľov:

    $$
    1=A(t+1)+B(t-1).
    $$

    Po roznásobení:

    $$
    1=(A+B)t+(A-B).
    $$

    Porovnaním koeficientov dostávame

    $$
    A+B=0, \qquad A-B=1.
    $$

    Preto

    $$
    A=\frac12, \qquad B=-\frac12.
    $$

    Integrujeme:

    $$
    J= \frac12\ln|t-1| -\frac12\ln|t+1| +C.
    $$

    Po návrate:

    $$
    J= \frac12 \ln\left| \frac{\cos x-1}{\cos x+1} \right| +C.
    $$

    Pomocou identity

    $$
    \frac{1-\cos x}{1+\cos x} = \tan^2\frac{x}{2}
    $$

    dostaneme známy tvar

    $$
    \boxed{ \int\frac{dx}{\sin x} = \ln\left|\tan\frac{x}{2}\right|+C. }
    $$

    Výsledok platí na intervaloch, ktoré neobsahujú nuly sínusu.

### Vzťah medzi typmi II a III

!!! tip "Rovnaký princíp, rozdielne znamienko"

    Oba typy používajú rovnakú myšlienku: ponechať jeden faktor pre diferenciál a ostatné výskyty previesť na zvolenú vnútornú funkciu.

    Rozdiel je v derivácii:

    $$
    d(\sin x)=\cos x\,dx,
    $$

    $$
    d(\cos x)=-\sin x\,dx.
    $$

    Pri kosínusovej substitúcii preto vzniká navyše mínus.

## IV. typ – súčin párnych mocnín sínusu a kosínusu

!!! info "Nezáporné párne exponenty"

    Uvažujme

    $$
    \boxed{\int\sin^m x\cos^n x\,dx,}
    $$

    kde $m,n$ sú nezáporné párne celé čísla. Nulu považujeme za párne číslo, takže sem patria aj integrály $\sin^4x$ alebo $\cos^2x$.

Pri nepárnej mocnine sme mohli odložiť jeden sínus alebo kosínus a zvyšok prepísať pomocou identity $\sin^2x+\cos^2x=1$. Ak sú obe mocniny párne, tento postup by po odložení jedného faktora zanechal nepárnu mocninu druhej časti, ktorú by sme museli vyjadrovať pomocou odmocniny.

!!! tip "Znižovanie exponentov"

    Preto používame inú myšlienku: **znižovanie exponentov pomocou dvojnásobného uhla**.

### Odvodenie základných vzorcov

Zo vzorca

$$
\cos(2x)=1-2\sin^2x
$$

vyjadríme

$$
2\sin^2x=1-\cos(2x).
$$

Teda

!!! success "Zníženie exponentu sínusu"

    $$
    \boxed{\sin^2x=\frac{1-\cos(2x)}{2}.}
    $$

Podobne zo vzorca

$$
\cos(2x)=2\cos^2x-1
$$

dostávame

!!! success "Zníženie exponentu kosínusu"

    $$
    \boxed{\cos^2x=\frac{1+\cos(2x)}{2}.}
    $$

Tieto identity znižujú druhú mocninu na prvú mocninu funkcie s dvojnásobným uhlom. Ak sa objavia ďalšie párne mocniny, postup opakujeme.

Zväčšenie uhla z $x$ na $2x$ alebo $4x$ nie je zásadný problém. Lineárna vnútorná funkcia sa pri integrovaní prejaví iba konštantným faktorom.

### Podrobný príklad IV. typu

!!! example "Integrál $\sin^2x\cos^2x$"

    Vypočítajme

    $$
    I=\int\sin^2x\cos^2x\,dx.
    $$

    Obe mocniny sú párne. Použijeme oba vzorce:

    $$
    I= \int \frac{1-\cos(2x)}{2} \frac{1+\cos(2x)}{2}\,dx.
    $$

    V menovateli dostaneme $4$:

    $$
    I= \frac14\int (1-\cos(2x))(1+\cos(2x))\,dx.
    $$

    Použijeme algebraickú identitu

    $$
    (a-b)(a+b)=a^2-b^2.
    $$

    Preto

    $$
    I=\frac14\int(1-\cos^2(2x))\,dx.
    $$

    Zostala druhá mocnina kosínusu. Vzorec na zníženie exponentu použijeme znova, teraz pre uhol $2x$:

    $$
    \cos^2(2x)=\frac{1+\cos(4x)}{2}.
    $$

    Dosadíme:

    $$
    I= \frac14\int \left(1-\frac{1+\cos(4x)}{2}\right)\,dx.
    $$

    Zjednotíme menovateľa vo vnútri zátvorky:

    $$
    1-\frac{1+\cos(4x)}{2} = \frac{2-1-\cos(4x)}{2} = \frac{1-\cos(4x)}{2}.
    $$

    Teda

    $$
    I=\frac18\int(1-\cos(4x))\,dx.
    $$

    Rozdelíme integrál:

    $$
    I= \frac18\int1\,dx - \frac18\int\cos(4x)\,dx.
    $$

    Pri druhom integráli je vnútornou funkciou $4x$, ktorej derivácia je $4$. Preto

    $$
    \int\cos(4x)\,dx=\frac14\sin(4x).
    $$

    Dostávame

    $$
    \boxed{ \int\sin^2x\cos^2x\,dx = \frac{x}{8}-\frac{\sin(4x)}{32}+C. }
    $$

!!! warning "Znamienko pred kosínusom"

    Záporné znamienko pri poslednom člene vyplýva z výrazu $1-\cos(4x)$. Pri roznášaní mínusu pred zátvorkou sa nesmie zmeniť na plus.

### Samostatná párna mocnina: $\sin^4x$

!!! example "Integrál $\sin^4x$"

    Máme

    $$
    \sin^4x=(\sin^2x)^2.
    $$

    Po použití vzorca:

    $$
    \sin^4x = \left(\frac{1-\cos(2x)}{2}\right)^2.
    $$

    Pri umocnení dvojčlena musíme zachovať prostredný člen:

    $$
    (1-\cos(2x))^2 = 1-2\cos(2x)+\cos^2(2x).
    $$

    Preto

    $$
    \sin^4x = \frac14-\frac12\cos(2x)+\frac14\cos^2(2x).
    $$

    Znížime poslednú mocninu:

    $$
    \frac14\cos^2(2x) = \frac14\cdot\frac{1+\cos(4x)}{2} = \frac18+\frac18\cos(4x).
    $$

    Spojením konštánt dostávame

    $$
    \sin^4x = \frac38-\frac12\cos(2x)+\frac18\cos(4x).
    $$

    Teraz integrujeme po členoch:

    $$
    \int\sin^4x\,dx = \frac38x -\frac12\cdot\frac12\sin(2x) +\frac18\cdot\frac14\sin(4x) +C.
    $$

    Teda

    $$
    \boxed{ \int\sin^4x\,dx = \frac{3x}{8} -\frac{\sin(2x)}{4} +\frac{\sin(4x)}{32} +C. }
    $$

!!! warning "Súčin a druhá mocnina dvojčlena"

    Dôležité je rozlišovať dve identity:

    $$
    (1-a)(1+a)=1-a^2,
    $$

    ale

    $$
    (1-a)^2=1-2a+a^2.
    $$

    Ich zámena vedie k strate celého člena.

### Rozhodovanie pri súčine $\sin^m x\cos^n x$

!!! tip "Výber medzi typmi II, III a IV"

    Pre nezáporné celé exponenty platí:

    - Ak je exponent kosínusu $n$ nepárny, odložíme jeden faktor $\cos x$ a použijeme typ II: $t=\sin x$.
    - Ak je exponent sínusu $m$ nepárny, odložíme jeden faktor $\sin x$ a použijeme typ III: $t=\cos x$.
    - Ak sú oba exponenty nepárne, môžeme použiť obe možnosti. Vyberieme tú, pri ktorej bude menej roznásobovania.
    - Ak sú oba exponenty párne, použijeme typ IV a vzorce na znižovanie exponentov.

    Tieto pravidlá v uvedenej podobe nepredstavujú úplný návod pre ľubovoľné záporné alebo neceločíselné exponenty.

## V. typ – integrál racionálnej funkcie tangensu alebo kotangensu

!!! info "Základné tvary typu V"

    Uvažujme integrály

    $$
    \boxed{\int f(\tan x)\,dx}
    $$

    alebo

    $$
    \boxed{\int f(\cot x)\,dx,}
    $$

    kde $f$ je racionálna funkcia jednej premennej.

    Hlavnou myšlienkou je priamo označiť tangens alebo kotangens novou premennou. Aj diferenciál sa potom vyjadrí racionálne.

### Substitúcia $t=\tan x$

Máme

$$
t=\tan x.
$$

Derivovaním:

$$
dt=\frac1{\cos^2x}\,dx.
$$

Keďže

$$
\frac1{\cos^2x}=1+\tan^2x=1+t^2,
$$

dostávame

$$
dt=(1+t^2)\,dx.
$$

!!! success "Vzorce pre tangens"

    Preto

    $$
    \boxed{dx=\frac{dt}{1+t^2}.}
    $$

    Celý integrál sa zmení na

    $$
    \boxed{ \int f(\tan x)\,dx = \int\frac{f(t)}{1+t^2}\,dt. }
    $$

Ak je $f$ racionálna, aj nový integrand je racionálny.

### Substitúcia $t=\cot x$

Podobne

$$
t=\cot x
$$

dáva

$$
dt=-\frac1{\sin^2x}\,dx.
$$

Použijeme

$$
\frac1{\sin^2x}=1+\cot^2x=1+t^2.
$$

!!! success "Vzorce pre kotangens"

    Teda

    $$
    dt=-(1+t^2)\,dx
    $$

    a

    $$
    \boxed{dx=-\frac{dt}{1+t^2}.}
    $$

    Preto

    $$
    \boxed{ \int f(\cot x)\,dx = -\int\frac{f(t)}{1+t^2}\,dt. }
    $$

Rozdiel medzi oboma substitúciami je opäť v znamienku diferenciálu.

### Podrobný príklad V. typu

!!! example "Tangens a rozklad s kvadratickým faktorom"

    Vypočítajme

    $$
    I=\int\frac{\tan x}{\tan x+2}\,dx.
    $$

    Volíme

    $$
    t=\tan x, \qquad dx=\frac{dt}{1+t^2}.
    $$

    Dosadíme oba výskyty tangensu aj diferenciál:

    $$
    I= \int \frac{t}{t+2}\frac{dt}{1+t^2}.
    $$

    Teda

    $$
    I= \int\frac{t}{(t+2)(1+t^2)}\,dt.
    $$

    Dostali sme rýdzo racionálnu funkciu: stupeň čitateľa je menší ako stupeň menovateľa.

    Menovateľ obsahuje lineárny faktor $t+2$ a kvadratický faktor $t^2+1$. Kvadratický faktor má diskriminant

    $$
    D=0^2-4\cdot1\cdot1=-4<0,
    $$

    takže je nad reálnymi číslami nerozložiteľný.

    Rozklad preto hľadáme v tvare

    $$
    \frac{t}{(t+2)(t^2+1)} = \frac A{t+2} + \frac{Bt+D}{t^2+1}.
    $$

    Nad lineárnym faktorom je konštanta. Nad kvadratickým faktorom je všeobecný polynóm stupňa menšieho ako $2$, teda lineárny výraz. Keby sme tam dali iba konštantu, nemuseli by sme mať dostatok voľnosti na splnenie rovnosti.

    Vynásobíme spoločným menovateľom:

    $$
    t=A(t^2+1)+(Bt+D)(t+2).
    $$

    Roznásobíme druhý súčin:

    $$
    (Bt+D)(t+2) = Bt^2+2Bt+Dt+2D.
    $$

    Preto

    $$
    t = (A+B)t^2+(2B+D)t+(A+2D).
    $$

    Porovnáme koeficienty:

    $$
    A+B=0,
    $$

    $$
    2B+D=1,
    $$

    $$
    A+2D=0.
    $$

    Z prvej rovnice:

    $$
    B=-A.
    $$

    Z tretej:

    $$
    D=-\frac A2.
    $$

    Dosadíme do druhej:

    $$
    -2A-\frac A2=1.
    $$

    Teda

    $$
    -\frac52A=1, \qquad A=-\frac25.
    $$

    Odtiaľ

    $$
    B=\frac25, \qquad D=\frac15.
    $$

    Rozklad je

    $$
    \frac{t}{(t+2)(t^2+1)} = -\frac{2}{5(t+2)} + \frac{2t+1}{5(t^2+1)}.
    $$

    Integrál rozdelíme:

    $$
    I= -\frac25\int\frac{dt}{t+2} + \frac15\int\frac{2t}{t^2+1}\,dt + \frac15\int\frac{dt}{t^2+1}.
    $$

    Jednotlivé členy vedú na:

    $$
    \int\frac{dt}{t+2}=\ln|t+2|,
    $$

    $$
    \int\frac{2t}{t^2+1}\,dt=\ln(t^2+1),
    $$

    $$
    \int\frac{dt}{t^2+1}=\arctan t.
    $$

    Preto

    $$
    I= -\frac25\ln|t+2| + \frac15\ln(t^2+1) + \frac15\arctan t +C.
    $$

    Po návrate:

    $$
    I= -\frac25\ln|\tan x+2| + \frac15\ln(1+\tan^2x) + \frac15\arctan(\tan x) +C.
    $$

    Na každom intervale medzi susednými pólmi tangensu sa $\arctan(\tan x)$ líši od $x$ iba o konštantný násobok $\pi$. Tento rozdiel môžeme zahrnúť do integračnej konštanty.

    Navyše

    $$
    1+\tan^2x=\frac1{\cos^2x},
    $$

    takže

    $$
    \ln(1+\tan^2x)=-2\ln|\cos x|.
    $$

    Logaritmické členy môžeme spojiť:

    $$
    \ln|\tan x+2|+\ln|\cos x| = \ln|(\tan x+2)\cos x|.
    $$

    Keďže

    $$
    (\tan x+2)\cos x=\sin x+2\cos x,
    $$

    dostávame jednoduchší výsledok

    $$
    \boxed{ I= \frac{x}{5} -\frac25\ln|\sin x+2\cos x| +C. }
    $$

    Výsledok používame na intervaloch definičného oboru pôvodného integrandu. Aj keď zjednodušený výsledný výraz môže byť definovaný vo viacerých bodoch, pôvodná funkcia s tangensom tam definovaná byť nemusí.

### Príklad s kotangensom

!!! example "Integrál $\cot^2x$"

    Vypočítajme

    $$
    J=\int\cot^2x\,dx.
    $$

    Pri substitúcii

    $$
    t=\cot x, \qquad dx=-\frac{dt}{1+t^2}
    $$

    dostávame

    $$
    J=-\int\frac{t^2}{1+t^2}\,dt.
    $$

    Čitateľ prepíšeme ako

    $$
    t^2=(1+t^2)-1.
    $$

    Preto

    $$
    \frac{t^2}{1+t^2} = 1-\frac1{1+t^2}.
    $$

    Teda

    $$
    J=-\int1\,dt+\int\frac{dt}{1+t^2} = -t+\arctan t+C.
    $$

    Po návrate možno výsledok na príslušných intervaloch upraviť na

    $$
    \boxed{ \int\cot^2x\,dx=-\cot x-x+C. }
    $$

    Tento konkrétny príklad má aj kratšie riešenie pomocou identity

    $$
    \cot^2x=\frac1{\sin^2x}-1.
    $$

    Substitučný postup však ukazuje všeobecnú metódu typu V.

### Na čo si dať pozor

!!! warning "Arctangens a tangens nie sú globálne inverzné"

    Rovnosť

    $$
    \arctan(\tan x)=x
    $$

    neplatí na celej reálnej osi. Priamo platí iba pre

    $$
    x\in\left(-\frac\pi2,\frac\pi2\right).
    $$

    Na ostatných intervaloch sa pravá strana upraví o násobok $\pi$. Pri neurčitom integrále sa tento konštantný rozdiel môže zahrnúť do $C$, ale pri práci s inverznými funkciami ho nemožno bez vysvetlenia ignorovať.

## VI. typ – súčiny sínusov a kosínusov s rôznymi uhlami

!!! info "Základné tvary typu VI"

    Uvažujme integrály

    $$
    \boxed{\int\sin(ax)\cos(bx)\,dx,}
    $$

    $$
    \boxed{\int\sin(ax)\sin(bx)\,dx,}
    $$

    $$
    \boxed{\int\cos(ax)\cos(bx)\,dx,}
    $$

    kde $a,b$ sú reálne konštanty.

!!! tip "Súčin premeníme na súčet"

    Hlavnou myšlienkou je **premeniť súčin na súčet**. Súčet vieme integrovať po členoch, zatiaľ čo integrál súčinu vo všeobecnosti nemôžeme rozdeliť na súčin integrálov.

### Odvodenie vzorcov pre súčin

Zo súčtových vzorcov máme

$$
\cos(\alpha-\beta) = \cos\alpha\cos\beta+\sin\alpha\sin\beta
$$

a

$$
\cos(\alpha+\beta) = \cos\alpha\cos\beta-\sin\alpha\sin\beta.
$$

Keď druhú rovnosť odčítame od prvej, členy s kosínusmi sa vyrušia:

$$
\cos(\alpha-\beta)-\cos(\alpha+\beta) = 2\sin\alpha\sin\beta.
$$

Preto

!!! success "Súčin dvoch sínusov"

    $$
    \boxed{ \sin\alpha\sin\beta = \frac12\left[ \cos(\alpha-\beta)-\cos(\alpha+\beta) \right]. }
    $$

Keď tie isté dve rovnosti sčítame, vyrušia sa členy so sínusmi:

$$
\cos(\alpha-\beta)+\cos(\alpha+\beta) = 2\cos\alpha\cos\beta.
$$

Teda

!!! success "Súčin dvoch kosínusov"

    $$
    \boxed{ \cos\alpha\cos\beta = \frac12\left[ \cos(\alpha-\beta)+\cos(\alpha+\beta) \right]. }
    $$

Nakoniec použijeme

$$
\sin(\alpha+\beta) = \sin\alpha\cos\beta+\cos\alpha\sin\beta
$$

a

$$
\sin(\alpha-\beta) = \sin\alpha\cos\beta-\cos\alpha\sin\beta.
$$

Sčítaním dostaneme

$$
\sin(\alpha+\beta)+\sin(\alpha-\beta) = 2\sin\alpha\cos\beta.
$$

Preto

!!! success "Súčin sínusu a kosínusu"

    $$
    \boxed{ \sin\alpha\cos\beta = \frac12\left[ \sin(\alpha+\beta)+\sin(\alpha-\beta) \right]. }
    $$

Tieto vzorce nie sú nezávislé pravidlá bez súvislostí. Všetky vznikajú sčítaním alebo odčítaním súčtových vzorcov.

### Podrobný príklad VI. typu

!!! example "Integrál $\sin(3x)\cos(2x)$"

    Vypočítajme

    $$
    I=\int\sin(3x)\cos(2x)\,dx.
    $$

    Použijeme vzorec pre súčin sínusu a kosínusu s

    $$
    \alpha=3x, \qquad \beta=2x.
    $$

    Dostávame

    $$
    \sin(3x)\cos(2x) = \frac12\left[\sin(3x+2x)+\sin(3x-2x)\right].
    $$

    Upravíme uhly:

    $$
    \sin(3x)\cos(2x) = \frac12(\sin(5x)+\sin x).
    $$

    Preto

    $$
    I= \frac12\int\sin(5x)\,dx + \frac12\int\sin x\,dx.
    $$

    Prvý integrál vyžaduje zohľadnenie vnútornej derivácie. Pri substitúcii

    $$
    u=5x
    $$

    máme

    $$
    du=5\,dx, \qquad dx=\frac15\,du.
    $$

    Teda

    $$
    \int\sin(5x)\,dx = \frac15\int\sin u\,du = -\frac15\cos u = -\frac15\cos(5x).
    $$

    Druhý integrál je základný:

    $$
    \int\sin x\,dx=-\cos x.
    $$

    Dostávame

    $$
    \boxed{ \int\sin(3x)\cos(2x)\,dx = -\frac1{10}\cos(5x)-\frac12\cos x+C. }
    $$

### Všeobecné výsledky

!!! success "Všeobecné integračné vzorce typu VI"

    Ak

    $$
    a-b\neq0, \qquad a+b\neq0,
    $$

    potom po premene súčinov na súčty dostávame

    $$
    \boxed{\begin{aligned}
    \int\sin(ax)\sin(bx)\,dx ={}& \frac{\sin((a-b)x)}{2(a-b)}\\
     & -\frac{\sin((a+b)x)}{2(a+b)}+C.
    \end{aligned}}
    $$

    Podobne

    $$
    \boxed{\begin{aligned}
    \int\cos(ax)\cos(bx)\,dx ={}& \frac{\sin((a-b)x)}{2(a-b)}\\
     & +\frac{\sin((a+b)x)}{2(a+b)}+C.
    \end{aligned}}
    $$

    A pre zmiešaný súčin:

    $$
    \boxed{\begin{aligned}
    \int\sin(ax)\cos(bx)\,dx ={}& -\frac{\cos((a+b)x)}{2(a+b)}\\
     & -\frac{\cos((a-b)x)}{2(a-b)}+C.
    \end{aligned}}
    $$

Tieto hotové výsledky nie je nevyhnutné memorovať. Stačí ovládať premenu súčinu na súčet a základné integrály sínusu a kosínusu s lineárnym argumentom.

### Čo ak sa objaví nulový rozdiel alebo súčet?

!!! warning "Nulovým súčtom ani rozdielom nedelíme"

    Ak $a=b$, potom $a-b=0$, a preto nemožno priamo použiť vzorec obsahujúci delenie výrazom $a-b$.

    Neznamená to, že integrál neexistuje. Znamená to iba, že príslušný člen musíme vyhodnotiť ešte pred integrovaním.

!!! example "Rovnaké uhly a druhé mocniny"

    Napríklad

    $$
    \cos(ax)\cos(ax) = \frac12[\cos0+\cos(2ax)].
    $$

    Keďže $\cos0=1$,

    $$
    \cos^2(ax)=\frac12(1+\cos(2ax)).
    $$

    Pre $a\neq0$ teda

    $$
    \boxed{ \int\cos^2(ax)\,dx = \frac{x}{2}+\frac{\sin(2ax)}{4a}+C. }
    $$

    Podobne

    $$
    \boxed{ \int\sin^2(ax)\,dx = \frac{x}{2}-\frac{\sin(2ax)}{4a}+C, \qquad a\neq0. }
    $$

!!! tip "Súvislosť typov IV a VI"

    Dostali sme presne vzorce používané pri type IV. **Typ IV a typ VI teda spolu súvisia: vzorce na znižovanie druhých mocnín sú špeciálnymi prípadmi vzorcov pre súčin.**

    Ak $a=-b$, nulový je súčet $a+b$. Postupujeme rovnako: najprv upravíme goniometrický výraz, až potom integrujeme.

## Ako si vybrať správny postup

Číslovanie I–VI nie je poradím, v akom treba metódy skúšať. Univerzálna substitúcia typu I je všeobecná, ale často vedie k dlhšiemu výpočtu než jednoduchšie osobitné postupy.

| Čo rozpoznám v integráli | Hlavná úprava | Typ |
| ------------------------------------------------------------------------------- | -------------------------------------------------------------- | --- |
| Funkciu sínusu násobenú kosínusom | $t=\sin x$ | II |
| Funkciu kosínusu násobenú sínusom | $t=\cos x$, pozor na mínus | III |
| Súčin $\sin^m x\cos^n x$ s nepárnym $n$ | Odložiť $\cos x$, ostatné kosínusy nahradiť pomocou sínusu | II |
| Súčin $\sin^m x\cos^n x$ s nepárnym $m$ | Odložiť $\sin x$, ostatné sínusy nahradiť pomocou kosínusu | III |
| Obe nezáporné celočíselné mocniny párne | Znižovanie exponentov | IV |
| Racionálnu funkciu tangensu alebo kotangensu | $t=\tan x$ alebo $t=\cot x$ | V |
| Súčin sínusov a kosínusov s rôznymi uhlami | Premena súčinu na súčet | VI |
| Všeobecnú racionálnu funkciu $\sin x,\cos x$ bez vhodnejšieho zjednodušenia | $t=\tan\frac{x}{2}$ | I |

!!! tip "Voľba postupu po substitúcii"

    Po substitúcii sa rozhodovanie často presunie do oblasti racionálnych funkcií:

    - Ak je stupeň čitateľa aspoň taký veľký ako stupeň menovateľa, najprv delíme polynómy.
    - Ak sa menovateľ rozkladá na faktory, zvážime parciálne zlomky. Pri opakovaných faktoroch zahrnieme do rozkladu všetky mocniny až po ich násobnosť.
    - Ak je v čitateli derivácia menovateľa alebo jej konštantný násobok, očakávame logaritmus.
    - Ak máme nerozložiteľný kvadratický menovateľ, často pomôže doplnenie na štvorec a arctangens.

## Čo treba vedieť naspamäť a čo stačí vedieť odvodiť

Naspamäť je užitočné ovládať derivácie základných goniometrických funkcií, identitu

$$
\sin^2x+\cos^2x=1
$$

a základné integračné vzorce. Praktické je poznať aj tri vzťahy univerzálnej substitúcie a vzorce na znižovanie druhých mocnín.

Vzorce pre súčin sínusov a kosínusov sa dajú odvodiť zo súčtových vzorcov. Hotové primitívne funkcie ku všetkým šiestim typom si netreba pamätať.

Najdôležitejšie je rozpoznať **hlavnú myšlienku metódy**: nájsť funkciu spolu s jej deriváciou, racionalizovať integrand alebo premeniť súčin na súčet. Roznásobovanie, krátenie a porovnávanie koeficientov sú až následné algebraické kroky.

!!! tip "Kontrola riešenia"

    Pri kontrole riešenia si vždy polož tri otázky:

    1. **Je po substitúcii celý integrál zapísaný iba pomocou novej premennej?**
    2. **Zohľadnil som znamienko a konštantu pochádzajúcu z derivácie vnútornej funkcie?**
    3. **Dostanem po derivovaní výsledku pôvodný integrand?**
