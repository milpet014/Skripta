---
icon: fontawesome/solid/1
---

<button class="md-button md-button--primary" onclick="window.print()">
  Tlačiť
</button>

# Prvý týždeň

## Grupy a kongruencie

## Úvod do témy

V tejto časti sa preberajú dve veľmi dôležité myšlienky z algebry.

Prvou je grupa. To je pojem, ktorým sa matematicky zachytí situácia, keď máme nejakú množinu prvkov a na nej jednu operáciu, napríklad sčítanie alebo násobenie, ktorá sa správa „pekne“: dá sa spájať, existuje neutrálny prvok a každý prvok má svoj inverzný prvok. Vďaka tomu vieme veľmi rôzne situácie opisovať jednotným jazykom.

Druhou témou sú kongruencie, teda počítanie so zvyškami po delení. To je základ pre aritmetiku modulo \( m \), pre zvyškové triedy a aj pre známe kritériá deliteľnosti, napríklad pre deliteľnosť deviatimi.

Tieto dve témy spolu úzko súvisia. Pri zvyškoch po delení totiž vieme zostrojiť grupy, napríklad pri sčítaní modulo \( m \).

## 1. Grupa

### 1.1 Čo je grupa a prečo sa zavádza

V bežnej matematike poznáme operácie ako sčítanie a násobenie. Niekedy sa správajú veľmi dobre. Napríklad pri sčítaní celých čísel:

- súčet dvoch celých čísel je zasa celé číslo,
- sčítanie je asociatívne,
- existuje nula, ktorá nič nemení,
- ku každému číslu existuje opačné číslo.

Tento typ situácie sa neopisuje zvlášť pre každú množinu osobitne. Namiesto toho sa zavádza spoločný pojem: grupa.

Grupa teda nie je jedna konkrétna množina čísel. Je to všeobecný model, ktorý hovorí, aké vlastnosti má mať množina s operáciou, aby sa s ňou dalo pracovať podobne ako so sčítaním celých čísel alebo s násobením kladných racionálnych čísel.

### 1.2 Definícia grupy

!!! abstract "Definícia"

    Grupa je usporiadaná dvojica \( (G,\circ) \).

    To znamená:

    - \( G \) je množina,
    - \( \circ \) je operácia na tejto množine.

    **Zápis**

    \[
    \circ \colon G \times G \to G
    \]

    znamená, že operácia vezme dva prvky z množiny \( G \) a vytvorí opäť prvok z množiny \( G \).

    To je veľmi dôležité. Ak vezmeme dva prvky z \( G \), výsledok nesmie „utiecť“ mimo \( G \).

    Aby bola \( (G,\circ) \) grupou, musia platiť tri podmienky.

    1) **Asociativita**

    Pre všetky \( q_1, q_2, q_3 \in G \) platí

    \[
    q_1 \circ (q_2 \circ q_3) = (q_1 \circ q_2) \circ q_3.
    \]

    Toto znamená, že pri skladaní troch prvkov nezáleží na tom, ktoré dva spojíme skôr.

    2) **Existencia neutrálneho prvku**

    Existuje prvok \( e \in G \) taký, že pre každý \( q \in G \) platí

    \[
    q \circ e = e \circ q = q.
    \]

    Prvok \( e \) sa nazýva neutrálny prvok.

    Je to taký prvok, ktorý pri operácii nič nemení.

    Pri sčítaní je neutrálnym prvkom \( 0 \), lebo \( a+0=0+a=a \).

    Pri násobení je neutrálnym prvkom \( 1 \), lebo \( a \cdot 1 = 1 \cdot a = a \).

    3) **Existencia inverzného prvku**

    Pre každý \( q \in G \) existuje prvok \( q' \in G \) taký, že

    \[
    q \circ q' = q' \circ q = e.
    \]

    Prvok \( q' \) sa nazýva inverzný prvok k prvku \( q \).

    Je to prvok, ktorý daný prvok „zruší“ a výsledkom je neutrálny prvok.

    Pri sčítaní je inverzným prvkom k číslu \( a \) číslo \( -a \), lebo

    \[
    a + (-a) = 0.
    \]

    Pri násobení je inverzným prvkom k číslu \( q \neq 0 \) číslo \( \frac{1}{q} \), lebo

    \[
    q \cdot \left(\frac{1}{q}\right) = 1.
    \]

??? warning "Upozornenie"

    Je dôležité si všimnúť, čo asociativita neznamená. Nehovorí, že môžeme meniť poradie prvkov. Hovorí len to, že pri rovnakom poradí môžeme meniť zátvorky.

### 1.3 Príklady grúp

!!! example "Príklad"

    \( (\mathbb{Q}^{+}, \cdot) \)

    Tu \( \mathbb{Q}^{+} \) znamená množinu kladných racionálnych čísel a operáciou je násobenie.

    Treba skontrolovať tri podmienky grupy.

    **Asociativita:**  
    Násobenie racionálnych čísel je asociatívne.

    **Neutrálny prvok:**  
    Neutrálnym prvkom je \( 1 \), lebo pre každé kladné racionálne číslo \( q \) platí

    \[
    q \cdot 1 = 1 \cdot q = q.
    \]

    **Inverzný prvok:**  
    Ku každému \( q \in \mathbb{Q}^{+} \) existuje inverzný prvok \( \frac{1}{q} \), pričom

    \[
    q \cdot \frac{1}{q} = \frac{1}{q} \cdot q = 1.
    \]

!!! note "Vysvetlenie príkladu"

    Preto kladné racionálne čísla pri násobení tvoria grupu.

!!! example "Príklad"

    \( (\mathbb{Z}, +) \)

    Tu \( \mathbb{Z} \) je množina celých čísel a operáciou je sčítanie.

    **Asociativita:  **
    Sčítanie celých čísel je asociatívne.

    **Neutrálny prvok:  **
    Neutrálnym prvkom je \( 0 \), lebo

    \[
    a + 0 = 0 + a = a
    \]

    pre každé celé číslo \( a \).

    **Inverzný prvok:  **
    K číslu \( a \) je inverzným prvkom číslo \( -a \), lebo

    \[
    a + (-a) = (-a) + a = 0.
    \]

!!! note "Vysvetlenie príkladu"

    Preto celé čísla pri sčítaní tvoria grupu.

## 2. Grupa zvyškových tried

### 2.1 Myšlienka zvyškových tried

Pri delení číslom \( m \) nás často nezaujíma celé číslo samo osebe, ale len jeho zvyšok po delení \( m \).

Ak delíme napríklad číslom \( 5 \), možné zvyšky sú iba

\[
0,1,2,3,4.
\]

Pre všeobecné \( m \) zapisujeme

\[
\mathbb{Z}_m = \{0,1,\dots,m-1\}.
\]

Táto množina predstavuje všetky možné zvyšky po delení číslom \( m \).

### 2.2 Aditívna grupa zvyškových tried

Na množine \( \mathbb{Z}_m \) môžeme zaviesť sčítanie modulo \( m \). Zapisuje sa napríklad ako \( +_m \).

Pre \( a,b \in \mathbb{Z}_m \) definujeme \( a +_m b \) ako zvyšok po delení čísla \( a+b \) číslom \( m \).

Inými slovami: najprv sčítame bežne, potom výsledok zredukujeme na zvyšok po delení \( m \).

!!! example "Príklad"

    Pri \( m=5 \):

    \[
    2 +_5 3 = 0,
    \]

    pretože \( 2+3=5 \) a zvyšok po delení \( 5 \) číslom \( 5 \) je \( 0 \).

    Ďalej

    \[
    3 +_5 3 = 1,
    \]

    pretože \( 3+3=6 \) a zvyšok po delení \( 6 \) číslom \( 5 \) je \( 1 \).

!!! note "Vysvetlenie príkladu"

    Toto je presne význam počítania „modulo“.

### 2.3 Tabuľka sčítania modulo 6

Pri \( \mathbb{Z}_6 = \{0,1,2,3,4,5\} \) môžeme zostrojiť úplnú tabuľku sčítania modulo 6.

Takáto tabuľka ukazuje, čo dostaneme, keď vezmeme ľubovoľný riadok a ľubovoľný stĺpec a ich zvyšky sčítame modulo 6.

!!! example "Príklad"

    Napríklad:

    - v riadku 2 a stĺpci 4 je výsledok \( 0 \), lebo \( 2+4=6 \) a \( 6 \equiv 0 \pmod{6} \),
    - v riadku 5 a stĺpci 3 je výsledok \( 2 \), lebo \( 5+3=8 \) a \( 8 \equiv 2 \pmod{6} \).

!!! note "Vysvetlenie príkladu"

    Z takejto tabuľky je dobre vidieť, že pri sčítaní modulo 6 stále zostávame v množine \( \{0,1,2,3,4,5\} \).

Podobne bola zostrojená aj tabuľka pre \( (\mathbb{Z}_9,+) \).

### 2.4 Prečo je \( (\mathbb{Z}_m,+_m) \) grupa

Táto množina so sčítaním modulo \( m \) tvorí grupu.

Asociativita:  
Sčítanie je asociatívne a táto vlastnosť sa zachováva aj pri počítaní modulo \( m \).

Neutrálny prvok:  
Neutrálnym prvkom je \( 0 \), pretože

\[
a +_m 0 = 0 +_m a = a
\]

pre každý zvyšok \( a \).

Inverzný prvok:  
Ku každému zvyšku existuje opačný zvyšok, ktorý dá po sčítaní modulo \( m \) nulu.

!!! example "Príklad"

    Napríklad v \( \mathbb{Z}_6 \):

    - k \( 1 \) je inverzný prvok \( 5 \), lebo \( 1+5=6 \equiv 0 \pmod{6} \),
    - k \( 2 \) je inverzný prvok \( 4 \),
    - k \( 3 \) je inverzný prvok opäť \( 3 \), lebo \( 3+3=6 \equiv 0 \pmod{6} \).

### 2.5 Multiplikatívne príklady modulo 5 a modulo 7

V poznámkach sa objavujú aj tabuľky pre

\[
\mathbb{Z}_5^{\ast} = \{1,2,3,4\},
\]

\[
\mathbb{Z}_7^{\ast} = \{1,2,3,4,5,6\},
\]

kde operáciou je násobenie modulo 5, resp. modulo 7.

??? warning "Upozornenie"

    Tu je dôležité, že sa nepoužíva nula. Dôvod je ten, že pri násobení by nula nemohla mať inverzný prvok, lebo z rovnice

    \[
    0 \cdot x = 1
    \]

    sa nedá dostať žiadne riešenie.

!!! example "Príklad"

    Príklad v \( \mathbb{Z}_5^{\ast} \)

    Z tabuľky vidno napríklad:

    - \( 2 \cdot 3 = 6 \equiv 1 \pmod{5} \), teda \( 2^{-1}=3 \) a zároveň \( 3^{-1}=2 \),
    - \( 4 \cdot 4 = 16 \equiv 1 \pmod{5} \), teda \( 4^{-1}=4 \).

!!! example "Príklad"

    Príklad v \( \mathbb{Z}_7^{\ast} \)

    Podobne:

    - \( 2 \cdot 4 = 8 \equiv 1 \pmod{7} \), teda \( 2^{-1}=4 \),
    - \( 3 \cdot 5 = 15 \equiv 1 \pmod{7} \), teda \( 3^{-1}=5 \),
    - \( 6 \cdot 6 = 36 \equiv 1 \pmod{7} \), teda \( 6^{-1}=6 \).

!!! note "Vysvetlenie príkladu"

    Tieto príklady ukazujú, že aj pri zvyškoch po delení môžeme dostať grupy, nielen pri obyčajnom sčítaní a násobení čísel.

## 3. Základné vety o grupách

### 3.1 Veta: Neutrálny prvok je v grupe jediný

!!! info "Veta"

    V každej grupe existuje práve jeden neutrálny prvok.

To znamená, že nemôžu existovať dva rôzne neutrálne prvky.

??? success "Dôkaz"

    Predpokladajme, že \( e_1 \) a \( e_2 \) sú neutrálne prvky.

    Keďže \( e_2 \) je neutrálny prvok, pri operácii nič nemení. Preto

    \[
    e_1 \circ e_2 = e_1.
    \]

    Zároveň, keďže \( e_1 \) je tiež neutrálny prvok, tak

    \[
    e_1 \circ e_2 = e_2.
    \]

    Dostali sme teda dve rovnosti pre ten istý výraz:

    \[
    e_1 \circ e_2 = e_1
    \]

    a

    \[
    e_1 \circ e_2 = e_2.
    \]

    Z toho vyplýva

    \[
    e_1 = e_2.
    \]

    Teda neutrálny prvok je jediný.

### 3.2 Veta: Inverzný prvok je k danému prvku jediný

!!! info "Veta"

    Ku každému prvku grupy existuje jediný inverzný prvok.

To znamená: ak má prvok nejaký inverzný prvok, nemôže mať dva rôzne.

Označenie:  
Inverzný prvok k prvku \( a \) sa zvyčajne označuje

\[
a^{-1}.
\]

Pri sčítaní sa často píše skôr \( -a \), ale pri všeobecnej grupovej operácii sa používa označenie \( a^{-1} \).

??? success "Dôkaz"

    Nech \( q \in G \) a nech \( \bar{q}_1 \) a \( \bar{q}_2 \) sú dva inverzné prvky k \( q \).

    To znamená, že

    \[
    q \circ \bar{q}_1 = e
    \]

    a zároveň

    \[
    q \circ \bar{q}_2 = e.
    \]

    Odtiaľ dostaneme

    \[
    q \circ \bar{q}_1 = q \circ \bar{q}_2.
    \]

    Teraz zľava zoperujeme obidve strany prvkom \( \bar{q}_1 \). Dostaneme

    \[
    \bar{q}_1 \circ (q \circ \bar{q}_1) = \bar{q}_1 \circ (q \circ \bar{q}_2).
    \]

    Použijeme asociativitu:

    \[
    (\bar{q}_1 \circ q) \circ \bar{q}_1 = (\bar{q}_1 \circ q) \circ \bar{q}_2.
    \]

    Keďže \( \bar{q}_1 \) je inverzný prvok k \( q \), platí

    \[
    \bar{q}_1 \circ q = e.
    \]

    Preto dostaneme

    \[
    e \circ \bar{q}_1 = e \circ \bar{q}_2.
    \]

    A keďže \( e \) je neutrálny prvok, platí

    \[
    \bar{q}_1 = \bar{q}_2.
    \]

    Teda inverzný prvok je jediný.

## 4. Inverzný prvok súčinu

### 4.1 Inverzia dvoch prvkov

!!! info "Tvrdenie"

    Nech \( g_1,g_2 \in G \). Potom platí

    \[
    (g_1 \circ g_2)^{-1} = g_2^{-1} \circ g_1^{-1}.
    \]

!!! note "Vysvetlenie dôkazu"

    Toto je veľmi dôležitý vzorec. Hovorí, že keď chceme obrátiť súčin, musíme obrátiť poradie prvkov a každý prvok nahradiť jeho inverzným prvkom.

??? success "Dôkaz"

    Aby sme ukázali, že \( g_2^{-1} \circ g_1^{-1} \) je inverzný prvok k \( g_1 \circ g_2 \), musíme overiť, že po zložení z oboch strán dostaneme neutrálny prvok.

    Najprv sprava:

    \[
    (g_1 \circ g_2) \circ (g_2^{-1} \circ g_1^{-1})
    = g_1 \circ (g_2 \circ g_2^{-1}) \circ g_1^{-1}
    = g_1 \circ e \circ g_1^{-1}
    = g_1 \circ g_1^{-1}
    = e.
    \]

    Teraz zľava:

    \[
    (g_2^{-1} \circ g_1^{-1}) \circ (g_1 \circ g_2)
    = g_2^{-1} \circ (g_1^{-1} \circ g_1) \circ g_2
    = g_2^{-1} \circ e \circ g_2
    = g_2^{-1} \circ g_2
    = e.
    \]

    Keďže z oboch strán vyjde \( e \), naozaj platí

    \[
    (g_1 \circ g_2)^{-1} = g_2^{-1} \circ g_1^{-1}.
    \]

### 4.2 Inverzia troch prvkov

!!! info "Tvrdeine"

    Podobne platí:

    \[
    (g_1 \circ g_2 \circ g_3)^{-1} = g_3^{-1} \circ g_2^{-1} \circ g_1^{-1}.
    \]

Myšlienka je rovnaká: poradie sa obráti.

To možno ukázať dvoma spôsobmi.

#### Priamy spôsob

??? success "Dôkaz"

    Overí sa, že

    \[
    (g_1 \circ g_2 \circ g_3) \circ (g_3^{-1} \circ g_2^{-1} \circ g_1^{-1}) = e
    \]

    a tiež

    \[
    (g_3^{-1} \circ g_2^{-1} \circ g_1^{-1}) \circ (g_1 \circ g_2 \circ g_3) = e.
    \]

    Pri úprave sa vždy používa asociativita a dvojice tvaru

    \[
    g_i \circ g_i^{-1} = e
    \]

    alebo

    \[
    g_i^{-1} \circ g_i = e.
    \]

#### Druhý spôsob

??? success "Dôkaz"

    Môžeme sa na trojicu pozrieť ako na súčin dvoch častí:

    \[
    g_1 \circ g_2 \circ g_3 = g_1 \circ (g_2 \circ g_3).
    \]

    Potom podľa vzorca pre dva prvky:

    \[
    (g_1 \circ (g_2 \circ g_3))^{-1} = (g_2 \circ g_3)^{-1} \circ g_1^{-1}.
    \]

    A ešte raz použijeme vzorec na dvojicu \( g_2 \circ g_3 \):

    \[
    (g_2 \circ g_3)^{-1} = g_3^{-1} \circ g_2^{-1}.
    \]

    Teda

    \[
    (g_1 \circ g_2 \circ g_3)^{-1} = g_3^{-1} \circ g_2^{-1} \circ g_1^{-1}.
    \]

### 4.3 Inverzia štyroch a viacerých prvkov

Rovnaký vzor pokračuje ďalej:

\[
(g_1 \circ g_2 \circ g_3 \circ g_4)^{-1} = g_4^{-1} \circ g_3^{-1} \circ g_2^{-1} \circ g_1^{-1}.
\]

Pri piatich prvkoch dostaneme

\[
(g_1 \circ g_2 \circ g_3 \circ g_4 \circ g_5)^{-1} = g_5^{-1} \circ g_4^{-1} \circ g_3^{-1} \circ g_2^{-1} \circ g_1^{-1}.
\]

??? warning "Upozornenie"

    Najdôležitejšia vec na pochopenie je táto: pri inverzii súčinu sa poradie obráti.

    To je presne opačné správanie, než by si začiatočník možno tipol. Veľa ľudí by intuitívne chcelo napísať

    \[
    (g_1 \circ g_2)^{-1} = g_1^{-1} \circ g_2^{-1},
    \]

    ale to vo všeobecnosti neplatí. Správne je najprv obrátiť poradie.

## 5. Kongruencie

### 5.1 Čo znamená kongruencia

Nech \( m \in \mathbb{N} \) a \( a,b \in \mathbb{Z} \).

!!! abstract "Definícia"

    Píšeme

    \[
    a \equiv b \pmod{m}
    \]

    práve vtedy, keď čísla \( a \) a \( b \) majú pri delení číslom \( m \) rovnaký zvyšok.

Toto je základná myšlienka kongruencie.

Nejde o to, že čísla sú rovnaké ako obyčajné čísla. Ide o to, že sa správajú rovnako z pohľadu zvyškov po delení číslom \( m \).

!!! example "Príklad"

    \[
    7 \equiv 2 \pmod{5},
    \]

    pretože 7 aj 2 dávajú pri delení piatimi zvyšok 2.

    \[
    6 \equiv 1 \pmod{5},
    \]

    pretože 6 aj 1 dávajú zvyšok 1.

    \[
    29 \equiv 12 \pmod{17},
    \]

    pretože 29 aj 12 dávajú pri delení 17 zvyšok 12.

### 5.2 Prečo sú kongruencie užitočné

Kongruencie nám umožňujú nahrádzať čísla inými, jednoduchšími číslami, ktoré majú rovnaký zvyšok.

Napríklad namiesto 29 môžeme pri počítaní modulo 17 pracovať s číslom 12. Výsledok z pohľadu zvyšku bude ten istý.

To veľmi zjednodušuje výpočty.

## 6. Základná veta o kongruenciách

!!! info "Veta"

    Nech \( m \in \mathbb{N} \) a nech \( a_1,b_1,a_2,b_2 \in \mathbb{Z} \).

    Ak

    \[
    a_1 \equiv b_1 \pmod{m}
    \quad \text{a} \quad
    a_2 \equiv b_2 \pmod{m},
    \]

    potom platí:

    \[
    a_1 + a_2 \equiv b_1 + b_2 \pmod{m},
    \]

    \[
    a_1 a_2 \equiv b_1 b_2 \pmod{m}.
    \]

Táto veta hovorí, že kongruencie sa „znášajú“ so sčítaním aj s násobením.

Ak teda dve čísla môžeme nahradiť inými číslami s rovnakým zvyškom, môžeme to urobiť aj vo výrazoch so sčítaním a násobením.

To je jeden z najdôležitejších praktických dôvodov, prečo sa kongruencie zavádzajú.

### 6.2 Dôkaz pre sčítanie

??? success "Dôkaz"

    Z predpokladu

    \[
    a_1 \equiv b_1 \pmod{m}
    \]

    a

    \[
    a_2 \equiv b_2 \pmod{m}
    \]

    sa v dôkaze používa to, že \( m \) delí rozdiely

    \[
    a_1 - b_1
    \quad \text{a} \quad
    a_2 - b_2.
    \]

    Teraz tieto dva rozdiely sčítame:

    \[
    (a_1 - b_1) + (a_2 - b_2).
    \]

    Po úprave dostaneme

    \[
    (a_1 + a_2) - (b_1 + b_2).
    \]

    Teda

    \[
    (a_1 - b_1) + (a_2 - b_2) = (a_1 + a_2) - (b_1 + b_2).
    \]

    Keďže \( m \) delí prvý rozdiel a tiež druhý rozdiel, delí aj ich súčet. Preto

    \[
    m \mid \bigl((a_1 + a_2) - (b_1 + b_2)\bigr).
    \]

    To presne znamená

    \[
    a_1 + a_2 \equiv b_1 + b_2 \pmod{m}.
    \]

    Tým je prvá časť dokázaná.

### 6.3 Dôkaz pre násobenie

??? success "Dôkaz"

    Teraz chceme ukázať, že

    \[
    a_1 a_2 \equiv b_1 b_2 \pmod{m}.
    \]

    Začneme rozdielom oboch súčinov:

    \[
    a_1 a_2 - b_1 b_2.
    \]

    Tento rozdiel upravíme tak, aby sa v ňom objavili rozdiely \( a_1 - b_1 \) a \( a_2 - b_2 \), o ktorých vieme, že sú deliteľné číslom \( m \).

    Napíšeme:

    \[
    a_1 a_2 - b_1 b_2 = a_1 a_2 - b_1 a_2 + b_1 a_2 - b_1 b_2.
    \]

    Táto úprava je dovolená, pretože sme vlastne iba pripočítali a odpočítali ten istý člen \( b_1 a_2 \).

    Teraz prvé dva členy zoskupíme a posledné dva tiež:

    \[
    a_1 a_2 - b_1 a_2 + b_1 a_2 - b_1 b_2 = a_2(a_1 - b_1) + b_1(a_2 - b_2).
    \]

    A teraz príde hlavná myšlienka.

    Z predpokladu vieme, že

    \[
    m \mid (a_1 - b_1).
    \]

    Keď teda tento rozdiel vynásobíme číslom \( a_2 \), stále dostaneme číslo deliteľné \( m \). Teda

    \[
    m \mid a_2(a_1 - b_1).
    \]

    Rovnako z

    \[
    m \mid (a_2 - b_2)
    \]

    dostaneme

    \[
    m \mid b_1(a_2 - b_2).
    \]

    Ak \( m \) delí oba sčítance, delí aj ich súčet. Preto

    \[
    m \mid \bigl(a_2(a_1 - b_1) + b_1(a_2 - b_2)\bigr).
    \]

    Keďže tento výraz je rovný \( a_1 a_2 - b_1 b_2 \), dostaneme

    \[
    m \mid (a_1 a_2 - b_1 b_2).
    \]

    A to znamená

    \[
    a_1 a_2 \equiv b_1 b_2 \pmod{m}.
    \]

    Druhá časť vety je dokázaná.

## 7. Kongruencie a ciferný súčet pri delení deviatimi

### 7.1 Základná myšlienka

Použitie kongruencií pri delení deviatimi.

!!! note "Delenie deviatimi"

    Kľúčový fakt je:

    \[
    10 \equiv 1 \pmod{9}.
    \]

    Prečo? Lebo pri delení 10 deviatimi je zvyšok 1.

    Z toho okamžite vyplýva aj

    \[
    10^2 \equiv 1 \pmod{9}, \quad 10^3 \equiv 1 \pmod{9}, \quad \dots, \quad 10^n \equiv 1 \pmod{9}.
    \]

    To je dôvod, prečo pri delení deviatimi vzniká pravidlo s ciferným súčtom.

### 7.2 Rozklad čísla podľa desiatkovej sústavy

!!! note "Vysvetlenie príkladu"

    Každé prirodzené číslo môžeme zapísať v tvare

    \[
    a = a_0 + a_1 \cdot 10 + a_2 \cdot 10^2 + \cdots + a_n \cdot 10^n,
    \]

    kde \( a_0,a_1,\dots,a_n \) sú jeho cifry.

    Teraz použijeme fakt, že každá mocnina desiatky je modulo 9 kongruentná s 1:

    \[
    10^k \equiv 1 \pmod{9}.
    \]

    Preto

    \[
    a_1 \cdot 10 \equiv a_1 \pmod{9},
    \]

    \[
    a_2 \cdot 10^2 \equiv a_2 \pmod{9},
    \]

    a tak ďalej až po

    \[
    a_n \cdot 10^n \equiv a_n \pmod{9}.
    \]

    Keď tieto kongruencie sčítame, dostaneme

    \[
    a \equiv a_0 + a_1 + a_2 + \cdots + a_n \pmod{9}.
    \]

    To znamená:

    číslo \( a \) a jeho ciferný súčet majú po delení 9 rovnaký zvyšok.

### 7.3 Dôsledok

!!! tip "Dôsledok"

    Ak chceme zistiť zvyšok čísla po delení 9, nemusíme deliť celé obrovské číslo.

    Stačí:

    - spočítať cifry,
    - ak je výsledok ešte veľký, zasa spočítať jeho cifry,
    - pokračovať, kým nedostaneme malé číslo.

!!! example "Príklad"

    V poznámkach je uvedený príklad, kde sa po sčítaní cifier dostane číslo 58, potom 13, a teda zvyšok po delení 9 je 4.

!!! note "Vysvetlenie príkladu"

    To znamená, že aj pôvodné číslo má po delení 9 zvyšok 4.

    Nie je teda deliteľné deviatimi.

## Záverečné zhrnutie

Najdôležitejšie myšlienky z tejto témy sú tieto:

- Grupa je usporiadaná dvojica \( (G,\circ) \), kde operácia spĺňa tri základné vlastnosti:
  - asociativitu,
  - existenciu neutrálneho prvku,
  - existenciu inverzného prvku ku každému prvku.
- Príkladmi grúp sú:
  - \( (\mathbb{Q}^{+},\cdot) \),
  - \( (\mathbb{Z},+) \),
  - \( (\mathbb{Z}_m,+_m) \),
  - v konkrétnych prípadoch aj niektoré množiny nenulových zvyškov pri násobení modulo \( m \), napríklad pre modulo 5 a modulo 7.
- V každej grupe je neutrálny prvok jediný a ku každému prvku je inverzný prvok tiež jediný.
- Pri inverzii súčinu platí veľmi dôležité pravidlo:

\[
(g_1 \circ g_2 \circ \cdots \circ g_n)^{-1} = g_n^{-1} \circ \cdots \circ g_2^{-1} \circ g_1^{-1}.
\]

- Pri kongruenciách ide o rovnaký zvyšok po delení číslom \( m \). Ak dve čísla nahradíme kongruentnými číslami, môžeme takto pracovať aj pri sčítaní a násobení.
- Napokon, pri delení deviatimi platí, že číslo má ten istý zvyšok ako jeho ciferný súčet. Preto možno zvyšok modulo 9 určiť jednoducho zo súčtu cifier.

## Zhrnutie viet a dôkazov:

!!! info "Veta"

    V každej grupe existuje práve jeden neutrálny prvok.

??? success "Dôkaz"

    Predpokladajme, že \( e_1 \) a \( e_2 \) sú neutrálne prvky.

    Keďže \( e_2 \) je neutrálny prvok, pri operácii nič nemení. Preto

    \[
    e_1 \circ e_2 = e_1.
    \]

    Zároveň, keďže \( e_1 \) je tiež neutrálny prvok, tak

    \[
    e_1 \circ e_2 = e_2.
    \]

    Dostali sme teda dve rovnosti pre ten istý výraz:

    \[
    e_1 \circ e_2 = e_1
    \]

    a

    \[
    e_1 \circ e_2 = e_2.
    \]

    Z toho vyplýva

    \[
    e_1 = e_2.
    \]

    Teda neutrálny prvok je jediný.

---

!!! info "Veta"

    Ku každému prvku grupy existuje jediný inverzný prvok.

Pri sčítaní sa často píše skôr \( -a \), ale pri všeobecnej grupovej operácii sa používa označenie \( a^{-1} \).

??? success "Dôkaz"

    Nech \( q \in G \) a nech \( \bar{q}_1 \) a \( \bar{q}_2 \) sú dva inverzné prvky k \( q \).

    To znamená, že

    \[
    q \circ \bar{q}_1 = e
    \]

    a zároveň

    \[
    q \circ \bar{q}_2 = e.
    \]

    Odtiaľ dostaneme

    \[
    q \circ \bar{q}_1 = q \circ \bar{q}_2.
    \]

    Teraz zľava zoperujeme obidve strany prvkom \( \bar{q}_1 \). Dostaneme

    \[
    \bar{q}_1 \circ (q \circ \bar{q}_1) = \bar{q}_1 \circ (q \circ \bar{q}_2).
    \]

    Použijeme asociativitu:

    \[
    (\bar{q}_1 \circ q) \circ \bar{q}_1 = (\bar{q}_1 \circ q) \circ \bar{q}_2.
    \]

    Keďže \( \bar{q}_1 \) je inverzný prvok k \( q \), platí

    \[
    \bar{q}_1 \circ q = e.
    \]

    Preto dostaneme

    \[
    e \circ \bar{q}_1 = e \circ \bar{q}_2.
    \]

    A keďže \( e \) je neutrálny prvok, platí

    \[
    \bar{q}_1 = \bar{q}_2.
    \]

    Teda inverzný prvok je jediný.

---

!!! info "Veta"

    Nech \( m \in \mathbb{N} \) a nech \( a_1,b_1,a_2,b_2 \in \mathbb{Z} \).

    Ak

    \[
    a_1 \equiv b_1 \pmod{m}
    \quad \text{a} \quad
    a_2 \equiv b_2 \pmod{m},
    \]

    potom platí:

    \[
    a_1 + a_2 \equiv b_1 + b_2 \pmod{m},
    \]

    \[
    a_1 a_2 \equiv b_1 b_2 \pmod{m}.
    \]

**Dôkaz pre sčítanie**

??? success "Dôkaz"

    Z predpokladu

    \[
    a_1 \equiv b_1 \pmod{m}
    \]

    a

    \[
    a_2 \equiv b_2 \pmod{m}
    \]

    sa v dôkaze používa to, že \( m \) delí rozdiely

    \[
    a_1 - b_1
    \quad \text{a} \quad
    a_2 - b_2.
    \]

    Teraz tieto dva rozdiely sčítame:

    \[
    (a_1 - b_1) + (a_2 - b_2).
    \]

    Po úprave dostaneme

    \[
    (a_1 + a_2) - (b_1 + b_2).
    \]

    Teda

    \[
    (a_1 - b_1) + (a_2 - b_2) = (a_1 + a_2) - (b_1 + b_2).
    \]

    Keďže \( m \) delí prvý rozdiel a tiež druhý rozdiel, delí aj ich súčet. Preto

    \[
    m \mid \bigl((a_1 + a_2) - (b_1 + b_2)\bigr).
    \]

    To presne znamená

    \[
    a_1 + a_2 \equiv b_1 + b_2 \pmod{m}.
    \]

    Tým je prvá časť dokázaná.

**Dôkaz pre násobenie**

??? success "Dôkaz"

    Teraz chceme ukázať, že

    \[
    a_1 a_2 \equiv b_1 b_2 \pmod{m}.
    \]

    Začneme rozdielom oboch súčinov:

    \[
    a_1 a_2 - b_1 b_2.
    \]

    Tento rozdiel upravíme tak, aby sa v ňom objavili rozdiely \( a_1 - b_1 \) a \( a_2 - b_2 \), o ktorých vieme, že sú deliteľné číslom \( m \).

    Napíšeme:

    \[
    a_1 a_2 - b_1 b_2 = a_1 a_2 - b_1 a_2 + b_1 a_2 - b_1 b_2.
    \]

    Táto úprava je dovolená, pretože sme vlastne iba pripočítali a odpočítali ten istý člen \( b_1 a_2 \).

    Teraz prvé dva členy zoskupíme a posledné dva tiež:

    \[
    a_1 a_2 - b_1 a_2 + b_1 a_2 - b_1 b_2 = a_2(a_1 - b_1) + b_1(a_2 - b_2).
    \]

    A teraz príde hlavná myšlienka.

    Z predpokladu vieme, že

    \[
    m \mid (a_1 - b_1).
    \]

    Keď teda tento rozdiel vynásobíme číslom \( a_2 \), stále dostaneme číslo deliteľné \( m \). Teda

    \[
    m \mid a_2(a_1 - b_1).
    \]

    Rovnako z

    \[
    m \mid (a_2 - b_2)
    \]

    dostaneme

    \[
    m \mid b_1(a_2 - b_2).
    \]

    Ak \( m \) delí oba sčítance, delí aj ich súčet. Preto

    \[
    m \mid \bigl(a_2(a_1 - b_1) + b_1(a_2 - b_2)\bigr).
    \]

    Keďže tento výraz je rovný \( a_1 a_2 - b_1 b_2 \), dostaneme

    \[
    m \mid (a_1 a_2 - b_1 b_2).
    \]

    A to znamená

    \[
    a_1 a_2 \equiv b_1 b_2 \pmod{m}.
    \]

    Druhá časť vety je dokázaná.