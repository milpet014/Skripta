---
icon: fontawesome/solid/6
---

# Integrály goniometrických funkcií

Ďalšou významnou skupinou sú integrály

$$
\boxed{ \int R(\sin x,\cos x)\,dx, }
$$

kde $R$ je racionálna funkcia dvoch premenných.

Napríklad

$$
\frac{1}{3+\cos x-2\sin x}
$$

je racionálna funkcia $\sin x$ a $\cos x$.

!!! success "Weierstrassova substitúcia"

    Na takýto integrál existuje univerzálna substitúcia

    $$
    \boxed{ t=\tan\frac x2. }
    $$

    Nazýva sa často **univerzálna goniometrická substitúcia** alebo Weierstrassova substitúcia.

Jej význam je obrovský: po nej sa **$\sin x$, $\cos x$ aj $dx$ zmenia na racionálne funkcie $t$**.

!!! warning "Platnosť substitúcie"

    $t=\tan(x/2)$ používame na intervaloch, kde je definovaná. Pri zápise výsledku skontrolujeme aj prípadné body $x=(2n+1)\pi$, ktoré táto substitúcia vynecháva.

## Odvodenie vzorcov univerzálnej substitúcie

Máme

$$
t=\tan\frac x2.
$$

Pre sínus použijeme identitu

$$
\sin x = 2\sin\frac x2\cos\frac x2.
$$

Vydelíme čitateľ aj menovateľ výrazom $\cos^2(x/2)$:

$$
\sin x = \frac{ 2\tan\frac x2 }{ 1+\tan^2\frac x2 }.
$$

Preto

$$
\boxed{ \sin x=\frac{2t}{1+t^2}. }
$$

Pre kosínus použijeme

$$
\cos x = \cos^2\frac x2-\sin^2\frac x2.
$$

Po rovnakom vydelení dostávame

$$
\boxed{ \cos x=\frac{1-t^2}{1+t^2}. }
$$

Nakoniec potrebujeme $dx$.

Zo

$$
t=\tan\frac x2
$$

derivujeme:

$$
dt = \frac12 \frac1{\cos^2(x/2)}dx.
$$

Ale

$$
\frac1{\cos^2(x/2)} = 1+\tan^2\frac x2 = 1+t^2.
$$

Teda

$$
dt=\frac12(1+t^2)\,dx.
$$

Odtiaľ

$$
\boxed{ dx=\frac{2}{1+t^2}\,dt. }
$$

!!! success "Vzorce po substitúcii"

    Súhrn transformačných vzorcov:

    $$
    \begin{aligned}
    t&=\tan\frac{x}{2}, &dx&=\frac{2}{1+t^2}\,dt,\\
    \sin x&=\frac{2t}{1+t^2}, &\cos x&=\frac{1-t^2}{1+t^2}.
    \end{aligned}
    $$

Po dosadení už máme iba racionálnu funkciu $t$.

## Príklad univerzálnej substitúcie

!!! example "Integrál s $\cos x-2\sin x+3$"

    Vypočítajme

    $$
    \int \frac1{\cos x-2\sin x+3}\,dx.
    $$

    Dosadíme

    $$
    \cos x=\frac{1-t^2}{1+t^2},
    $$

    $$
    \sin x=\frac{2t}{1+t^2},
    $$

    $$
    dx=\frac2{1+t^2}\,dt.
    $$

    Menovateľ:

    $$
    \frac{1-t^2}{1+t^2} - 2\frac{2t}{1+t^2} + 3.
    $$

    Trojku zapíšeme so spoločným menovateľom:

    $$
    3=\frac{3(1+t^2)}{1+t^2}.
    $$

    Po úprave menovateľa dostaneme

    $$
    \begin{aligned}
    \frac{1-t^2-4t+3+3t^2}{1+t^2} &= \frac{2t^2-4t+4}{1+t^2}\\
     &= \frac{2(t^2-2t+2)}{1+t^2}.
    \end{aligned}
    $$

    A

    $$
    t^2-2t+2=(t-1)^2+1.
    $$

    Po dosadení a skrátení získame

    $$
    \begin{aligned}
    \int \frac{1}{\frac{2[(t-1)^2+1]}{1+t^2}}\frac{2}{1+t^2}\,dt &= \int\frac{1}{(t-1)^2+1}\,dt.
    \end{aligned}
    $$

    Položíme

    $$
    u=t-1.
    $$

    Dostávame

    $$
    \int\frac1{u^2+1}\,du = \arctan u+C.
    $$

    Preto

    $$
    \boxed{ \arctan\left(\tan\frac x2-1\right)+C. }
    $$

    Komplikovaná goniometrická funkcia sa zmenila na obyčajný integrál typu

    $$
    \frac1{u^2+1}.
    $$

## Ďalší príklad univerzálnej substitúcie

!!! example "Integrál $1/(1-\sin x)$"

    Máme

    $$
    \int\frac1{1-\sin x}\,dx.
    $$

    Použijeme

    $$
    \sin x=\frac{2t}{1+t^2}, \qquad dx=\frac2{1+t^2}dt.
    $$

    Potom

    $$
    1-\sin x = 1-\frac{2t}{1+t^2} = \frac{1+t^2-2t}{1+t^2}.
    $$

    Ale

    $$
    1+t^2-2t=(t-1)^2.
    $$

    Preto

    $$
    \int \frac1{1-\sin x}\,dx = 2\int\frac1{(t-1)^2}\,dt.
    $$

    Teda

    $$
    2\int\frac1{(t-1)^2}\,dt=-\frac2{t-1}+C.
    $$

    Po návrate

    $$
    \boxed{ -\frac{2}{\tan(x/2)-1}+C. }
    $$

    Tvar platný na celom definičnom obore pôvodného integrandu je

    $$
    \boxed{\int\frac{1}{1-\sin x}\,dx=\frac{\cos x}{1-\sin x}+C.}
    $$

    Kde je navyše $\cos x\ne 0$, môžeme písať aj $\frac{\cos x}{1-\sin x}=\tan x+\sec x$. Na spoločnom definičnom obore sa tento tvar od $-2/(\tan(x/2)-1)$ líši iba o konštantu.

## Kedy použiť jednoduchšiu substitúciu

!!! tip "Najprv skús jednoduchšiu substitúciu"

    Substitúcia

    $$
    t=\tan\frac x2
    $$

    funguje na každú racionálnu funkciu $\sin x,\cos x$, ale nie vždy je najrozumnejšia. Niekedy by sme si ňou z jednoduchého príkladu vyrobili zbytočne dlhší výpočet.

    Ak sa integrál dá upraviť napríklad na

    $$
    \int f(\sin x)\cos x\,dx,
    $$

    je omnoho jednoduchšie položiť

    $$
    t=\sin x, \qquad dt=\cos x\,dx.
    $$

    Podobne pri tvare

    $$
    \int f(\cos x)\sin x\,dx
    $$

    použijeme

    $$
    t=\cos x, \qquad dt=-\sin x\,dx.
    $$

## Mocniny sínusu a kosínusu

!!! example "$\int\sin^2x\cos^3x\,dx$"

    Typickým príkladom je

    $$
    \int\sin^2x\cos^3x\,dx.
    $$

    Pri $\cos^3x$ si jednu $\cos x$ necháme pre diferenciál:

    $$
    \cos^3x = \cos^2x\cos x.
    $$

    Použijeme identitu

    $$
    \cos^2x=1-\sin^2x.
    $$

    Teda

    $$
    \int \sin^2x(1-\sin^2x)\cos x\,dx.
    $$

    Teraz položíme

    $$
    t=\sin x, \qquad dt=\cos x\,dx.
    $$

    Dostaneme

    $$
    \int t^2(1-t^2)\,dt.
    $$

    Roznásobíme:

    $$
    \int(t^2-t^4)\,dt.
    $$

    Preto

    $$
    \frac{t^3}{3}-\frac{t^5}{5}+C.
    $$

    Po návrate

    $$
    \boxed{ \frac{\sin^3x}{3} - \frac{\sin^5x}{5} +C. }
    $$

!!! example "$\int\cos^5x\,dx$"

    Rovnaká myšlienka funguje napríklad pri

    $$
    \int\cos^5x\,dx.
    $$

    Necháme si jednu $\cos x$:

    $$
    \cos^5x = \cos^4x\cos x = (1-\sin^2x)^2\cos x.
    $$

    Položíme

    $$
    t=\sin x.
    $$

    Potom

    $$
    \int(1-t^2)^2\,dt = \int(1-2t^2+t^4)\,dt.
    $$

    Teda

    $$
    \boxed{ \sin x -\frac23\sin^3x +\frac15\sin^5x +C. }
    $$

## Prehľad substitúcií

| Tvar integrandu | Užitočný krok |
|---|---|
| Racionálna funkcia $\sin x$ a $\cos x$ | $t=\tan(x/2)$ |
| Objaví sa $\cos x\,dx$ pri funkcii $\sin x$ | $t=\sin x$ |
| Objaví sa $\sin x\,dx$ pri funkcii $\cos x$ | $t=\cos x$ |

!!! tip "Spoločná myšlienka"

    Vhodnou substitúciou prevedieme integrál na racionálny integrál alebo iný známy typ.
