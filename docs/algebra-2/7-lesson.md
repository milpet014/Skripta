---
icon: fontawesome/solid/7
---

<button class="md-button md-button--primary" onclick="window.print();">
  Tlačiť
</button>

# Siedmy týždeň


## Priesečníky priamok a kružníc, geometrické konštrukcie čísel a kvadratické rozšírenia poľa

## Úvod do témy

Táto časť spája tri navzájom súvisiace myšlienky.

Prvou je analytická geometria, teda počítanie s bodmi, priamkami a kružnicami pomocou súradníc a rovníc. Budeme hľadať priesečníky priamok a kružníc a ukáže sa, že geometrický problém sa dá premeniť na riešenie rovníc.

Druhou je klasická euklidovská konštrukcia. Ide o otázku, čo vieme zostrojiť pravítkom a kružidlom. Ukáže sa, že takto vieme geometricky zostrojiť súčet, súčin, prevrátenú hodnotu a odmocninu.

Treťou je algebraické pozadie týchto konštrukcií. Objavia sa množiny typu \( \mathbb{Q}(\sqrt{2}) \) a \( \mathbb{Q}(\sqrt{3}) \), teda množiny čísel tvaru \( a + b\sqrt{2} \) alebo \( a + b\sqrt{3} \), kde \( a \) a \( b \) sú racionálne čísla. Tieto množiny sú dôležité preto, že pri konštrukciách sa často dostávame práve k číslam vzniknutým pomocou odmocnín.

Celý materiál teda smeruje k veľmi dôležitej myšlienke: zostrojiteľnosť pravítkom a kružidlom má algebraický obsah.

## 1. Priesečník dvoch priamok

### 1.1 Základná myšlienka

Ak chceme nájsť priesečník dvoch priamok, potrebujeme nájsť bod, ktorý leží na oboch priamkach zároveň.

To znamená:

- musí spĺňať rovnicu prvej priamky,
- a súčasne aj rovnicu druhej priamky.

V tejto časti sa priamky opisujú najmä parametricky.

!!! abstract "Definícia"

    Ak priamka prechádza bodom \( A = [x_0, y_0] \) a má smerový vektor \( v = (v_1, v_2) \), tak jej parametrický tvar je

    \[
    x = x_0 + tv_1,
    \]

    \[
    y = y_0 + tv_2,
    \]

    kde \( t \) je parameter.

To znamená, že:

- pre každú hodnotu \( t \) dostaneme nejaký bod priamky,
- pri rôznych hodnotách \( t \) prechádzame po celej priamke.

### 1.2 Príklad: priamky určené dvojicami bodov

Máme dve priamky:

- prvá prechádza bodmi \( [3,2] \) a \( [4,1] \),
- druhá prechádza bodmi \( [1,5] \) a \( [7,2] \).

#### 1.2.1 Prvá priamka

Najprv nájdeme smerový vektor prvej priamky.

!!! example "Príklad"

    Od druhého bodu odčítame prvý:

    \[
    [4,1] - [3,2] = (1,-1).
    \]

    Teda smerový vektor je

    \[
    N_1 = (1,-1).
    \]

    Preto parametrický tvar prvej priamky je

    \[
    x = 3 + l,
    \]

    \[
    y = 2 - l,
    \]

    kde \( l \) je parameter.

#### 1.2.2 Druhá priamka

Smerový vektor druhej priamky dostaneme podobne.

!!! example "Príklad"

    \[
    [7,2] - [1,5] = (6,-3).
    \]

    Teda

    \[
    N_2 = (6,-3).
    \]

    Z bodu \( [7,2] \) môžeme písať parametrický tvar

    \[
    x = 7 + 6u,
    \]

    \[
    y = 2 - 3u,
    \]

    kde \( u \) je parameter.

V poznámkach sa druhá priamka prepíše aj do všeobecného tvaru. Dostane sa rovnica

\[
x + 2y - 11 = 0.
\]

!!! note "Vysvetlenie príkladu"

    Overíme, že ide naozaj o tú istú priamku.

    Pre bod \( [7,2] \):

    \[
    7 + 2 \cdot 2 - 11 = 7 + 4 - 11 = 0.
    \]

    Pre bod \( [1,5] \):

    \[
    1 + 2 \cdot 5 - 11 = 1 + 10 - 11 = 0.
    \]

    Naozaj ide o tú istú priamku.

#### 1.2.3 Dosadenie bodov prvej priamky do druhej rovnice

Bod prvej priamky má tvar

\[
x = 3 + l,
\qquad
y = 2 - l.
\]

Dosadíme do rovnice druhej priamky:

\[
x + 2y - 11 = 0.
\]

!!! example "Príklad"

    \[
    (3 + l) + 2(2 - l) - 11 = 0,
    \]

    \[
    3 + l + 4 - 2l - 11 = 0,
    \]

    \[
    7 - l - 11 = 0,
    \]

    \[
    -l - 4 = 0,
    \]

    \[
    l = -4.
    \]

    Teraz dopočítame súradnice priesečníka:

    \[
    x = 3 + (-4) = -1,
    \]

    \[
    y = 2 - (-4) = 6.
    \]

    Teda priesečník je

    \[
    P = [-1, 6].
    \]

### 1.3 Druhý príklad na priesečník priamok

Máme body

\[
A = [3,3], \quad B = [5,4], \quad C = [1,1], \quad D = [9,2].
\]

Prvá priamka ide cez body \( A \) a \( B \).

#### 1.3.1 Prvá priamka

!!! example "Príklad"

    Smerový vektor prvej priamky dostaneme odčítaním:

    \[
    [5,4] - [3,3] = (2,1).
    \]

    Teda smerový vektor je

    \[
    v = (2,1).
    \]

    Parametrický tvar prvej priamky je

    \[
    x = 3 + 2l,
    \]

    \[
    y = 3 + l.
    \]

Všeobecná rovnica tejto priamky je

\[
x - 2y + 3 = 0.
\]

!!! note "Vysvetlenie príkladu"

    Overme si to.

    Pre bod \( [3,3] \):

    \[
    3 - 2 \cdot 3 + 3 = 3 - 6 + 3 = 0.
    \]

    Pre bod \( [5,4] \):

    \[
    5 - 2 \cdot 4 + 3 = 5 - 8 + 3 = 0.
    \]

    Rovnica je správna.

#### 1.3.2 Druhá priamka

Druhá priamka prechádza bodmi \( C = [1,1] \) a \( D = [9,2] \).

!!! example "Príklad"

    Smerový vektor je

    \[
    [9,2] - [1,1] = (8,1).
    \]

    Preto jej parametrický tvar je

    \[
    x = 1 + 8u,
    \]

    \[
    y = 1 + u.
    \]

#### 1.3.3 Hľadanie priesečníka

Dosadíme body druhej priamky do rovnice prvej priamky:

\[
x - 2y + 3 = 0.
\]

!!! example "Príklad"

    \[
    (1 + 8u) - 2(1 + u) + 3 = 0,
    \]

    \[
    1 + 8u - 2 - 2u + 3 = 0,
    \]

    \[
    6u + 2 = 0,
    \]

    \[
    6u = -2,
    \]

    \[
    u = -\frac{1}{3}.
    \]

    Teraz vypočítame súradnice bodu:

    \[
    x = 1 + 8\left(-\frac{1}{3}\right) = 1 - \frac{8}{3} = -\frac{5}{3},
    \]

    \[
    y = 1 + \left(-\frac{1}{3}\right) = \frac{2}{3}.
    \]

    Priesečník je teda

    \[
    P = \left[-\frac{5}{3}, \frac{2}{3}\right].
    \]

## 2. Priesečník dvoch kružníc

### 2.1 Základná myšlienka

Ak chceme nájsť priesečník dvoch kružníc, hľadáme bod, ktorý leží na oboch kružniciach.

To znamená, že musí spĺňať obe rovnice kružníc súčasne.

Typicky dostaneme dve kvadratické rovnice. Často je veľmi výhodné jednu od druhej odčítať. Pri odčítaní sa zvyknú vyrušiť členy \( x^2 \) a \( y^2 \) a zostane lineárna rovnica. Tá potom veľmi pomôže.

### 2.2 Príklad: dve kružnice, ktoré sa dotýkajú

Máme dve kružnice:

- prvá má stred \( S = [1,1] \) a polomer \( 3 \),
- druhá má stred \( Q = [1,0] \) a polomer \( 4 \).

Ich rovnice sú:

\[
(x - 1)^2 + (y - 1)^2 = 9,
\]

\[
(x - 1)^2 + y^2 = 16.
\]

!!! example "Príklad"

    Roznásobíme prvú:

    \[
    x^2 - 2x + 1 + y^2 - 2y + 1 = 9,
    \]

    \[
    x^2 - 2x + y^2 - 2y = 7.
    \]

    Roznásobíme druhú:

    \[
    x^2 - 2x + 1 + y^2 = 16,
    \]

    \[
    x^2 - 2x + y^2 = 15.
    \]

    Teraz druhú rovnicu odčítame od prvej:

    \[
    (x^2 - 2x + y^2 - 2y) - (x^2 - 2x + y^2) = 7 - 15,
    \]

    \[
    -2y = -8,
    \]

    \[
    y = 4.
    \]

    Dosadíme do prvej kružnice:

    \[
    (x - 1)^2 + (4 - 1)^2 = 9,
    \]

    \[
    (x - 1)^2 + 9 = 9,
    \]

    \[
    (x - 1)^2 = 0,
    \]

    \[
    x = 1.
    \]

    Priesečník je

    \[
    [1,4].
    \]

!!! note "Vysvetlenie príkladu"

    Vyšiel len jeden bod. To znamená, že kružnice sa nepretínajú v dvoch bodoch, ale sa len dotýkajú. Sú tečné.

### 2.3 Príklad: dve kružnice sa v reálnej rovine nepretínajú

Máme dve kružnice:

- prvá má stred \( [0,0] \) a polomer \( 3 \),
- druhá má stred \( [1,1] \) a polomer \( 7 \).

Ich rovnice sú

\[
x^2 + y^2 = 9,
\]

\[
(x - 1)^2 + (y - 1)^2 = 49.
\]

!!! example "Príklad"

    Druhú rovnicu roznásobíme:

    \[
    x^2 - 2x + 1 + y^2 - 2y + 1 = 49,
    \]

    \[
    x^2 + y^2 - 2x - 2y = 47.
    \]

    Od tejto rovnice odčítame prvú:

    \[
    (x^2 + y^2 - 2x - 2y) - (x^2 + y^2) = 47 - 9,
    \]

    \[
    -2x - 2y = 38,
    \]

    \[
    x + y = -19.
    \]

    Teda

    \[
    x = -19 - y.
    \]

    Dosadíme do prvej kružnice:

    \[
    (-19 - y)^2 + y^2 = 9,
    \]

    \[
    361 + 38y + y^2 + y^2 = 9,
    \]

    \[
    2y^2 + 38y + 352 = 0,
    \]

    \[
    y^2 + 19y + 176 = 0.
    \]

    Diskriminant tejto kvadratickej rovnice je

    \[
    D = 19^2 - 4 \cdot 1 \cdot 176 = 361 - 704 = -343.
    \]

!!! note "Vysvetlenie príkladu"

    Keďže diskriminant je záporný, rovnica nemá reálne riešenie.

    To znamená, že kružnice sa v reálnej rovine nepretínajú.

### 2.4 Príklad: kružnice zadané stredom a bodom na kružnici

Máme:

- prvú kružnicu so stredom \( [0,0] \), na nej leží bod \( [2,3] \),
- druhú kružnicu so stredom \( [1,0] \), na nej leží bod \( [5,6] \).

Najprv dopočítame polomery.

#### 2.4.1 Prvá kružnica

!!! example "Príklad"

    Polomer je vzdialenosť bodu \( [2,3] \) od stredu \( [0,0] \):

    \[
    r_1^2 = 2^2 + 3^2 = 4 + 9 = 13.
    \]

    Teda rovnica prvej kružnice je

    \[
    x^2 + y^2 = 13.
    \]

#### 2.4.2 Druhá kružnica

!!! example "Príklad"

    Polomer je vzdialenosť bodu \( [5,6] \) od stredu \( [1,0] \):

    \[
    r_2^2 = (5 - 1)^2 + (6 - 0)^2 = 4^2 + 6^2 = 16 + 36 = 52.
    \]

    Teda rovnica druhej kružnice je

    \[
    (x - 1)^2 + y^2 = 52.
    \]

#### 2.4.3 Hľadanie priesečníkov

!!! example "Príklad"

    Roznásobíme druhú rovnicu:

    \[
    x^2 - 2x + 1 + y^2 = 52.
    \]

    Odčítame prvú:

    \[
    (x^2 - 2x + 1 + y^2) - (x^2 + y^2) = 52 - 13,
    \]

    \[
    -2x + 1 = 39,
    \]

    \[
    -2x = 38,
    \]

    \[
    x = -19.
    \]

    Dosadíme do prvej kružnice:

    \[
    (-19)^2 + y^2 = 13,
    \]

    \[
    361 + y^2 = 13,
    \]

    \[
    y^2 = -348.
    \]

!!! note "Vysvetlenie príkladu"

    To nemá reálne riešenie.

    Teda tieto dve kružnice sa nepretínajú.

### 2.5 Ďalší príklad bez priesečníka

Máme:

- prvú kružnicu so stredom \( [0,0] \), na nej leží bod \( [2,3] \),
- druhú kružnicu so stredom \( [1,0] \), na nej leží bod \( [1,2] \).

Prvá kružnica má opäť rovnicu

\[
x^2 + y^2 = 13.
\]

Pri druhej kružnici je polomer

\[
r^2 = (1 - 1)^2 + (2 - 0)^2 = 4,
\]

teda rovnica je

\[
(x - 1)^2 + y^2 = 4.
\]

!!! example "Príklad"

    Po roznásobení:

    \[
    x^2 - 2x + 1 + y^2 = 4.
    \]

    Odčítame prvú kružnicu:

    \[
    -2x + 1 = 4 - 13 = -9,
    \]

    \[
    -2x = -10,
    \]

    \[
    x = 5.
    \]

    Dosadíme do prvej kružnice:

    \[
    25 + y^2 = 13,
    \]

    \[
    y^2 = -12.
    \]

!!! note "Vysvetlenie príkladu"

    Opäť nedostaneme žiadne reálne riešenie.

    Aj tieto kružnice sa teda nepretínajú.

### 2.6 Príklad: dve kružnice s dvoma priesečníkmi

Máme:

- prvú kružnicu so stredom \( [0,0] \), na nej leží bod \( [3,0] \),
- druhú kružnicu so stredom \( [1,0] \), na nej leží bod \( [4,0] \).

Obe kružnice majú polomer \( 3 \), lebo:

\[
(3 - 0)^2 + (0 - 0)^2 = 9,
\]

\[
(4 - 1)^2 + (0 - 0)^2 = 9.
\]

Ich rovnice sú:

\[
x^2 + y^2 = 9,
\]

\[
(x - 1)^2 + y^2 = 9.
\]

!!! example "Príklad"

    Roznásobíme druhú rovnicu:

    \[
    x^2 - 2x + 1 + y^2 = 9.
    \]

    Odčítame prvú:

    \[
    -2x + 1 = 0,
    \]

    \[
    x = \frac{1}{2}.
    \]

    Dosadíme do prvej kružnice:

    \[
    \left(\frac{1}{2}\right)^2 + y^2 = 9,
    \]

    \[
    \frac{1}{4} + y^2 = 9,
    \]

    \[
    y^2 = 9 - \frac{1}{4} = \frac{35}{4},
    \]

    \[
    y = \pm \frac{\sqrt{35}}{2}.
    \]

    Dostávame dva priesečníky:

    \[
    P_1 = \left[\frac{1}{2}, \frac{\sqrt{35}}{2}\right],
    \]

    \[
    P_2 = \left[\frac{1}{2}, -\frac{\sqrt{35}}{2}\right].
    \]

!!! note "Vysvetlenie príkladu"

    Je prirodzené, že vyšli dva body, lebo dve kružnice sa tu reálne pretínajú v dvoch miestach.

## 3. Geometrické zostrojenie súčtu, súčinu, prevrátenej hodnoty a odmocniny

### 3.1 Zostrojenie súčtu \( a + b \)

Ak máme dve dĺžky \( a \) a \( b \) na jednej priamke, ich súčet zostrojíme jednoducho tak, že ich uložíme za seba.

!!! example "Príklad"

    Myšlienka je veľmi jednoduchá:

    - najprv vyznačíme úsečku dĺžky \( a \),
    - na jej koniec priložíme úsečku dĺžky \( b \),
    - celá vzniknutá úsečka má dĺžku \( a + b \).

Toto je najzákladnejšia konštrukcia.

### 3.2 Zostrojenie súčinu \( a \cdot b \)

V tejto časti je súčin vysvetlený pomocou priamky cez počiatok a podobnosti.

Predstavíme si priamku cez počiatok so smernicou \( a \), teda priamku

\[
y = ax.
\]

Ak na osi \( x \) zoberieme bod s \( x \)-ovou súradnicou \( b \), potom príslušná hodnota \( y \) na tejto priamke je

\[
y = ab.
\]

!!! note "Vysvetlenie príkladu"

    Teda geometricky vieme pomocou podobnosti trojuholníkov z čísiel \( a \) a \( b \) zostrojiť ich súčin.

    Zmysel tejto myšlienky je veľmi dôležitý: násobenie nemusí byť chápané len ako aritmetická operácia na papieri, ale dá sa realizovať aj geometricky.

### 3.3 Zostrojenie prevrátenej hodnoty \( 1/a \)

Podobná myšlienka funguje aj pri čísle \( 1/a \).

Ak opäť pracujeme s priamkou \( y = ax \), tak hľadáme taký bod, pre ktorý je \( y = 1 \).

Teda kladieme otázku: aké \( x \) spĺňa rovnicu

\[
1 = ax?
\]

Odtiaľ dostaneme

\[
x = \frac{1}{a}.
\]

!!! note "Vysvetlenie príkladu"

    To znamená, že pomocou vhodnej geometrickej konštrukcie vieme zostrojiť aj prevrátenú hodnotu čísla \( a \).

    To je veľmi dôležité, pretože takto sa geometricky dá realizovať aj delenie.

### 3.4 Zostrojenie odmocniny \( \sqrt{a} \)

Toto je jedna z najkrajších klasických konštrukcií.

Na priamke si vyznačíme dve po sebe idúce časti:

- jednu dĺžky \( a \),
- druhú dĺžky \( 1 \).

Nad celou úsečkou dĺžky \( a + 1 \) opíšeme polkružnicu.

V bode, ktorý oddeľuje časť dĺžky \( a \) od časti dĺžky \( 1 \), vedieme kolmý úsek až na polkružnicu. Jeho dĺžku označme \( N \).

V tejto situácii platí vzťah

\[
\frac{N}{a} = \frac{1}{N}.
\]

Po prenásobení dostaneme

\[
N^2 = a,
\]

teda

\[
N = \sqrt{a}.
\]

!!! note "Vysvetlenie príkladu"

    Výška v tomto obrázku je presne geometrický priemer dĺžok \( a \) a \( 1 \).

    Keďže geometrický priemer dvoch čísel \( a \) a \( 1 \) je

    \[
    \sqrt{a \cdot 1} = \sqrt{a},
    \]

    dostávame požadovanú odmocninu.

#### 3.4.1 Príklad: zostrojenie \( \sqrt{3} \)

!!! example "Príklad"

    Ak chceme zostrojiť \( \sqrt{3} \), urobíme presne to isté pre \( a = 3 \).

    Na jednej priamke položíme vedľa seba úsečku dĺžky \( 3 \) a úsečku dĺžky \( 1 \), teda celkovú dĺžku \( 4 \). Nad ňou opíšeme polkružnicu. V deliacej značke medzi \( 3 \) a \( 1 \) vztyčíme kolmú úsečku ku kružnici.

    Jej dĺžka bude \( \sqrt{3} \).

## 4. Množiny \( \mathbb{Q}(\sqrt{2}) \) a \( \mathbb{Q}(\sqrt{3}) \)

### 4.1 Čo znamená \( \mathbb{Q}(\sqrt{2}) \)

!!! abstract "Definícia"

    Množina

    \[
    \mathbb{Q}(\sqrt{2}) = \{ a + b\sqrt{2} ; a, b \in \mathbb{Q} \}
    \]

    znamená, že berieme všetky čísla, ktoré vieme napísať v tvare

    \[
    a + b\sqrt{2},
    \]

    kde \( a \) a \( b \) sú racionálne čísla.

!!! example "Príklad"

    Príklady prvkov tejto množiny sú napríklad:

    - \( 3 + 2\sqrt{2} \),
    - \( -5 + \frac{1}{3}\sqrt{2} \),
    - \( 7 \),
    - \( \sqrt{2} \),
    - \( 4 - \sqrt{2} \).

!!! note "Vysvetlenie príkladu"

    Číslo \( 7 \) tam patrí tiež, lebo sa dá napísať ako

    \[
    7 + 0 \cdot \sqrt{2}.
    \]

Prečo je táto množina dôležitá?

Je to prirodzené rozšírenie racionálnych čísel o novú odmocninu, konkrétne o \( \sqrt{2} \).

V tejto súvislosti sa táto množina nazýva kvadratické rozšírenie poľa \( \mathbb{Q} \).

### 4.2 Uzavretosť na súčin v \( \mathbb{Q}(\sqrt{2}) \)

Ak vezmeme dva prvky

\[
a_1 + b_1\sqrt{2},
\qquad
a + b\sqrt{2},
\]

ich súčin je

\[
(a_1 + b_1\sqrt{2})(a + b\sqrt{2}).
\]

!!! example "Príklad"

    Po roznásobení dostaneme

    \[
    a_1a + a_1b\sqrt{2} + ab_1\sqrt{2} + b_1b(\sqrt{2})^2.
    \]

    Keďže \( (\sqrt{2})^2 = 2 \), dostaneme

    \[
    a_1a + 2b_1b + \sqrt{2}(a_1b + ab_1).
    \]

!!! note "Vysvetlenie príkladu"

    To je opäť číslo tvaru

    \[
    \text{racionálne číslo} + \text{racionálne číslo} \cdot \sqrt{2}.
    \]

    Teda súčin ostáva v \( \mathbb{Q}(\sqrt{2}) \).

    To je veľmi dôležitá vlastnosť: množina sa pri násobení „nerozpadne“.

### 4.3 Inverz k prvku \( a + b\sqrt{2} \)

Ak \( a + b\sqrt{2} \neq 0 \), platí vzorec

\[
\frac{1}{a + b\sqrt{2}} = \frac{a - b\sqrt{2}}{a^2 - 2b^2}.
\]

!!! note "Vysvetlenie dôkazu"

    Tento vzorec vzniká vynásobením čitateľa aj menovateľa združeným výrazom

    \[
    a - b\sqrt{2}.
    \]

??? success "Dôkaz"

    Naozaj platí:

    \[
    (a + b\sqrt{2})(a - b\sqrt{2}) = a^2 - 2b^2.
    \]

    Tým zmizne odmocnina v menovateli.

    Po rozdelení dostaneme tvar

    \[
    \frac{a}{a^2 - 2b^2} - \sqrt{2}\,\frac{b}{a^2 - 2b^2},
    \]

    čo je opäť prvok z \( \mathbb{Q}(\sqrt{2}) \).

    Teda aj delenie nenulovým prvkom zostáva v tejto množine.

### 4.4 Podobne množina \( \mathbb{Q}(\sqrt{3}) \)

Úplne analogicky je definovaná množina

\[
\mathbb{Q}(\sqrt{3}) = \{ a + b\sqrt{3} ; a, b \in \mathbb{Q} \}.
\]

Aj tu platí:

- súčet takýchto prvkov je opäť toho istého tvaru,
- súčin takýchto prvkov je opäť toho istého tvaru,
- nenulový prvok má inverz.

!!! example "Príklad"

    Pri súčine dostaneme

    \[
    (a_1 + b_1\sqrt{3})(a + b\sqrt{3})
    = a_1a + 3b_1b + \sqrt{3}(a_1b + ab_1).
    \]

    Pri inverze dostaneme

    \[
    \frac{1}{a + b\sqrt{3}} = \frac{a - b\sqrt{3}}{a^2 - 3b^2}.
    \]

Aj tu sa používa združený výraz.

## 5. Patrí \( \sqrt{2} \) do \( \mathbb{Q}(\sqrt{3}) \)?

### 5.1 Otázka

Chceme zistiť, či sa dá číslo \( \sqrt{2} \) napísať v tvare

\[
a + b\sqrt{3},
\]

kde \( a, b \) sú racionálne čísla.

Inými slovami, pýtame sa:

\[
\sqrt{2} \in \mathbb{Q}(\sqrt{3}) \, ?
\]

### 5.2 Dôkaz, že nepatrí

!!! info "Tvrdenie"

    Platí

    \[
    \sqrt{2} \notin \mathbb{Q}(\sqrt{3}).
    \]

!!! note "Vysvetlenie dôkazu"

    Budeme dokazovať sporom. Predpokladáme, že \( \sqrt{2} \) sa dá zapísať v tvare \( a + b\sqrt{3} \) s racionálnymi koeficientmi. Po umocnení na druhú dostaneme rovnicu, z ktorej napokon vyjde, že \( \sqrt{3} \) je racionálne číslo. To je spor.

??? success "Dôkaz"

    Predpokladajme, že existujú racionálne čísla \( a, b \) také, že

    \[
    \sqrt{2} = a + b\sqrt{3}.
    \]

    Teraz obe strany umocníme na druhú:

    \[
    2 = (a + b\sqrt{3})^2.
    \]

    Po roznásobení dostaneme

    \[
    2 = a^2 + 2ab\sqrt{3} + 3b^2.
    \]

    Odtiaľ dostaneme

    \[
    2 - a^2 - 3b^2 = 2ab\sqrt{3}.
    \]

    Ak by bolo \( b = 0 \), dostali by sme \( \sqrt{2} = a \), teda \( \sqrt{2} \) by bolo racionálne číslo, čo nie je pravda. Preto musí byť \( b \neq 0 \).

    Rovnako musí platiť aj \( a \neq 0 \), inak by sme mali

    \[
    \sqrt{2} = b\sqrt{3},
    \]

    teda po vydelení \( b \) by bolo \( \sqrt{2/3} \) racionálne, čo opäť neplatí.

    Môžeme teda deliť číslom \( 2ab \) a dostaneme

    \[
    \sqrt{3} = \frac{2 - a^2 - 3b^2}{2ab}.
    \]

    Pravá strana je racionálne číslo, lebo \( a \) aj \( b \) sú racionálne.

    Teda by vyšlo, že \( \sqrt{3} \) je racionálne číslo.

    To je spor.

    Preto náš pôvodný predpoklad bol nesprávny.

    Teda

    \[
    \sqrt{2} \notin \mathbb{Q}(\sqrt{3}).
    \]

## 6. Zložené rozšírenie \( \mathbb{Q}(\sqrt{3})(\sqrt{2}) \)

### 6.1 Tvar prvkov

V tejto časti sa objavuje množina

\[
\mathbb{Q}(\sqrt{3})(\sqrt{2}) = \{ \alpha + \beta\sqrt{2} ; \alpha, \beta \in \mathbb{Q}(\sqrt{3}) \}.
\]

To znamená, že koeficienty pri \( 1 \) a pri \( \sqrt{2} \) už nemusia byť len racionálne čísla, ale môžu byť z \( \mathbb{Q}(\sqrt{3}) \).

Keďže

\[
\alpha = a + b\sqrt{3},
\qquad
\beta = a_1 + b_1\sqrt{3},
\]

po dosadení dostaneme

\[
\alpha + \beta\sqrt{2}
= a + b\sqrt{3} + a_1\sqrt{2} + b_1\sqrt{3}\sqrt{2}.
\]

!!! note "Vysvetlenie príkladu"

    Teda prvky tejto množiny majú tvar

    \[
    a + b\sqrt{3} + a_1\sqrt{2} + b_1\sqrt{6},
    \]

    kde všetky koeficienty sú racionálne.

    Toto je prirodzené ďalšie rozšírenie, v ktorom máme naraz k dispozícii aj \( \sqrt{2} \), aj \( \sqrt{3} \), a tým pádom aj \( \sqrt{6} \).

## 7. Všeobecná veta o poli \( F(\sqrt{d}) \)

### 7.1 Znenie vety

!!! info "Veta"

    Nech \( F \) je pole, ktoré je podmnožinou reálnych čísel. Nech \( d \in F \) a nech \( \sqrt{d} \notin F \).

    Potom množina

    \[
    F(\sqrt{d}) = \{ a + b\sqrt{d} ; a, b \in F \}
    \]

    je pole a každý jej prvok je koreňom nejakej kvadratickej rovnice

    \[
    x^2 + px + q = 0,
    \]

    kde \( p, q \in F \).

Toto je veľmi dôležitá veta. Hovorí, že ak do poľa pridáme jednu novú odmocninu, dostaneme nové pole, ale stále veľmi jednoduchého typu: každý jeho prvok spĺňa kvadratickú rovnicu s koeficientmi z pôvodného poľa.

### 7.2 Prečo je \( F(\sqrt{d}) \) pole

Treba ukázať, že sa v ňom dá:

- sčitovať,
- odčitovať,
- násobiť,
- deliť nenulovým prvkom.

#### 7.2.1 Súčet a rozdiel

Ak máme dva prvky

\[
a + b\sqrt{d},
\qquad
a_1 + b_1\sqrt{d},
\]

tak ich súčet je

\[
(a + a_1) + (b + b_1)\sqrt{d},
\]

čo je opäť prvok toho istého tvaru.

Rozdiel je

\[
(a - a_1) + (b - b_1)\sqrt{d},
\]

čiže tiež ostáva v tejto množine.

#### 7.2.2 Súčin

Súčin je

\[
(a + b\sqrt{d})(a_1 + b_1\sqrt{d}).
\]

!!! example "Príklad"

    Po roznásobení dostaneme

    \[
    aa_1 + ab_1\sqrt{d} + a_1b\sqrt{d} + bb_1d
    \]

    a teda

    \[
    (aa_1 + dbb_1) + (ab_1 + a_1b)\sqrt{d}.
    \]

Aj to je opäť prvok tvaru

\[
\text{niečo z } F + \text{niečo z } F \cdot \sqrt{d}.
\]

Teda súčin ostáva v \( F(\sqrt{d}) \).

#### 7.2.3 Inverz

Nech

\[
a + b\sqrt{d} \neq 0.
\]

Potom použijeme združený výraz:

\[
\frac{1}{a + b\sqrt{d}} = \frac{a - b\sqrt{d}}{a^2 - db^2}.
\]

Treba ešte vysvetliť, prečo menovateľ nemôže byť nulový.

!!! note "Vysvetlenie dôkazu"

    Ak by bolo \( a^2 - db^2 = 0 \) a zároveň \( b \neq 0 \), dostali by sme

    \[
    a^2 = db^2,
    \]

    teda

    \[
    \left(\frac{a}{b}\right)^2 = d.
    \]

    Odtiaľ by vyplývalo, že

    \[
    \sqrt{d} = \frac{a}{b} \in F,
    \]

    čo odporuje predpokladu.

??? success "Dôkaz"

    Ak by bolo

    \[
    a^2 - db^2 = 0,
    \]

    a \( b \neq 0 \), dostali by sme

    \[
    a^2 = db^2,
    \]

    teda

    \[
    \left(\frac{a}{b}\right)^2 = d,
    \]

    a preto

    \[
    \sqrt{d} = \frac{a}{b} \in F,
    \]

    čo odporuje predpokladu, že \( \sqrt{d} \notin F \).

    Ak \( b = 0 \), potom prvok je len \( a \), a keďže nie je nulový, jeho inverz je \( 1/a \), čo patrí do \( F \).

    Teda inverz nenulového prvku naozaj existuje.

    Preto \( F(\sqrt{d}) \) je pole.

### 7.3 Každý prvok je koreňom kvadratickej rovnice

Nech máme prvok

\[
a + b\sqrt{d}.
\]

Chceme ukázať, že je koreňom nejakej kvadratickej rovnice s koeficientmi z \( F \).

Zoberieme dva výrazy:

\[
x - (a + b\sqrt{d}),
\qquad
x - (a - b\sqrt{d}).
\]

Ich súčin je

\[
(x - (a + b\sqrt{d}))(x - (a - b\sqrt{d})).
\]

!!! note "Vysvetlenie dôkazu"

    Trik spočíva v tom, že po vynásobení sa členy s odmocninou vyrušia a ostane obyčajný kvadratický polynóm s koeficientmi z poľa \( F \).

??? success "Dôkaz"

    Po roznásobení dostaneme

    \[
    (x - a - b\sqrt{d})(x - a + b\sqrt{d})
    = (x - a)^2 - b^2d.
    \]

    Teda

    \[
    (x - a)^2 - b^2d = x^2 - 2ax + a^2 - b^2d.
    \]

    Preto číslo

    \[
    a + b\sqrt{d}
    \]

    je koreňom kvadratickej rovnice

    \[
    x^2 - 2ax + (a^2 - b^2d) = 0.
    \]

    Vidíme, že koeficienty tejto rovnice naozaj patria do \( F \).

## 8. Algebraický význam konštrukcií pravítkom a kružidlom

### 8.1 Aké typy krokov možno v konštrukcii robiť

V klasickej konštrukcii môžeme urobiť tri základné typy operácií:

- pravítkom zostrojiť priamku cez dva už známe body,
- kružidlom zostrojiť kružnicu so stredom v známom bode a s polomerom určeným známym bodom,
- nájsť priesečník vzniknutých útvarov.

Ten tretí bod sa rozpadá na tri možnosti:

- priesečník dvoch priamok,
- priesečník priamky a kružnice,
- priesečník dvoch kružníc.

Práve to je kľúčové.

### 8.2 Čo tomu zodpovedá v algebre

V tejto súvislosti sa ukazuje, že:

- v prvom prípade zodpovedá jeden krok sústave dvoch lineárnych rovníc,
- v ďalších dvoch prípadoch dostávame kvadratickú rovnicu.

To dáva veľký zmysel.

#### 8.2.1 Priesečník dvoch priamok

Priamka má lineárnu rovnicu. Ak máme dve priamky, riešime dve lineárne rovnice s dvoma neznámymi.

#### 8.2.2 Priesečník priamky a kružnice

Po dosadení parametrického vyjadrenia priamky do rovnice kružnice dostaneme kvadratickú rovnicu.

#### 8.2.3 Priesečník dvoch kružníc

Po odčítaní rovníc dostaneme lineárnu rovnicu, ale po spätnom dosadení opäť vyjde kvadratická rovnica.

!!! note "Vysvetlenie dôkazu"

    Preto sa v konštrukciách prirodzene objavujú odmocniny.

### 8.3 Čo to znamená pre zostrojiteľné čísla

Ak riešime kvadratickú rovnicu, pri jej riešení sa objaví odmocnina.

To znamená, že ak sme doteraz vedeli pracovať s nejakými číslami, po ďalšom kroku konštrukcie môžeme dostať nové číslo vzniknuté zo starých čísel pomocou:

- sčítania,
- odčítania,
- násobenia,
- delenia,
- odmocniny.

A práve to je algebraický obsah klasickej zostrojiteľnosti.

### 8.4 Prečo je 4. odmocnina z 2 zostrojiteľná

V tejto časti je uvedený príklad

\[
\sqrt[4]{2} = \sqrt{\sqrt{2}}.
\]

To znamená:

- najprv zostrojíme \( \sqrt{2} \),
- potom z neho ešte raz zostrojíme odmocninu.

!!! tip "Dôsledok"

    Keďže zostrojovanie odmocniny pravítkom a kružidlom vieme, aj \( \sqrt[4]{2} \) je zostrojiteľná.

### 8.5 Prečo sa 3. odmocnina z 2 zostrojiť nedá

V tejto časti sa objavuje záver:

\[
\sqrt[3]{2}
\]

sa zostrojiť nedá.

!!! note "Vysvetlenie dôkazu"

    Tento výsledok súvisí s historickou úlohou zdvojenia kocky.

    Ak by sme totiž vedeli zostrojiť hranu kocky s dvojnásobným objemom, museli by sme vedieť zostrojiť práve číslo

    \[
    \sqrt[3]{2}.
    \]

    Myšlienka je taká, že takéto číslo nevzniká len opakovaným používaním kvadratických krokov. Preto ho pravítkom a kružidlom nezostrojíme.

## Záverečné zhrnutie

V tejto časti sa ukázalo niekoľko veľmi dôležitých vecí.

Pri hľadaní priesečníka dvoch priamok riešime lineárne rovnice. Pri hľadaní priesečníka kružníc alebo priamky s kružnicou sa objavujú kvadratické rovnice. To ukazuje, že geometrické problémy sa dajú preložiť do jazyka algebry.

Geometricky vieme zostrojiť:

- súčet \( a + b \),
- súčin \( a \cdot b \),
- prevrátenú hodnotu \( 1/a \),
- odmocninu \( \sqrt{a} \).

To znamená, že klasická konštrukcia pravítkom a kružidlom je veľmi úzko spätá s algebraickými operáciami a s odmocňovaním.

Množiny \( \mathbb{Q}(\sqrt{2}) \) a \( \mathbb{Q}(\sqrt{3}) \) sú prirodzené rozšírenia poľa racionálnych čísel. Obsahujú všetky čísla tvaru \( a + b\sqrt{2} \) alebo \( a + b\sqrt{3} \), kde \( a \) a \( b \) sú racionálne. Sú uzavreté na základné operácie a tvoria polia.

Ukázalo sa, že \( \sqrt{2} \notin \mathbb{Q}(\sqrt{3}) \). To znamená, že nie každá odmocnina sa dá vyjadriť pomocou jednej inej odmocniny a racionálnych koeficientov.

Všeobecne, ak do poľa \( F \) pridáme novú odmocninu \( \sqrt{d} \), dostaneme pole \( F(\sqrt{d}) \). Každý jeho prvok je koreňom nejakej kvadratickej rovnice s koeficientmi z \( F \).

Najdôležitejšia myšlienka na koniec je táto:

pravítko a kružidlo nerobia „mystickú geometriu“, ale v skutočnosti vykonávajú veľmi presne opísateľné algebraické operácie.

## Zhrnutie viet a dôkazov

!!! info "Tvrdenie"

    Ak \( a + b\sqrt{2} \neq 0 \), platí vzorec

    \[
    \frac{1}{a + b\sqrt{2}} = \frac{a - b\sqrt{2}}{a^2 - 2b^2}.
    \]

??? success "Dôkaz"

    Naozaj platí:

    \[
    (a + b\sqrt{2})(a - b\sqrt{2}) = a^2 - 2b^2.
    \]

    Tým zmizne odmocnina v menovateli.

    Po rozdelení dostaneme tvar

    \[
    \frac{a}{a^2 - 2b^2} - \sqrt{2}\,\frac{b}{a^2 - 2b^2},
    \]

    čo je opäť prvok z \( \mathbb{Q}(\sqrt{2}) \).

    Teda aj delenie nenulovým prvkom zostáva v tejto množine.

---

!!! info "Tvrdenie"

    Platí

    \[
    \sqrt{2} \notin \mathbb{Q}(\sqrt{3}).
    \]

??? success "Dôkaz"

    Predpokladajme, že existujú racionálne čísla \( a, b \) také, že

    \[
    \sqrt{2} = a + b\sqrt{3}.
    \]

    Teraz obe strany umocníme na druhú:

    \[
    2 = (a + b\sqrt{3})^2.
    \]

    Po roznásobení dostaneme

    \[
    2 = a^2 + 2ab\sqrt{3} + 3b^2.
    \]

    Odtiaľ dostaneme

    \[
    2 - a^2 - 3b^2 = 2ab\sqrt{3}.
    \]

    Ak by bolo \( b = 0 \), dostali by sme \( \sqrt{2} = a \), teda \( \sqrt{2} \) by bolo racionálne číslo, čo nie je pravda. Preto musí byť \( b \neq 0 \).

    Rovnako musí platiť aj \( a \neq 0 \), inak by sme mali

    \[
    \sqrt{2} = b\sqrt{3},
    \]

    teda po vydelení \( b \) by bolo \( \sqrt{2/3} \) racionálne, čo opäť neplatí.

    Môžeme teda deliť číslom \( 2ab \) a dostaneme

    \[
    \sqrt{3} = \frac{2 - a^2 - 3b^2}{2ab}.
    \]

    Pravá strana je racionálne číslo, lebo \( a \) aj \( b \) sú racionálne.

    Teda by vyšlo, že \( \sqrt{3} \) je racionálne číslo.

    To je spor.

    Preto náš pôvodný predpoklad bol nesprávny.

    Teda

    \[
    \sqrt{2} \notin \mathbb{Q}(\sqrt{3}).
    \]

---

!!! info "Veta"

    Nech \( F \) je pole, ktoré je podmnožinou reálnych čísel. Nech \( d \in F \) a nech \( \sqrt{d} \notin F \).

    Potom množina

    \[
    F(\sqrt{d}) = \{ a + b\sqrt{d} ; a, b \in F \}
    \]

    je pole a každý jej prvok je koreňom nejakej kvadratickej rovnice

    \[
    x^2 + px + q = 0,
    \]

    kde \( p, q \in F \).

??? success "Dôkaz"

    Ak by bolo

    \[
    a^2 - db^2 = 0,
    \]

    a \( b \neq 0 \), dostali by sme

    \[
    a^2 = db^2,
    \]

    teda

    \[
    \left(\frac{a}{b}\right)^2 = d,
    \]

    a preto

    \[
    \sqrt{d} = \frac{a}{b} \in F,
    \]

    čo odporuje predpokladu, že \( \sqrt{d} \notin F \).

    Ak \( b = 0 \), potom prvok je len \( a \), a keďže nie je nulový, jeho inverz je \( 1/a \), čo patrí do \( F \).

    Teda inverz nenulového prvku naozaj existuje.

    Preto \( F(\sqrt{d}) \) je pole.

---

!!! info "Tvrdenie"
    Nech máme prvok

    \[
    a + b\sqrt{d}.
    \]

    Chceme ukázať, že je koreňom nejakej kvadratickej rovnice s koeficientmi z \( F \).

    Zoberieme dva výrazy:

    \[
    x - (a + b\sqrt{d}),
    \qquad
    x - (a - b\sqrt{d}).
    \]

    Ich súčin je

    \[
    (x - (a + b\sqrt{d}))(x - (a - b\sqrt{d})).
    \]

??? success "Dôkaz"

    Po roznásobení dostaneme

    \[
    (x - a - b\sqrt{d})(x - a + b\sqrt{d})
    = (x - a)^2 - b^2d.
    \]

    Teda

    \[
    (x - a)^2 - b^2d = x^2 - 2ax + a^2 - b^2d.
    \]

    Preto číslo

    \[
    a + b\sqrt{d}
    \]

    je koreňom kvadratickej rovnice

    \[
    x^2 - 2ax + (a^2 - b^2d) = 0.
    \]

    Vidíme, že koeficienty tejto rovnice naozaj patria do \( F \).

---

??? warning "Upozornenie"

    Číslo

    \[
    \sqrt[3]{2}
    \]

    nie je zostrojiteľné pravítkom a kružidlom. Súvisí to s tým, že klasické konštrukcie vedú k operáciám lineárneho a kvadratického typu, nie k všeobecnej konštrukcii tretích odmocnín.