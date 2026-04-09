---
icon: fontawesome/solid/3
---

<button class="md-button md-button--primary" onclick="window.print()">
  Tlačiť
</button>

# Tretí týždeň

## Permutácie, grupa permutácií, podgrupy a cyklické podgrupy

## Teória grúp a permutácií

## Úvod do témy

V tejto kapitole sa preberajú dve veľké oblasti:

- permutácie,
- podgrupy.

Na prvý pohľad to môžu vyzerať ako dve odlišné témy. V skutočnosti spolu veľmi úzko súvisia.

Permutácie sú dôležité preto, že opisujú všetky možné prestavenia prvkov. Napríklad ak máme prvky \( 1, 2, 3, 4 \), tak permutácia povie, kam sa každý z týchto prvkov presunie. To je základný a veľmi dôležitý príklad grupy.

Podgrupy sú dôležité preto, že keď už máme nejakú grupu, chceme vedieť, či sa v nej nachádzajú menšie časti, ktoré sa správajú rovnako dobre ako celá grupa. Teda či v nej existujú menšie množiny, ktoré sú samy grupami.

!!! note "Poznámka"
    Táto kapitola teda odpovedá na otázky:

    - Čo presne je permutácia?
    - Ako sa dve permutácie skladajú?
    - Prečo permutácie tvoria grupu?
    - Ako nájsť inverznú permutáciu?
    - Ako riešiť rovnice s permutáciami?
    - Čo je podgrupa?
    - Ako vzniká podgrupa z jedného prvku pomocou jeho mocnín?
    - Ako to vyzerá na konkrétnych príkladoch v grupách zvyškov modulo \( 11 \) a modulo \( 19 \)?

Budeme ísť veľmi pomaly a všetko rozoberieme od základov.

## 1. Permutácie

### 1.1 Intuitívna predstava

Predstavme si, že máme konečný zoznam prvkov

\[
1, 2, 3, \dots, n.
\]

Permutácia je spôsob, ako tieto prvky preusporiadať.

To znamená:

- každý pôvodný prvok dostane nové miesto,
- žiadny prvok sa nestratí,
- žiadny prvok sa neopakuje,
- každý prvok sa použije práve raz.

!!! note "Poznámka"
    Inými slovami: permutácia je len premiešanie poradia.

!!! example "Príklad"
    Ak napríklad z prvkov \( 1, 2, 3, 4 \) vznikne poradie \( 3, 2, 4, 1 \), tak to je permutácia.

### 1.2 Formálny význam permutácie

Formálne sa permutácia z \( n \) prvkov chápe ako bijektívne zobrazenie množiny

\[
\{1, 2, \dots, n\}
\]

do seba.

!!! note "Poznámka"
    Túto vetu si rozoberieme pomaly.

#### 1.2.1 Čo znamená zobrazenie

!!! abstract "Definícia"
    Zobrazenie je pravidlo, ktoré každému prvku priradí nejaký obraz.

!!! example "Príklad"
    Napríklad:

    - \( 1 \) ide na \( 3 \),
    - \( 2 \) ide na \( 2 \),
    - \( 3 \) ide na \( 4 \),
    - \( 4 \) ide na \( 1 \).

    To je zobrazenie.

#### 1.2.2 Čo znamená do seba

!!! note "Poznámka"
    To znamená, že ak vychádzame z množiny

    \[
    \{1, 2, 3, 4\},
    \]

    tak aj výsledky musia ležať v tej istej množine.

    Teda \( 1, 2, 3, 4 \) sa smú posielať iba na \( 1, 2, 3, 4 \).

#### 1.2.3 Čo znamená bijektívne

!!! abstract "Definícia"
    Slovo bijektívne znamená dve veci naraz:

    - injektívne: dva rôzne prvky nemôžu ísť na ten istý obraz,
    - surjektívne: každý prvok v cieľovej množine sa aspoň raz trafí.

!!! note "Poznámka"
    V konečnej množine to spolu znamená veľmi jednoducho toto:

    - každý cieľový prvok sa objaví presne raz.

    Čiže permutácia je naozaj len čisté preusporiadanie.

### 1.3 Dvojriadkový zápis permutácie

Permutácie sa zapisujú aj v dvojriadkovom tvare.

!!! example "Príklad"
    Permutácia

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    3 & 2 & 4 & 1
    \end{pmatrix}
    \]

    znamená:

    - \( 1 \) sa zobrazí na \( 3 \),
    - \( 2 \) sa zobrazí na \( 2 \),
    - \( 3 \) sa zobrazí na \( 4 \),
    - \( 4 \) sa zobrazí na \( 1 \).

!!! note "Poznámka"
    Horný riadok hovorí, z ktorých prvkov vychádzame.

    Dolný riadok hovorí, kam jednotlivé prvky idú.

    Teda vždy čítame po stĺpcoch:

    - v prvom stĺpci je \( 1 \) nad \( 3 \), teda \( 1 \) ide na \( 3 \),
    - v druhom stĺpci je \( 2 \) nad \( 2 \), teda \( 2 \) ide na \( 2 \),
    - v treťom stĺpci je \( 3 \) nad \( 4 \), teda \( 3 \) ide na \( 4 \),
    - vo štvrtom stĺpci je \( 4 \) nad \( 1 \), teda \( 4 \) ide na \( 1 \).

To je základné čítanie permutácie a treba si ho dobre osvojiť.

## 2. Skladanie permutácií

### 2.1 Čo znamená zložiť dve permutácie

Keď máme dve permutácie, môžeme ich vykonať po sebe.

To znamená:

- najprv prvky premieša prvá permutácia,
- potom výsledok premieša druhá permutácia.

Tomu sa hovorí skladanie permutácií.

!!! abstract "Definícia"
    V tejto kapitole používame dohodu

    \[
    (\pi_1 \circ \pi_2)(a) = \pi_2(\pi_1(a)).
    \]

!!! note "Poznámka"
    Tento zápis znamená:

    - najprv použijeme \( \pi_1 \) na prvok \( a \),
    - potom na výsledok použijeme \( \pi_2 \).

    Teda vo výraze \( \pi_1 \circ \pi_2 \) ide pôsobenie tak, že najprv ide \( \pi_1 \) a potom \( \pi_2 \).

??? warning "Dôležité"
    Toto nie je vždy konvencia v každej knihe, ale v tomto texte budeme používať práve túto.

### 2.2 Výpočet zloženia dvoch permutácií

Nech

\[
\pi_1 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 2 & 4 & 1
\end{pmatrix}
\]

a

\[
\pi_2 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{pmatrix}.
\]

Chceme vypočítať

\[
\pi_1 \circ \pi_2.
\]

Podľa dohodnutej konvencie platí:

\[
(\pi_1 \circ \pi_2)(a) = \pi_2(\pi_1(a)).
\]

To znamená: najprv \( \pi_1 \), potom \( \pi_2 \).

??? question "Postup"
    Poďme pomaly po jednotlivých prvkoch.

    **Obraz prvku \( 1 \)**

    Najprv sa pozrieme na \( \pi_1 \):

    \[
    \pi_1(1) = 3.
    \]

    Teraz vezmeme výsledok \( 3 \) a pozrieme sa na \( \pi_2 \):

    \[
    \pi_2(3) = 1.
    \]

    Teda

    \[
    (\pi_1 \circ \pi_2)(1) = 1.
    \]

    **Obraz prvku \( 2 \)**

    Najprv:

    \[
    \pi_1(2) = 2.
    \]

    Potom:

    \[
    \pi_2(2) = 2.
    \]

    Teda

    \[
    (\pi_1 \circ \pi_2)(2) = 2.
    \]

    **Obraz prvku \( 3 \)**

    Najprv:

    \[
    \pi_1(3) = 4.
    \]

    Potom:

    \[
    \pi_2(4) = 4.
    \]

    Teda

    \[
    (\pi_1 \circ \pi_2)(3) = 4.
    \]

    **Obraz prvku \( 4 \)**

    Najprv:

    \[
    \pi_1(4) = 1.
    \]

    Potom:

    \[
    \pi_2(1) = 3.
    \]

    Teda

    \[
    (\pi_1 \circ \pi_2)(4) = 3.
    \]

!!! example "Príklad"
    Teraz už vieme, kam ide každý prvok:

    - \( 1 \) ide na \( 1 \),
    - \( 2 \) ide na \( 2 \),
    - \( 3 \) ide na \( 4 \),
    - \( 4 \) ide na \( 3 \).

    Preto

    \[
    \pi_1 \circ \pi_2 =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    1 & 2 & 4 & 3
    \end{pmatrix}.
    \]

    Toto je správny výsledok.

### 2.3 Prečo pri skladaní záleží na poradí

Pri číslach často platí, že poradie nevadí. Napríklad

\[
2 \cdot 5 = 5 \cdot 2.
\]

Pri permutáciách to spravidla neplatí.

!!! info "Tvrdenie"
    To znamená, že

    \[
    \pi_1 \circ \pi_2
    \]

    nemusí byť to isté ako

    \[
    \pi_2 \circ \pi_1.
    \]

!!! note "Poznámka"
    To je veľmi dôležitá vlastnosť. Hovoríme, že skladanie permutácií vo všeobecnosti nie je komutatívne.

### 2.4 Príklad, že skladanie nie je komutatívne

Nech

\[
\pi_1 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{pmatrix}
\]

a

\[
\pi_2 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 2 & 4 & 1
\end{pmatrix}.
\]

Najprv vypočítame

\[
\pi_1 \circ \pi_2.
\]

Podľa našej konvencie to znamená

\[
(\pi_1 \circ \pi_2)(a) = \pi_2(\pi_1(a)).
\]

??? question "Postup"
    **Obraz \( 1 \)**

    \[
    \pi_1(1) = 3, \qquad \pi_2(3) = 4.
    \]

    Teda \( 1 \) ide na \( 4 \).

    **Obraz \( 2 \)**

    \[
    \pi_1(2) = 2, \qquad \pi_2(2) = 2.
    \]

    Teda \( 2 \) ide na \( 2 \).

    **Obraz \( 3 \)**

    \[
    \pi_1(3) = 1, \qquad \pi_2(1) = 3.
    \]

    Teda \( 3 \) ide na \( 3 \).

    **Obraz \( 4 \)**

    \[
    \pi_1(4) = 4, \qquad \pi_2(4) = 1.
    \]

    Teda \( 4 \) ide na \( 1 \).

!!! example "Príklad"
    Preto

    \[
    \pi_1 \circ \pi_2 =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    4 & 2 & 3 & 1
    \end{pmatrix}.
    \]

Teraz vypočítame opačné poradie:

\[
\pi_2 \circ \pi_1.
\]

To znamená

\[
(\pi_2 \circ \pi_1)(a) = \pi_1(\pi_2(a)).
\]

??? question "Postup"
    **Obraz \( 1 \)**

    \[
    \pi_2(1) = 3, \qquad \pi_1(3) = 1.
    \]

    Teda \( 1 \) ide na \( 1 \).

    **Obraz \( 2 \)**

    \[
    \pi_2(2) = 2, \qquad \pi_1(2) = 2.
    \]

    Teda \( 2 \) ide na \( 2 \).

    **Obraz \( 3 \)**

    \[
    \pi_2(3) = 4, \qquad \pi_1(4) = 4.
    \]

    Teda \( 3 \) ide na \( 4 \).

    **Obraz \( 4 \)**

    \[
    \pi_2(4) = 1, \qquad \pi_1(1) = 3.
    \]

    Teda \( 4 \) ide na \( 3 \).

!!! example "Príklad"
    Preto

    \[
    \pi_2 \circ \pi_1 =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    1 & 2 & 4 & 3
    \end{pmatrix}.
    \]

!!! note "Poznámka"
    Vidíme, že

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    4 & 2 & 3 & 1
    \end{pmatrix}
    \neq
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    1 & 2 & 4 & 3
    \end{pmatrix}.
    \]

    Teda naozaj platí, že skladanie permutácií nie je komutatívne.

## 3. Identická permutácia

### 3.1 Čo je identická permutácia

!!! abstract "Definícia"
    Identická permutácia je taká permutácia, ktorá nič nemení.

    Zapisuje sa ako

    \[
    \begin{pmatrix}
    1 & 2 & \dots & n \\
    1 & 2 & \dots & n
    \end{pmatrix}
    \]

    a označuje sa

    \[
    \operatorname{id}_n.
    \]

!!! example "Príklad"
    Pri \( n = 4 \) máme

    \[
    \operatorname{id}_4 =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    1 & 2 & 3 & 4
    \end{pmatrix}.
    \]

!!! note "Poznámka"
    Táto permutácia má vlastnosť

    \[
    \operatorname{id}_n(a) = a
    \]

    pre každý prvok \( a \).

    Teda keď na prvok pôsobí identická permutácia, nič sa nestane.

### 3.2 Prečo je identická permutácia dôležitá

!!! note "Poznámka"
    V grupe hrá úlohu neutrálneho prvku.

    To znamená, že keď ju zložíme s ľubovoľnou permutáciou, výsledok sa nezmení.

    Je to úplne podobné ako číslo \( 0 \) pri sčítaní alebo číslo \( 1 \) pri násobení.

## 4. Grupa všetkých permutácií

### 4.1 Označenie \( S_n \)

!!! abstract "Definícia"
    Množinu všetkých permutácií z \( n \) prvkov označujeme

    \[
    S_n.
    \]

!!! note "Poznámka"
    To je veľmi dôležitý objekt v algebre.

    Prvky tejto množiny sú všetky možné bijektívne zobrazenia množiny \( \{1, 2, \dots, n\} \) do seba.

    Operáciou je skladanie permutácií.

### 4.2 Prečo je \( S_n \) grupou

Aby bola nejaká množina s operáciou grupou, musia platiť určité podmienky.

!!! note "Poznámka"
    V tejto kapitole sa zdôrazňujú tieto:

    - asociativita,
    - existencia neutrálneho prvku,
    - existencia inverzného prvku ku každému prvku.

Pri \( S_n \) to platí:

- skladanie permutácií je asociatívne,
- identická permutácia je neutrálny prvok,
- každá permutácia má inverznú permutáciu.

!!! info "Tvrdenie"
    Preto \( (S_n, \circ) \) je grupa.

### 4.3 Asociativita v \( S_n \)

!!! info "Veta"
    Pre všetky permutácie \( \pi_1, \pi_2, \pi_3 \) z \( S_n \) platí

    \[
    (\pi_1 \circ \pi_2) \circ \pi_3 = \pi_1 \circ (\pi_2 \circ \pi_3).
    \]

!!! note "Prečo to platí"
    Ak skladáme tri permutácie po sebe, je jedno, ktoré dve si najprv zoskupíme do zátvorky. Výsledný účinok na prvky bude rovnaký.

    Pozor: nemení sa poradie permutácií. Mení sa len rozloženie zátvoriek.

??? success "Dôkaz"
    Chceme ukázať, že obe strany robia s každým prvkom to isté.

    Vezmime ľubovoľný prvok \( a \).

    Pozrime sa na ľavú stranu:

    \[
    ((\pi_1 \circ \pi_2) \circ \pi_3)(a).
    \]

    Podľa definície skladania to znamená, že najprv pôsobí \( \pi_1 \circ \pi_2 \) a potom \( \pi_3 \). Teda

    \[
    ((\pi_1 \circ \pi_2) \circ \pi_3)(a) = \pi_3((\pi_1 \circ \pi_2)(a)).
    \]

    Teraz ešte rozbalíme výraz \( (\pi_1 \circ \pi_2)(a) \). Opäť podľa definície skladania platí

    \[
    (\pi_1 \circ \pi_2)(a) = \pi_2(\pi_1(a)).
    \]

    Preto

    \[
    ((\pi_1 \circ \pi_2) \circ \pi_3)(a) = \pi_3(\pi_2(\pi_1(a))).
    \]

    Teraz pravá strana:

    \[
    (\pi_1 \circ (\pi_2 \circ \pi_3))(a).
    \]

    Podľa definície skladania to znamená: najprv pôsobí \( \pi_1 \), potom \( \pi_2 \circ \pi_3 \). Teda

    \[
    (\pi_1 \circ (\pi_2 \circ \pi_3))(a) = (\pi_2 \circ \pi_3)(\pi_1(a)).
    \]

    Teraz rozbalíme výraz \( (\pi_2 \circ \pi_3)(\pi_1(a)) \). To znamená: najprv \( \pi_2 \), potom \( \pi_3 \), aplikované na \( \pi_1(a) \). Dostaneme

    \[
    (\pi_2 \circ \pi_3)(\pi_1(a)) = \pi_3(\pi_2(\pi_1(a))).
    \]

    Teda aj pravá strana je

    \[
    \pi_3(\pi_2(\pi_1(a))).
    \]

    Obe strany teda dávajú na ľubovoľnom prvku \( a \) rovnaký výsledok.

    Preto

    \[
    (\pi_1 \circ \pi_2) \circ \pi_3 = \pi_1 \circ (\pi_2 \circ \pi_3).
    \]

    Dôkaz je hotový.

## 5. Inverzná permutácia

### 5.1 Intuitívna predstava

Ak nejaká permutácia prvky premieša, inverzná permutácia musí toto premiešanie odmotávať.

!!! note "Poznámka"
    Teda ak \( \pi \) pošle prvok niekam, \( \pi^{-1} \) ho musí dostať späť.

    Je to úplne podobná myšlienka ako pri číslach:

    - ak k niečomu pripočítame \( 5 \), späť sa dostaneme odčítaním \( 5 \),
    - ak niečo vynásobíme \( 3 \), späť sa dostaneme delením \( 3 \),
    - ak niečo premiešame permutáciou \( \pi \), späť sa dostaneme permutáciou \( \pi^{-1} \).

### 5.2 Definícia inverznej permutácie

!!! abstract "Definícia"
    Inverzná permutácia k \( \pi \) je taká permutácia \( \pi^{-1} \), že platí

    \[
    \pi \circ \pi^{-1} = \operatorname{id}_n
    \]

    a zároveň

    \[
    \pi^{-1} \circ \pi = \operatorname{id}_n.
    \]

!!! note "Poznámka"
    To znamená, že zloženie permutácie a jej inverzu dá identitu.

### 5.3 Ako nájsť inverznú permutáciu v dvojriadkovom zápise

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{pmatrix}.
\]

To znamená:

- \( 1 \) ide na \( 3 \),
- \( 2 \) ide na \( 2 \),
- \( 3 \) ide na \( 1 \),
- \( 4 \) ide na \( 4 \).

Chceme nájsť \( \pi^{-1} \). To znamená, že chceme vedieť:

- čo sa musí poslať na \( 1 \),
- čo sa musí poslať na \( 2 \),
- čo sa musí poslať na \( 3 \),
- čo sa musí poslať na \( 4 \).

??? question "Postup"
    Najjednoduchší mechanický postup je:

    - vymeniť riadky,
    - potom stĺpce usporiadať podľa horného riadku.

    Začneme:

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    3 & 2 & 1 & 4
    \end{pmatrix}.
    \]

    Po výmene riadkov dostaneme

    \[
    \begin{pmatrix}
    3 & 2 & 1 & 4 \\
    1 & 2 & 3 & 4
    \end{pmatrix}.
    \]

    Teraz horný riadok nie je usporiadaný ako \( 1, 2, 3, 4 \). Preto usporiadame stĺpce podľa horného riadku:

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    3 & 2 & 1 & 4
    \end{pmatrix}.
    \]

!!! example "Príklad"
    Vyšlo teda

    \[
    \pi^{-1} =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    3 & 2 & 1 & 4
    \end{pmatrix}.
    \]

    V tomto konkrétnom prípade je permutácia sama sebe inverzná.

### 5.4 Kontrola, že to naozaj funguje

Chceme overiť, že

\[
\pi \circ \pi = \operatorname{id}_4.
\]

Teda

\[
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{pmatrix}
\circ
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 2 & 1 & 4
\end{pmatrix}
=
\begin{pmatrix}
1 & 2 & 3 & 4 \\
1 & 2 & 3 & 4
\end{pmatrix}.
\]

??? question "Postup"
    Poďme pomaly:

    **Obraz \( 1 \)**

    Prvá permutácia pošle \( 1 \) na \( 3 \).

    Druhá permutácia pošle \( 3 \) na \( 1 \).

    Teda \( 1 \) ide na \( 1 \).

    **Obraz \( 2 \)**

    \( 2 \) ide najprv na \( 2 \) a potom zasa na \( 2 \).

    Teda \( 2 \) ide na \( 2 \).

    **Obraz \( 3 \)**

    \( 3 \) ide najprv na \( 1 \) a potom \( 1 \) ide na \( 3 \).

    Teda \( 3 \) ide na \( 3 \).

    **Obraz \( 4 \)**

    \( 4 \) ide najprv na \( 4 \) a potom zasa na \( 4 \).

    Teda \( 4 \) ide na \( 4 \).

!!! note "Vysvetlenie príkladu"
    Preto výsledok je skutočne identická permutácia.

### 5.5 Ďalší príklad

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 \\
4 & 3 & 2 & 1 & 5 & 6
\end{pmatrix}.
\]

??? question "Postup"
    Najprv vymeníme riadky:

    \[
    \begin{pmatrix}
    4 & 3 & 2 & 1 & 5 & 6 \\
    1 & 2 & 3 & 4 & 5 & 6
    \end{pmatrix}.
    \]

    Potom usporiadame stĺpce podľa horného riadku:

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 & 5 & 6 \\
    4 & 3 & 2 & 1 & 5 & 6
    \end{pmatrix}.
    \]

!!! example "Príklad"
    Teda aj tu

    \[
    \pi^{-1} = \pi.
    \]

!!! note "Vysvetlenie príkladu"
    Takéto permutácie sa niekedy správajú ako preklopenie, ktoré po dvoch použitiach vráti všetko na pôvodné miesto.

## 6. Počet permutácií

### 6.1 Prečo je počet \( n! \)

Ak chceme vytvoriť permutáciu z \( n \) prvkov, vlastne rozhodujeme, v akom poradí budú prvky usporiadané.

!!! note "Vysvetlenie"
    Pre prvé miesto máme \( n \) možností.

    Keď už je prvé miesto obsadené, na druhé miesto zostáva \( n - 1 \) možností.

    Na tretie miesto zostáva \( n - 2 \) možností.

    Takto pokračujeme až po posledné miesto.

    Celkový počet možností je preto

    \[
    n \cdot (n - 1) \cdot (n - 2) \cdots 2 \cdot 1 = n!.
    \]

!!! info "Tvrdenie"
    Preto počet permutácií z \( n \) prvkov je

    \[
    n!.
    \]

### 6.2 Malé príklady

!!! example "Príklad"
    - z \( 2 \) prvkov sú \( 2! = 2 \) permutácie,
    - z \( 3 \) prvkov sú \( 3! = 6 \) permutácie,
    - zo \( 4 \) prvkov sú \( 4! = 24 \) permutácie.

??? warning "Dôležité"
    Tento počet rastie veľmi rýchlo. Preto sa hovorí, že vzniká kombinatorická explózia.

## 7. Rovnice s permutáciami

### 7.1 Základná myšlienka

Pri obyčajných číslach riešime napríklad rovnicu

\[
ax = b
\]

tak, že ak \( a \) nie je nula, vydelíme a dostaneme

\[
x = \frac{b}{a}.
\]

!!! note "Poznámka"
    Pri permutáciách sa klasické delenie nepoužíva. Namiesto toho používame inverznú permutáciu.

    To je presne tá istá myšlienka ako v grupách všeobecne: delenie nahrádza násobenie inverzným prvkom.

### 7.2 Rovnica tvaru \( \Pi \circ \Pi_1 = \Pi_2 \)

Chceme nájsť \( \Pi \) tak, aby platilo

\[
\Pi \circ \Pi_1 = \Pi_2.
\]

??? question "Postup"
    Chceme odstrániť \( \Pi_1 \) z pravej strany výrazu \( \Pi \circ \Pi_1 \). Keďže pri permutáciách skladáme, odstránime ju pomocou jej inverzu.

    Zložme obidve strany sprava s \( \Pi_1^{-1} \):

    \[
    (\Pi \circ \Pi_1) \circ \Pi_1^{-1} = \Pi_2 \circ \Pi_1^{-1}.
    \]

    Použijeme asociativitu:

    \[
    \Pi \circ (\Pi_1 \circ \Pi_1^{-1}) = \Pi_2 \circ \Pi_1^{-1}.
    \]

    Keďže

    \[
    \Pi_1 \circ \Pi_1^{-1} = \operatorname{id},
    \]

    dostaneme

    \[
    \Pi \circ \operatorname{id} = \Pi_2 \circ \Pi_1^{-1}.
    \]

    A keďže identita nič nemení,

    \[
    \Pi = \Pi_2 \circ \Pi_1^{-1}.
    \]

!!! info "Tvrdenie"
    To je hľadaný vzorec:

    \[
    \Pi = \Pi_2 \circ \Pi_1^{-1}.
    \]

### 7.3 Extra pomalý príklad

Nájdime \( \Pi \) z rovnice

\[
\Pi \circ
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 4 & 2 & 1
\end{pmatrix}
=
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 2 & 1 & 3
\end{pmatrix}.
\]

Najprv označme

\[
\Pi_1 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 4 & 2 & 1
\end{pmatrix},
\qquad
\Pi_2 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 2 & 1 & 3
\end{pmatrix}.
\]

Podľa vzorca platí

\[
\Pi = \Pi_2 \circ \Pi_1^{-1}.
\]

#### 7.3.1 Krok 1: nájdeme \( \Pi_1^{-1} \)

Máme

\[
\Pi_1 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 4 & 2 & 1
\end{pmatrix}.
\]

??? question "Postup"
    Vymeníme riadky:

    \[
    \begin{pmatrix}
    3 & 4 & 2 & 1 \\
    1 & 2 & 3 & 4
    \end{pmatrix}.
    \]

    Teraz usporiadame stĺpce podľa horného riadku \( 1, 2, 3, 4 \):

    - stĺpec s horným \( 1 \) je \( \binom{1}{4} \),
    - stĺpec s horným \( 2 \) je \( \binom{2}{3} \),
    - stĺpec s horným \( 3 \) je \( \binom{3}{1} \),
    - stĺpec s horným \( 4 \) je \( \binom{4}{2} \).

!!! example "Príklad"
    Teda

    \[
    \Pi_1^{-1} =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    4 & 3 & 1 & 2
    \end{pmatrix}.
    \]

#### 7.3.2 Krok 2: vypočítame \( \Pi = \Pi_2 \circ \Pi_1^{-1} \)

Teda

\[
\Pi =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 2 & 1 & 3
\end{pmatrix}
\circ
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 3 & 1 & 2
\end{pmatrix}.
\]

Podľa našej konvencie najprv pôsobí prvá z týchto dvoch permutácií a potom druhá.

??? question "Postup"
    **Obraz \( 1 \)**

    Najprv \( \Pi_2(1) = 4 \).

    Potom \( \Pi_1^{-1}(4) = 2 \).

    Teda \( 1 \) ide na \( 2 \).

    **Obraz \( 2 \)**

    Najprv \( \Pi_2(2) = 2 \).

    Potom \( \Pi_1^{-1}(2) = 3 \).

    Teda \( 2 \) ide na \( 3 \).

    **Obraz \( 3 \)**

    Najprv \( \Pi_2(3) = 1 \).

    Potom \( \Pi_1^{-1}(1) = 4 \).

    Teda \( 3 \) ide na \( 4 \).

    **Obraz \( 4 \)**

    Najprv \( \Pi_2(4) = 3 \).

    Potom \( \Pi_1^{-1}(3) = 1 \).

    Teda \( 4 \) ide na \( 1 \).

!!! example "Príklad"
    Preto

    \[
    \Pi =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    2 & 3 & 4 & 1
    \end{pmatrix}.
    \]

#### 7.3.3 Kontrola

!!! note "Vysvetlenie príkladu"
    Teraz overíme, že

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    2 & 3 & 4 & 1
    \end{pmatrix}
    \circ
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    3 & 4 & 2 & 1
    \end{pmatrix}
    =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    4 & 2 & 1 & 3
    \end{pmatrix}.
    \]

    A naozaj to vyjde.

### 7.4 Rovnica tvaru \( \Pi_1 \circ \Pi = \Pi_2 \)

Teraz hľadáme \( \Pi \) v rovnici

\[
\Pi_1 \circ \Pi = \Pi_2.
\]

Tu sa neznáma nachádza napravo. Preto musíme odstrániť \( \Pi_1 \) zľava.

??? question "Postup"
    Zložíme obidve strany zľava s \( \Pi_1^{-1} \):

    \[
    \Pi_1^{-1} \circ (\Pi_1 \circ \Pi) = \Pi_1^{-1} \circ \Pi_2.
    \]

    Použijeme asociativitu:

    \[
    (\Pi_1^{-1} \circ \Pi_1) \circ \Pi = \Pi_1^{-1} \circ \Pi_2.
    \]

    Keďže

    \[
    \Pi_1^{-1} \circ \Pi_1 = \operatorname{id},
    \]

    dostaneme

    \[
    \operatorname{id} \circ \Pi = \Pi_1^{-1} \circ \Pi_2,
    \]

    čiže

    \[
    \Pi = \Pi_1^{-1} \circ \Pi_2.
    \]

!!! info "Tvrdenie"
    To je vzorec pre tento typ rovnice:

    \[
    \Pi = \Pi_1^{-1} \circ \Pi_2.
    \]

### 7.5 Extra pomalý príklad

Riešme rovnicu

\[
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 4 & 2 & 1
\end{pmatrix}
\circ \Pi
=
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 2 & 1 & 3
\end{pmatrix}.
\]

Opäť označíme

\[
\Pi_1 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 4 & 2 & 1
\end{pmatrix},
\qquad
\Pi_2 =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 2 & 1 & 3
\end{pmatrix}.
\]

Vieme, že

\[
\Pi_1^{-1} =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 3 & 1 & 2
\end{pmatrix}.
\]

Preto

\[
\Pi = \Pi_1^{-1} \circ \Pi_2
=
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 3 & 1 & 2
\end{pmatrix}
\circ
\begin{pmatrix}
1 & 2 & 3 & 4 \\
4 & 2 & 1 & 3
\end{pmatrix}.
\]

??? question "Postup"
    Poďme po prvkoch.

    **Obraz \( 1 \)**

    Najprv \( \Pi_1^{-1}(1) = 4 \).

    Potom \( \Pi_2(4) = 3 \).

    Teda \( 1 \) ide na \( 3 \).

    **Obraz \( 2 \)**

    Najprv \( \Pi_1^{-1}(2) = 3 \).

    Potom \( \Pi_2(3) = 1 \).

    Teda \( 2 \) ide na \( 1 \).

    **Obraz \( 3 \)**

    Najprv \( \Pi_1^{-1}(3) = 1 \).

    Potom \( \Pi_2(1) = 4 \).

    Teda \( 3 \) ide na \( 4 \).

    **Obraz \( 4 \)**

    Najprv \( \Pi_1^{-1}(4) = 2 \).

    Potom \( \Pi_2(2) = 2 \).

    Teda \( 4 \) ide na \( 2 \).

!!! example "Príklad"
    Teda

    \[
    \Pi =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    3 & 1 & 4 & 2
    \end{pmatrix}.
    \]

    A to je výsledok.

### 7.6 Dôležité upozornenie

??? warning "Dôležité"
    Pri rovniciach s permutáciami nestačí nejako prehodiť členy. Musí sa presne vedieť, či sa skladá zľava alebo sprava.

    Dôvod je jednoduchý:

    skladanie permutácií nie je komutatívne.

    Čiže poradie faktorov je dôležité. Ak sa pomýli poradie, výsledok bude zlý.

## 8. Mocniny prvku v grupe

### 8.1 Čo znamená \( a^n \)

Ak máme prvok \( a \) v grupe, jeho mocniny znamenajú opakované použitie tej istej operácie.

!!! note "Poznámka"
    Ak je operáciou písané násobenie, tak:

    \[
    a^1 = a,
    \]

    \[
    a^2 = a \cdot a,
    \]

    \[
    a^3 = a \cdot a \cdot a,
    \]

    \[
    a^n = a \cdot a \cdot \dots \cdot a
    \]

    \( n \)-krát.

    V zápise grupy sa niekedy používa symbol \( \circ \), ale pri mocninách sa často pre pohodlie zapisuje násobne.

### 8.2 Čo znamená \( a^0 \)

!!! abstract "Definícia"
    Definuje sa

    \[
    a^0 = e,
    \]

    kde \( e \) je neutrálny prvok grupy.

!!! note "Poznámka"
    To je veľmi dôležité pravidlo. Nezáleží na tom, aký prvok \( a \) vezmeme, nultá mocnina dá neutrálny prvok.

### 8.3 Záporné mocniny

!!! abstract "Definícia"
    Ak chceme definovať záporné mocniny, musíme použiť inverzný prvok.

    Platí

    \[
    a^{-n} = (a^{-1})^n.
    \]

!!! example "Príklad"
    Napríklad

    \[
    a^{-2} = a^{-1} \cdot a^{-1}.
    \]

### 8.4 Základné pravidlá pre mocniny

!!! info "Tvrdenie"
    V tejto kapitole používame pravidlá

    \[
    a^{n+m} = a^n \cdot a^m,
    \]

    \[
    (a^n)^m = a^{nm},
    \]

    \[
    a^0 = e,
    \]

    \[
    a^{-n} = (a^{-1})^n.
    \]

!!! note "Poznámka"
    Tieto pravidlá sú veľmi dôležité, lebo sa stále používajú pri práci s cyklickými podgrupami.

??? warning "Dôležité"
    Vo všeobecnej grupe neplatí

    \[
    (ab)^n = a^n b^n
    \]

    pre \( n > 1 \).

??? question "Vysvetlenie"
    Prečo?

    Lebo ľavá strana pri \( n = 2 \) vyzerá takto:

    \[
    (ab)^2 = (ab)(ab) = abab.
    \]

    Pravá strana je

    \[
    a^2 b^2 = aabb.
    \]

    Tieto dva výrazy sú rovnaké len vtedy, keď sa dá medzi \( a \) a \( b \) meniť poradie, teda keď \( ab = ba \).

    Vo všeobecnej grupe to platiť nemusí. Preto treba byť opatrný.

## 9. Podgrupy

### 9.1 Intuitívna predstava

Nech máme veľkú grupu \( G \).

Podgrupa je menšia množina \( H \), ktorá leží v \( G \) a pritom sa pri tej istej operácii správa sama ako grupa.

!!! note "Poznámka"
    Teda podgrupa je grupa vnútri grupy.

    To je veľmi prirodzená myšlienka. Keď skúmame veľký objekt, často hľadáme menšie časti, ktoré majú rovnakú štruktúru.

### 9.2 Označenie

!!! note "Poznámka"
    Ak \( H \) je podgrupa grupy \( G \), zapisuje sa to symbolom

    \[
    H \leq G.
    \]

    To znamená: \( H \) je podgrupa \( G \).

### 9.3 Triviálne podgrupy

!!! info "Tvrdenie"
    Každá grupa má vždy aspoň dve podgrupy:

    - samu seba, teda \( G \),
    - množinu obsahujúcu len neutrálny prvok, teda \( \{e\} \).

!!! note "Poznámka"
    Tieto sa nazývajú triviálne podgrupy.

!!! question "Vysvetlenie"
    Prečo sú to naozaj podgrupy?

    - \( G \) je podgrupa samej seba, lebo všetky grupové vlastnosti už má.
    - \( \{e\} \) je podgrupa, lebo:
      - nie je prázdna,
      - \( e \circ e = e \),
      - inverz k \( e \) je zasa \( e \).

### 9.4 Definícia podgrupy

!!! abstract "Definícia"
    Nech \( (G, \circ) \) je grupa a \( H \) je podmnožina \( G \).

    Potom \( H \) je podgrupa \( G \) práve vtedy, keď \( (H, \circ) \) je grupa.

!!! note "Poznámka"
    Treba si všimnúť jednu dôležitú vec:

    operácia v \( H \) nie je nová operácia. Je to tá istá operácia, ktorú už má \( G \), len obmedzená na prvky z \( H \).

### 9.5 Kritérium pre podgrupu

!!! info "Veta"
    Nech \( (G, \circ) \) je grupa a \( H \) je podmnožina \( G \). Potom \( H \) je podgrupa práve vtedy, keď platí:

    - \( H \neq \varnothing \),
    - pre všetky \( h_1, h_2 \in H \) je \( h_1 \circ h_2 \in H \),
    - pre každé \( h \in H \) je \( h^{-1} \in H \).

!!! note "Poznámka"
    Toto je praktický test podgrupy.

### 9.6 Prečo tieto tri podmienky stačia

Keď chceme ukázať, že \( H \) je grupa, normálne by sme museli overovať viac vecí:

- asociativitu,
- neutrálny prvok,
- inverzné prvky,
- uzavretosť.

!!! question "Vysvetlenie"
    Tu sa však veľa práce ušetrí.

    **Asociativita**

    Tá sa nemusí nanovo dokazovať, lebo \( H \) je podmnožina \( G \) a operácia je tá istá ako v \( G \). Ak je operácia asociatívna v \( G \), bude asociatívna aj v \( H \).

    **Neutrálny prvok**

    Ten sa dá získať z podmienok 1 až 3.

    **Inverzné prvky**

    Tie priamo dáva tretia podmienka.

    **Uzavretosť**

    To je druhá podmienka.

    Preto stačia tieto tri podmienky.

??? success "Dôkaz"
    **Smer 1**

    Ak \( H \) je podgrupa, tak platia podmienky 1, 2, 3.

    Tento smer je jednoduchý.

    Ak \( H \) je podgrupa, tak \( (H, \circ) \) je grupa.

    Každá grupa:

    - je neprázdna,
    - je uzavretá na operáciu,
    - obsahuje ku každému prvku jeho inverz.

    Teda podmienky 1, 2, 3 platia automaticky.

    **Smer 2**

    Teraz predpokladajme, že platia podmienky:

    - \( H \neq \varnothing \),
    - ak \( h_1, h_2 \) patria do \( H \), tak \( h_1 \circ h_2 \) patrí do \( H \),
    - ak \( h \) patrí do \( H \), tak \( h^{-1} \) patrí do \( H \).

    Chceme ukázať, že \( H \) je podgrupa.

    Teda chceme ukázať, že \( (H, \circ) \) je grupa.

    **Krok 1: asociativita**

    Tá platí automaticky, lebo operácia je tá istá ako v \( G \) a v \( G \) je asociatívna.

    **Krok 2: existencia neutrálneho prvku v \( H \)**

    Keďže \( H \neq \varnothing \), existuje aspoň jeden prvok \( h \) v \( H \).

    Podľa tretej podmienky patrí do \( H \) aj \( h^{-1} \).

    Podľa druhej podmienky potom patrí do \( H \) aj ich súčin

    \[
    h \circ h^{-1}.
    \]

    Ale v každej grupe platí

    \[
    h \circ h^{-1} = e.
    \]

    Teda \( e \) patrí do \( H \).

    To je kľúčový krok. Takto sme ukázali, že neutrálna identita grupy \( G \) leží aj v \( H \).

    **Krok 3: existencia inverzov**

    To máme priamo z tretej podmienky.

    Ak \( h \) patrí do \( H \), tak \( h^{-1} \) patrí do \( H \).

    **Krok 4: uzavretosť**

    To máme z druhej podmienky.

    Ak \( h_1, h_2 \) patria do \( H \), tak \( h_1 \circ h_2 \) patrí do \( H \).

    Teda všetky grupové vlastnosti sú splnené a \( H \) je podgrupa.

    Dôkaz je hotový.

## 10. Cyklická podgrupa generovaná jedným prvkom

### 10.1 Základná myšlienka

Ak máme prvok \( a \) v nejakej grupe, môžeme začať počítať jeho mocniny:

\[
a^0, a^1, a^2, a^3, \dots
\]

a ak chceme úplne všeobecne, tak aj záporné mocniny:

\[
\dots, a^{-2}, a^{-1}, a^0, a^1, a^2, \dots
\]

Všetky tieto prvky spolu vytvoria množinu

\[
\langle a \rangle = \{a^n;\ n \text{ je celé číslo}\}.
\]

!!! abstract "Definícia"
    Množina

    \[
    \langle a \rangle = \{a^n;\ n \text{ je celé číslo}\}
    \]

    sa nazýva cyklická podgrupa generovaná prvkom \( a \).

!!! note "Poznámka"
    Slovo generovaná znamená, že všetky prvky tejto podgrupy vzniknú z jedného prvku \( a \) opakovaným použitím operácie.

### 10.2 Prečo je to dôležité

!!! note "Poznámka"
    Je to jeden z najjednoduchších spôsobov, ako vyrobiť podgrupu.

    Namiesto toho, aby sme podgrupu hľadali naslepo, zoberieme jeden prvok a spočítame všetky jeho mocniny.

    Tak dostaneme podgrupu, ktorú tento prvok generuje.

## 11. Príklady v \( \mathbb{Z}_{11}^{*} \)

### 11.1 Čo je \( \mathbb{Z}_{11}^{*} \)

\( \mathbb{Z}_{11}^{*} \) je množina všetkých nenulových zvyškov modulo \( 11 \):

\[
\{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}.
\]

Operáciou je násobenie modulo \( 11 \).

To znamená, že násobíme ako obyčajne, ale výsledok vždy zredukujeme modulo \( 11 \).

!!! note "Poznámka"
    Neutrálnym prvkom je \( 1 \), lebo

    \[
    1 \cdot a \equiv a \pmod{11}.
    \]

### 11.2 Cyklická podgrupa generovaná prvkom \( 2 \)

Počítajme mocniny \( 2 \) modulo \( 11 \) veľmi pomaly.

??? question "Postup"
    \[
    2^0 = 1.
    \]

    \[
    2^1 = 2.
    \]

    \[
    2^2 = 4.
    \]

    \[
    2^3 = 8.
    \]

    \[
    2^4 = 16 \equiv 5 \pmod{11},
    \]

    lebo \( 16 = 11 + 5 \).

    \[
    2^5 = 2 \cdot 2^4 = 2 \cdot 5 = 10.
    \]

    \[
    2^6 = 2 \cdot 10 = 20 \equiv 9 \pmod{11},
    \]

    lebo \( 20 = 11 + 9 \).

    \[
    2^7 = 2 \cdot 9 = 18 \equiv 7 \pmod{11},
    \]

    lebo \( 18 = 11 + 7 \).

    \[
    2^8 = 2 \cdot 7 = 14 \equiv 3 \pmod{11},
    \]

    lebo \( 14 = 11 + 3 \).

    \[
    2^9 = 2 \cdot 3 = 6.
    \]

    \[
    2^{10} = 2 \cdot 6 = 12 \equiv 1 \pmod{11}.
    \]

!!! note "Vysvetlenie príkladu"
    Dostali sme hodnoty

    \[
    1, 2, 4, 8, 5, 10, 9, 7, 3, 6, 1.
    \]

    Keď sa znovu objaví \( 1 \), cyklus sa začne opakovať.

    Vidíme, že sa objavili všetky prvky z \( \mathbb{Z}_{11}^{*} \).

    Teda

    \[
    \langle 2 \rangle = \mathbb{Z}_{11}^{*}.
    \]

    To znamená, že prvok \( 2 \) generuje celú grupu.

### 11.3 Cyklická podgrupa generovaná prvkom \( 3 \)

Počítajme mocniny \( 3 \) modulo \( 11 \).

??? question "Postup"
    \[
    3^0 = 1.
    \]

    \[
    3^1 = 3.
    \]

    \[
    3^2 = 9.
    \]

    \[
    3^3 = 3 \cdot 9 = 27 \equiv 5 \pmod{11},
    \]

    lebo \( 27 = 22 + 5 \).

    \[
    3^4 = 3 \cdot 5 = 15 \equiv 4 \pmod{11},
    \]

    lebo \( 15 = 11 + 4 \).

    \[
    3^5 = 3 \cdot 4 = 12 \equiv 1 \pmod{11}.
    \]

!!! note "Vysvetlenie príkladu"
    Teraz sme sa vrátili k \( 1 \), takže sa cyklus začne opakovať.

    Dostali sme množinu

    \[
    \langle 3 \rangle = \{1, 3, 9, 5, 4\}.
    \]

    Táto množina má \( 5 \) prvkov.

    Nevytvára celú grupu \( \mathbb{Z}_{11}^{*} \), ale iba jej podgrupu.

### 11.4 Cyklická podgrupa generovaná prvkom \( 10 \)

Počítajme mocniny \( 10 \) modulo \( 11 \).

??? question "Postup"
    \[
    10^0 = 1.
    \]

    \[
    10^1 = 10.
    \]

    \[
    10^2 = 100 \equiv 1 \pmod{11},
    \]

    lebo \( 99 \) je násobok \( 11 \) a \( 100 = 99 + 1 \).

!!! note "Vysvetlenie príkladu"
    Preto sa cyklus už opakuje.

    Dostaneme

    \[
    \langle 10 \rangle = \{1, 10\}.
    \]

    To je podgrupa veľkosti \( 2 \).

### 11.5 Príklad podgrupy cez tabuľku násobenia

V poznámkach sa objavuje aj množina

\[
\{1, 3, 9, 5, 4\}.
\]

!!! note "Poznámka"
    To je práve podgrupa \( \langle 3 \rangle \).

    Keď si v tejto množine urobíme tabuľku násobenia modulo \( 11 \), všetky výsledky zostanú v tej istej množine. To je ďalší spôsob, ako vidieť, že ide o podgrupu.

    Teda táto množina je uzavretá na násobenie modulo \( 11 \) a spolu s inverzmi tvorí podgrupu.

## 12. Príklady v \( \mathbb{Z}_{19}^{*} \)

### 12.1 Čo je \( \mathbb{Z}_{19}^{*} \)

\( \mathbb{Z}_{19}^{*} \) je množina všetkých nenulových zvyškov modulo \( 19 \):

\[
\{1, 2, 3, \dots, 18\}.
\]

Operáciou je násobenie modulo \( 19 \).

!!! note "Poznámka"
    Táto grupa má \( 18 \) prvkov.

### 12.2 Cyklická podgrupa generovaná prvkom \( 3 \)

Počítajme mocniny \( 3 \) modulo \( 19 \).

??? question "Postup"
    \[
    3^0 = 1
    \]

    \[
    3^1 = 3
    \]

    \[
    3^2 = 9
    \]

    \[
    3^3 = 27 \equiv 8 \pmod{19}
    \]

    \[
    3^4 = 3 \cdot 8 = 24 \equiv 5 \pmod{19}
    \]

    \[
    3^5 = 3 \cdot 5 = 15
    \]

    \[
    3^6 = 3 \cdot 15 = 45 \equiv 7 \pmod{19},
    \]

    lebo \( 45 = 38 + 7 \)

    \[
    3^7 = 3 \cdot 7 = 21 \equiv 2 \pmod{19}
    \]

    \[
    3^8 = 3 \cdot 2 = 6
    \]

    \[
    3^9 = 3 \cdot 6 = 18
    \]

    \[
    3^{10} = 3 \cdot 18 = 54 \equiv 16 \pmod{19},
    \]

    lebo \( 54 = 38 + 16 \)

    \[
    3^{11} = 3 \cdot 16 = 48 \equiv 10 \pmod{19},
    \]

    lebo \( 48 = 38 + 10 \)

    \[
    3^{12} = 3 \cdot 10 = 30 \equiv 11 \pmod{19}
    \]

    \[
    3^{13} = 3 \cdot 11 = 33 \equiv 14 \pmod{19}
    \]

    \[
    3^{14} = 3 \cdot 14 = 42 \equiv 4 \pmod{19}
    \]

    \[
    3^{15} = 3 \cdot 4 = 12
    \]

    \[
    3^{16} = 3 \cdot 12 = 36 \equiv 17 \pmod{19}
    \]

    \[
    3^{17} = 3 \cdot 17 = 51 \equiv 13 \pmod{19}
    \]

    \[
    3^{18} = 3 \cdot 13 = 39 \equiv 1 \pmod{19}
    \]

!!! note "Vysvetlenie príkladu"
    Dostali sme všetkých \( 18 \) nenulových zvyškov modulo \( 19 \).

    Teda

    \[
    \langle 3 \rangle = \mathbb{Z}_{19}^{*}.
    \]

    Prvok \( 3 \) teda generuje celú grupu.

### 12.3 Cyklická podgrupa generovaná prvkom \( 4 \)

Počítajme mocniny \( 4 \) modulo \( 19 \).

??? question "Postup"
    \[
    4^0 = 1
    \]

    \[
    4^1 = 4
    \]

    \[
    4^2 = 16
    \]

    \[
    4^3 = 4 \cdot 16 = 64 \equiv 7 \pmod{19},
    \]

    lebo \( 64 = 57 + 7 \)

    \[
    4^4 = 4 \cdot 7 = 28 \equiv 9 \pmod{19}
    \]

    \[
    4^5 = 4 \cdot 9 = 36 \equiv 17 \pmod{19}
    \]

    \[
    4^6 = 4 \cdot 17 = 68 \equiv 11 \pmod{19},
    \]

    lebo \( 68 = 57 + 11 \)

    \[
    4^7 = 4 \cdot 11 = 44 \equiv 6 \pmod{19}
    \]

    \[
    4^8 = 4 \cdot 6 = 24 \equiv 5 \pmod{19}
    \]

    \[
    4^9 = 4 \cdot 5 = 20 \equiv 1 \pmod{19}
    \]

!!! note "Vysvetlenie príkladu"
    Teda

    \[
    \langle 4 \rangle = \{1, 4, 16, 7, 9, 17, 11, 6, 5\}.
    \]

    Táto podgrupa má \( 9 \) prvkov.

### 12.4 Cyklická podgrupa generovaná prvkom \( 8 \)

Počítajme mocniny \( 8 \) modulo \( 19 \).

??? question "Postup"
    \[
    8^0 = 1
    \]

    \[
    8^1 = 8
    \]

    \[
    8^2 = 64 \equiv 7 \pmod{19}
    \]

    \[
    8^3 = 8 \cdot 7 = 56 \equiv 18 \pmod{19}
    \]

    \[
    8^4 = 8 \cdot 18 = 144 \equiv 11 \pmod{19},
    \]

    lebo \( 19 \cdot 7 = 133 \) a \( 144 - 133 = 11 \)

    \[
    8^5 = 8 \cdot 11 = 88 \equiv 12 \pmod{19},
    \]

    lebo \( 19 \cdot 4 = 76 \) a \( 88 - 76 = 12 \)

    \[
    8^6 = 8 \cdot 12 = 96 \equiv 1 \pmod{19},
    \]

    lebo \( 19 \cdot 5 = 95 \) a \( 96 - 95 = 1 \)

!!! note "Vysvetlenie príkladu"
    Teda

    \[
    \langle 8 \rangle = \{1, 8, 7, 18, 11, 12\}.
    \]

    Táto podgrupa má \( 6 \) prvkov.

## 13. Lagrangeova veta

### 13.1 Znenie vety

!!! info "Veta"
    Počet prvkov podgrupy delí počet prvkov grupy.

    Ak \( H \) je podgrupa grupy \( G \), tak

    \[
    |H| \text{ delí } |G|.
    \]

### 13.2 Čo to znamená prakticky

!!! note "Poznámka"
    Táto veta hovorí, že veľkosť podgrupy nemôže byť ľubovoľná.

    Napríklad ak grupa má \( 10 \) prvkov, podgrupa nemôže mať \( 3 \) prvky, lebo \( 3 \) nedelí \( 10 \).

    Ak grupa má \( 18 \) prvkov, podgrupa nemôže mať \( 5 \) prvkov, lebo \( 5 \) nedelí \( 18 \).

### 13.3 Súvislosť s predchádzajúcimi príkladmi

#### 13.3.1 V \( \mathbb{Z}_{11}^{*} \)

Grupa má \( 10 \) prvkov.

Preto podgrupy môžu mať len počty prvkov, ktoré delia \( 10 \):

\[
1, 2, 5, 10.
\]

!!! note "Poznámka"
    A presne také veľkosti sme aj videli:

    - \( \{1\} \) má \( 1 \) prvok,
    - \( \{1, 10\} \) má \( 2 \) prvky,
    - \( \langle 3 \rangle \) má \( 5 \) prvkov,
    - \( \langle 2 \rangle = \mathbb{Z}_{11}^{*} \) má \( 10 \) prvkov.

#### 13.3.2 V \( \mathbb{Z}_{19}^{*} \)

Grupa má \( 18 \) prvkov.

Preto podgrupy môžu mať len počty prvkov, ktoré delia \( 18 \):

\[
1, 2, 3, 6, 9, 18.
\]

!!! note "Poznámka"
    A aj naše príklady sedia:

    - \( \langle 8 \rangle \) má \( 6 \) prvkov,
    - \( \langle 4 \rangle \) má \( 9 \) prvkov,
    - \( \langle 3 \rangle \) má \( 18 \) prvkov.

    To je veľmi pekná kontrola, že výsledky dávajú zmysel.

## Zhrnutie viet a dôkazov:

!!! info "Veta"
    Pre všetky permutácie \( \pi_1, \pi_2, \pi_3 \) z \( S_n \) platí

    \[
    (\pi_1 \circ \pi_2) \circ \pi_3 = \pi_1 \circ (\pi_2 \circ \pi_3).
    \]

??? success "Dôkaz"
    Chceme ukázať, že obe strany robia s každým prvkom to isté.

    Vezmime ľubovoľný prvok \( a \).

    Pozrime sa na ľavú stranu:

    \[
    ((\pi_1 \circ \pi_2) \circ \pi_3)(a).
    \]

    Podľa definície skladania to znamená, že najprv pôsobí \( \pi_1 \circ \pi_2 \) a potom \( \pi_3 \). Teda

    \[
    ((\pi_1 \circ \pi_2) \circ \pi_3)(a) = \pi_3((\pi_1 \circ \pi_2)(a)).
    \]

    Teraz ešte rozbalíme výraz \( (\pi_1 \circ \pi_2)(a) \). Opäť podľa definície skladania platí

    \[
    (\pi_1 \circ \pi_2)(a) = \pi_2(\pi_1(a)).
    \]

    Preto

    \[
    ((\pi_1 \circ \pi_2) \circ \pi_3)(a) = \pi_3(\pi_2(\pi_1(a))).
    \]

    Teraz pravá strana:

    \[
    (\pi_1 \circ (\pi_2 \circ \pi_3))(a).
    \]

    Podľa definície skladania to znamená: najprv pôsobí \( \pi_1 \), potom \( \pi_2 \circ \pi_3 \). Teda

    \[
    (\pi_1 \circ (\pi_2 \circ \pi_3))(a) = (\pi_2 \circ \pi_3)(\pi_1(a)).
    \]

    Teraz rozbalíme výraz \( (\pi_2 \circ \pi_3)(\pi_1(a)) \). To znamená: najprv \( \pi_2 \), potom \( \pi_3 \), aplikované na \( \pi_1(a) \). Dostaneme

    \[
    (\pi_2 \circ \pi_3)(\pi_1(a)) = \pi_3(\pi_2(\pi_1(a))).
    \]

    Teda aj pravá strana je

    \[
    \pi_3(\pi_2(\pi_1(a))).
    \]

    Obe strany teda dávajú na ľubovoľnom prvku \( a \) rovnaký výsledok.

    Preto

    \[
    (\pi_1 \circ \pi_2) \circ \pi_3 = \pi_1 \circ (\pi_2 \circ \pi_3).
    \]

    Dôkaz je hotový.

---

!!! info "Veta"
    Nech \( (G, \circ) \) je grupa a \( H \) je podmnožina \( G \). Potom \( H \) je podgrupa práve vtedy, keď platí:

    - \( H \neq \varnothing \),
    - pre všetky \( h_1, h_2 \in H \) je \( h_1 \circ h_2 \in H \),
    - pre každé \( h \in H \) je \( h^{-1} \in H \).

??? success "Dôkaz"
    **Smer 1**

    Ak \( H \) je podgrupa, tak platia podmienky 1, 2, 3.

    Tento smer je jednoduchý.

    Ak \( H \) je podgrupa, tak \( (H, \circ) \) je grupa.

    Každá grupa:

    - je neprázdna,
    - je uzavretá na operáciu,
    - obsahuje ku každému prvku jeho inverz.

    Teda podmienky 1, 2, 3 platia automaticky.

    **Smer 2**

    Teraz predpokladajme, že platia podmienky:

    - \( H \neq \varnothing \),
    - ak \( h_1, h_2 \) patria do \( H \), tak \( h_1 \circ h_2 \) patrí do \( H \),
    - ak \( h \) patrí do \( H \), tak \( h^{-1} \) patrí do \( H \).

    Chceme ukázať, že \( H \) je podgrupa.

    Teda chceme ukázať, že \( (H, \circ) \) je grupa.

    **Krok 1: asociativita**

    Tá platí automaticky, lebo operácia je tá istá ako v \( G \) a v \( G \) je asociatívna.

    **Krok 2: existencia neutrálneho prvku v \( H \)**

    Keďže \( H \neq \varnothing \), existuje aspoň jeden prvok \( h \) v \( H \).

    Podľa tretej podmienky patrí do \( H \) aj \( h^{-1} \).

    Podľa druhej podmienky potom patrí do \( H \) aj ich súčin

    \[
    h \circ h^{-1}.
    \]

    Ale v každej grupe platí

    \[
    h \circ h^{-1} = e.
    \]

    Teda \( e \) patrí do \( H \).

    To je kľúčový krok. Takto sme ukázali, že neutrálna identita grupy \( G \) leží aj v \( H \).

    **Krok 3: existencia inverzov**

    To máme priamo z tretej podmienky.

    Ak \( h \) patrí do \( H \), tak \( h^{-1} \) patrí do \( H \).

    **Krok 4: uzavretosť**

    To máme z druhej podmienky.

    Ak \( h_1, h_2 \) patria do \( H \), tak \( h_1 \circ h_2 \) patrí do \( H \).

    Teda všetky grupové vlastnosti sú splnené a \( H \) je podgrupa.

    Dôkaz je hotový.