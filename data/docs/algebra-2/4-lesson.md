---
icon: fontawesome/solid/4
---

# Štvrtý týždeň

## Cykly, transpozície a rád prvku

## Úvod do témy

V tejto časti sa preberajú tri veľmi dôležité veci:

- ako sa permutácie zapisujú pomocou cyklov,
- ako sa cykly rozkladajú na transpozície,
- čo je rád prvku a ako sa určuje pri permutáciách aj v iných grupách.

Je to dôležité preto, lebo dvojriadkový zápis permutácie je síce presný, ale pri zložitejších permutáciách býva nepraktický. Cyklický zápis je často kratší a zároveň hneď ukáže, ako sa prvky v permutácii pohybujú.

Okrem toho sa ukáže veľmi pekná vec: z tvaru cyklov vieme často veľmi rýchlo určiť rád permutácie. Teda vieme zistiť, po koľkých opakovaniach permutácie sa všetko vráti do pôvodného stavu.

Budeme postupovať pomaly a každý krok budeme rozoberať veľmi opatrne.

## 1. Cyklický zápis permutácie

### 1.1 Základná myšlienka

Nech máme permutáciu. Nechceme ju len čítať po stĺpcoch v dvojriadkovom zápise. Chceme pochopiť, ako sa prvky navzájom posúvajú.

Preto začneme pri nejakom prvku a sledujeme, kam ide:

\[
a \to \pi(a) \to \pi(\pi(a)) \to \dots
\]

Keďže pracujeme len s konečne mnohými prvkami, nemôžeme stále dostávať nové a nové čísla donekonečna. Po čase sa musíme vrátiť späť k niečomu, čo už padlo. Pri permutácii sa napokon vrátime práve na začiatočný prvok.

Tak vznikne cyklus.

### 1.2 Čo je cyklus

!!! abstract "Definícia"
    Cyklus

    \[
    (a_1\ a_2\ \dots\ a_s)
    \]

    znamená toto:

    - \( a_1 \) ide na \( a_2 \),
    - \( a_2 \) ide na \( a_3 \),
    - \(\dots\)
    - \( a_{s-1} \) ide na \( a_s \),
    - \( a_s \) ide na \( a_1 \).

    Teda prvky sa v tomto cykle posúvajú dookola.

!!! note "Poznámka"
    Všetky ostatné prvky, ktoré v cykle nie sú zapísané, zostávajú pevné, teda idú samy na seba.

### 1.3 Dĺžka cyklu

!!! abstract "Definícia"
    Ak je cyklus

    \[
    (a_1\ a_2\ \dots\ a_s),
    \]

    tak hovoríme, že jeho dĺžka je \( s \), lebo obsahuje \( s \) prvkov.

!!! example "Príklad"
    - \( (1\ 6\ 3) \) je cyklus dĺžky \( 3 \),
    - \( (2\ 4\ 5\ 7) \) je cyklus dĺžky \( 4 \),
    - \( (4\ 5) \) je cyklus dĺžky \( 2 \).

!!! note "Poznámka"
    Cyklus dĺžky \( 2 \) má osobitné meno. K nemu sa dostaneme neskôr.

### 1.4 Ako sa cyklus číta

!!! example "Príklad"
    Cyklus

    \[
    (1\ 6\ 3)
    \]

    znamená:

    - \( 1 \) ide na \( 6 \),
    - \( 6 \) ide na \( 3 \),
    - \( 3 \) ide na \( 1 \).

!!! note "Vysvetlenie príkladu"
    Nič viac. Toto je celé jeho čítanie.

!!! example "Príklad"
    Cyklus

    \[
    (2\ 4\ 5\ 7)
    \]

    znamená:

    - \( 2 \) ide na \( 4 \),
    - \( 4 \) ide na \( 5 \),
    - \( 5 \) ide na \( 7 \),
    - \( 7 \) ide na \( 2 \).

### 1.5 Ako z dvojriadkového zápisu nájsť cykly

Pozrime sa na permutáciu

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 \\
6 & 4 & 1 & 5 & 2 & 3
\end{pmatrix}.
\]

To znamená:

- \( 1 \) ide na \( 6 \),
- \( 2 \) ide na \( 4 \),
- \( 3 \) ide na \( 1 \),
- \( 4 \) ide na \( 5 \),
- \( 5 \) ide na \( 2 \),
- \( 6 \) ide na \( 3 \).

Teraz ideme veľmi pomaly.

!!! example "Príklad"
    **Prvý cyklus**

    Začnime prvkom \( 1 \).

    - \( 1 \) ide na \( 6 \),
    - \( 6 \) ide na \( 3 \),
    - \( 3 \) ide na \( 1 \).

    Vrátili sme sa na začiatok. Teda sme našli cyklus

    \[
    (1\ 6\ 3).
    \]

!!! example "Príklad"
    **Druhý cyklus**

    Teraz vezmeme najmenší prvok, ktorý ešte nebol použitý. To je \( 2 \).

    - \( 2 \) ide na \( 4 \),
    - \( 4 \) ide na \( 5 \),
    - \( 5 \) ide na \( 2 \).

    Teda druhý cyklus je

    \[
    (2\ 4\ 5).
    \]

!!! note "Vysvetlenie príkladu"
    Keďže už máme použité všetky prvky \( 1, 2, 3, 4, 5, 6 \), dostaneme rozklad

    \[
    \pi = (1\ 6\ 3)(2\ 4\ 5).
    \]

    Toto je veľmi dôležitý príklad. Jedna permutácia sa rozložila na dva cykly.

### 1.6 Ďalší príklad

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 \\
4 & 8 & 7 & 3 & 9 & 1 & 5 & 10 & 2 & 6
\end{pmatrix}.
\]

??? question "Postup"
    Budeme sledovať, kam ide \( 1 \).

    - \( 1 \) ide na \( 4 \),
    - \( 4 \) ide na \( 3 \),
    - \( 3 \) ide na \( 7 \),
    - \( 7 \) ide na \( 5 \),
    - \( 5 \) ide na \( 9 \),
    - \( 9 \) ide na \( 2 \),
    - \( 2 \) ide na \( 8 \),
    - \( 8 \) ide na \( 10 \),
    - \( 10 \) ide na \( 6 \),
    - \( 6 \) ide na \( 1 \).

!!! example "Príklad"
    Vrátili sme sa na začiatok. Teda dostávame jeden veľký cyklus

    \[
    (1\ 4\ 3\ 7\ 5\ 9\ 2\ 8\ 10\ 6).
    \]

!!! note "Vysvetlenie príkladu"
    Tu sa do jedného cyklu dostali všetky prvky. Preto celá permutácia pozostáva len z tohto jediného cyklu.

## 2. Pevný bod a cyklus dĺžky 1

### 2.1 Čo je pevný bod

!!! abstract "Definícia"
    Ak nejaký prvok \( a \) ide sám na seba, teda

    \[
    \pi(a) = a,
    \]

    volá sa pevný bod permutácie.

!!! note "Poznámka"
    Na pevný bod sa môžeme pozerať aj ako na cyklus dĺžky \( 1 \), teda

    \[
    (a).
    \]

### 2.2 Príklad s pevným bodom

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\
7 & 5 & 4 & 8 & 1 & 6 & 3 & 2
\end{pmatrix}.
\]

??? question "Postup"
    Poďme od \( 1 \):

    - \( 1 \) ide na \( 7 \),
    - \( 7 \) ide na \( 3 \),
    - \( 3 \) ide na \( 4 \),
    - \( 4 \) ide na \( 8 \),
    - \( 8 \) ide na \( 2 \),
    - \( 2 \) ide na \( 5 \),
    - \( 5 \) ide na \( 1 \).

!!! example "Príklad"
    Dostávame cyklus

    \[
    (1\ 7\ 3\ 4\ 8\ 2\ 5).
    \]

??? question "Postup"
    A čo prvok \( 6 \)?

    \[
    6 \mapsto 6.
    \]

!!! example "Príklad"
    Teda \( 6 \) je pevný bod. Môžeme ho zapísať ako cyklus

    \[
    (6).
    \]

!!! note "Vysvetlenie príkladu"
    Celá permutácia sa teda rozkladá ako

    \[
    (1\ 7\ 3\ 4\ 8\ 2\ 5)(6).
    \]

    Je dôležité vidieť, že tu nemáme jeden jediný cyklus cez všetkých \( 8 \) prvkov. Máme jeden cyklus dĺžky \( 7 \) a ešte jeden pevný bod.

### 2.3 Príklad bez pevného bodu

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\
8 & 4 & 1 & 7 & 3 & 2 & 5 & 6
\end{pmatrix}.
\]

??? question "Postup"
    Začnime pri \( 1 \):

    - \( 1 \) ide na \( 8 \),
    - \( 8 \) ide na \( 6 \),
    - \( 6 \) ide na \( 2 \),
    - \( 2 \) ide na \( 4 \),
    - \( 4 \) ide na \( 7 \),
    - \( 7 \) ide na \( 5 \),
    - \( 5 \) ide na \( 3 \),
    - \( 3 \) ide na \( 1 \).

!!! example "Príklad"
    Teda

    \[
    \pi = (1\ 8\ 6\ 2\ 4\ 7\ 5\ 3).
    \]

!!! note "Vysvetlenie príkladu"
    Tu sa do jedného cyklu dostalo všetkých \( 8 \) prvkov.

### 2.4 Príklad s viacerými cyklami

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\
3 & 4 & 5 & 2 & 1 & 7 & 8 & 6
\end{pmatrix}.
\]

??? question "Postup"
    Najprv sledujme \( 1 \):

    - \( 1 \) ide na \( 3 \),
    - \( 3 \) ide na \( 5 \),
    - \( 5 \) ide na \( 1 \).

    Prvý cyklus je

    \[
    (1\ 3\ 5).
    \]

    Teraz vezmime \( 2 \):

    - \( 2 \) ide na \( 4 \),
    - \( 4 \) ide na \( 2 \).

    Druhý cyklus je

    \[
    (2\ 4).
    \]

    Teraz \( 6 \):

    - \( 6 \) ide na \( 7 \),
    - \( 7 \) ide na \( 8 \),
    - \( 8 \) ide na \( 6 \).

    Tretí cyklus je

    \[
    (6\ 7\ 8).
    \]

!!! example "Príklad"
    Teda

    \[
    \pi = (1\ 3\ 5)(2\ 4)(6\ 7\ 8).
    \]

!!! note "Vysvetlenie príkladu"
    Takto vyzerá rozklad permutácie na viac cyklov.

## 3. Disjunktné cykly

### 3.1 Čo znamená disjunktné

!!! abstract "Definícia"
    Dva cykly sú disjunktné, ak nemajú spoločný žiadny prvok.

!!! example "Príklad"
    - \( (1\ 3\ 5) \) a \( (2\ 4) \) sú disjunktné,
    - \( (2\ 4) \) a \( (6\ 7\ 8) \) sú disjunktné,
    - \( (1\ 3\ 5) \) a \( (6\ 7\ 8) \) sú disjunktné.

!!! warning "Upozornenie"
    Cykly

    \[
    (1\ 3\ 5) \quad \text{a} \quad (5\ 2)
    \]

    disjunktné nie sú, lebo sa v oboch vyskytuje prvok \( 5 \).

### 3.2 Prečo sú disjunktné cykly dôležité

Ak sú cykly disjunktné, každý z nich pôsobí na svoju vlastnú skupinu prvkov a ostatné necháva na pokoji.

Preto si navzájom nezavadzajú.

!!! info "Tvrdenie"
    Ak sú \( c_1 \) a \( c_2 \) disjunktné cykly, tak

    \[
    c_1 c_2 = c_2 c_1.
    \]

!!! note "Poznámka"
    Toto neplatí pre permutácie všeobecne, ale pre disjunktné cykly áno.

!!! note "Vysvetlenie"
    Vezmime nejaký prvok \( a \).

    Môžu nastať tri situácie:

    - \( a \) patrí do prvého cyklu, ale nie do druhého,
    - \( a \) patrí do druhého cyklu, ale nie do prvého,
    - \( a \) nepatrí ani do jedného.

    Keďže cykly sú disjunktné, nemôže patriť do oboch naraz.

    Ak \( a \) patrí len do prvého cyklu, druhý cyklus s ním nič nerobí.

    Ak \( a \) patrí len do druhého cyklu, prvý cyklus s ním nič nerobí.

    Ak \( a \) nepatrí ani do jedného, oba cykly ho nechajú na mieste.

    Preto je jedno, v akom poradí tieto dva cykly použijeme. Výsledok bude rovnaký.

### 3.3 Príklad

!!! example "Príklad"
    Permutácia

    \[
    (1\ 3\ 5)(2\ 4)(6\ 7\ 8)
    \]

    je súčin troch disjunktných cyklov.

    Preto môžeme písať aj napríklad

    \[
    (6\ 7\ 8)(1\ 3\ 5)(2\ 4)
    \]

    a dostaneme tú istú permutáciu.

!!! note "Vysvetlenie príkladu"
    Poradie pri disjunktných cykloch nevadí.

??? warning "Upozornenie"
    Treba rozlišovať dve veci:

    - skladanie disjunktných cyklov je komutatívne,
    - skladanie ľubovoľných permutácií vo všeobecnosti komutatívne nie je.

    Toto sa nesmie pomiešať.

## 4. Každá permutácia sa dá rozložiť na súčin disjunktných cyklov

### 4.1 Hlavná myšlienka

Keď začneme sledovať pohyb nejakého prvku, vznikne jeden cyklus.

Potom vezmeme ďalší ešte nepoužitý prvok a vznikne druhý cyklus.

Takto pokračujeme, až kým neminieme všetky prvky.

Tým dostaneme rozklad permutácie na disjunktné cykly.

### 4.2 Príklad

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\
8 & 6 & 7 & 5 & 9 & 3 & 1 & 2 & 4
\end{pmatrix}.
\]

??? question "Postup"
    Začneme prvkom \( 1 \):

    - \( 1 \) ide na \( 8 \),
    - \( 8 \) ide na \( 2 \),
    - \( 2 \) ide na \( 6 \),
    - \( 6 \) ide na \( 3 \),
    - \( 3 \) ide na \( 7 \),
    - \( 7 \) ide na \( 1 \).

    Prvý cyklus je

    \[
    (1\ 8\ 2\ 6\ 3\ 7).
    \]

    Teraz vezmeme najmenší nepoužitý prvok, to je \( 4 \):

    - \( 4 \) ide na \( 5 \),
    - \( 5 \) ide na \( 9 \),
    - \( 9 \) ide na \( 4 \).

    Druhý cyklus je

    \[
    (4\ 5\ 9).
    \]

!!! example "Príklad"
    Teda

    \[
    \pi = (1\ 8\ 2\ 6\ 3\ 7)(4\ 5\ 9).
    \]

!!! note "Vysvetlenie príkladu"
    Tieto dva cykly sú disjunktné.

### 4.3 Ďalšie príklady

!!! example "Príklad"
    Permutácia

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 & 5 \\
    3 & 2 & 5 & 1 & 4
    \end{pmatrix}
    \]

    sa rozkladá ako

    \[
    (1\ 3\ 5\ 4),
    \]

    pričom \( 2 \) je pevný bod.

!!! example "Príklad"
    Permutácia

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 & 5 & 6 \\
    6 & 2 & 1 & 4 & 3 & 5
    \end{pmatrix}
    \]

    sa rozkladá ako

    \[
    (1\ 6\ 5\ 3),
    \]

    pričom \( 2 \) a \( 4 \) sú pevné body.

!!! note "Poznámka"
    Takéto pevné body sa často do cyklického zápisu ani nepíšu, ale je dôležité vedieť, že tam v skutočnosti sú.

## 5. Transpozície

### 5.1 Definícia

!!! abstract "Definícia"
    Cyklus dĺžky \( 2 \) sa nazýva transpozícia.

    Teda transpozícia má tvar

    \[
    (a_1\ a_2),
    \]

    kde \( a_1 \) a \( a_2 \) si navzájom vymenia miesto.

!!! note "Poznámka"
    To znamená:

    - \( a_1 \) ide na \( a_2 \),
    - \( a_2 \) ide na \( a_1 \),
    - ostatné prvky zostanú tam, kde sú.

### 5.2 Príklad transpozície

!!! example "Príklad"
    Transpozícia

    \[
    (4\ 5)
    \]

    znamená:

    - \( 4 \) ide na \( 5 \),
    - \( 5 \) ide na \( 4 \).

!!! note "Vysvetlenie príkladu"
    Všetko ostatné sa nemení.

### 5.3 Každá transpozícia je sama sebe inverzná

!!! info "Tvrdenie"
    Pre každú transpozíciu platí

    \[
    (a\ b)^{-1} = (a\ b).
    \]

!!! note "Vysvetlenie"
    Keď transpozíciu vykonáme raz, dva prvky si vymenia miesto.

    Keď tú istú transpozíciu vykonáme ešte raz, vymenia si miesto znova a vrátia sa späť.

    Preto je každá transpozícia sama sebe inverzná.

### 5.4 Príklad

!!! example "Príklad"
    Permutácia

    \[
    \begin{pmatrix}
    1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\
    8 & 7 & 6 & 5 & 4 & 3 & 2 & 1
    \end{pmatrix}
    \]

    sa dá zapísať ako

    \[
    (1\ 8)(2\ 7)(3\ 6)(4\ 5).
    \]

!!! note "Vysvetlenie príkladu"
    Každá z týchto transpozícií je sama sebe inverzná.

    Preto inverzná permutácia vznikne otočením poradia faktorov a zobrať inverz každého faktora. Keďže každý faktor je sám sebe inverzný, dostávame

    \[
    \bigl((1\ 8)(2\ 7)(3\ 6)(4\ 5)\bigr)^{-1}
    = (4\ 5)(3\ 6)(2\ 7)(1\ 8).
    \]

    A pretože tieto transpozície sú disjunktné, môžeme ich aj prestavovať, takže v tomto prípade je inverzná permutácia vlastne rovnaká ako pôvodná.

## 6. Rozklad cyklu na transpozície

### 6.1 Hlavná veta

!!! info "Veta"
    Každý cyklus sa dá zapísať ako súčin transpozícií.

    V tomto učive používame tú istú konvenciu skladania ako doteraz: pri zápise súčinu sa najprv vykoná ľavý faktor a potom pravý faktor.

    Preto platí vzorec

    \[
    (a_1\ a_2\ \dots\ a_s) = (a_1\ a_2)(a_1\ a_3)\cdots(a_1\ a_s).
    \]

!!! warning "Upozornenie"
    Tento vzorec si treba zapamätať presne v tomto poradí.


!!! note "Vysvetlenie"
    Týmto spôsobom sa prvok \( a_1 \) postupne napája na všetky ostatné prvky cyklu.

    Výsledkom je presne to, že

    \[
    a_1 \to a_2 \to a_3 \to \dots \to a_s \to a_1.
    \]

### 6.2 Príklady

!!! example "Príklad"
    Cyklus

    \[
    (1\ 6\ 3)
    \]

    sa rozloží ako

    \[
    (1\ 6)(1\ 3).
    \]

??? question "Postup"
    Overíme to po prvkoch.

    **Čo sa stane s \( 1 \)**

    Najprv pôsobí \( (1\ 6) \):

    \[
    1 \to 6.
    \]

    Potom pôsobí \( (1\ 3) \). Na číslo \( 6 \) nepôsobí, takže \( 6 \) ostáva \( 6 \).

    Teda celkovo

    \[
    1 \to 6.
    \]

    **Čo sa stane so \( 6 \)**

    Najprv pôsobí \( (1\ 6) \):

    \[
    6 \to 1.
    \]

    Potom pôsobí \( (1\ 3) \):

    \[
    1 \to 3.
    \]

    Teda

    \[
    6 \to 3.
    \]

    **Čo sa stane s \( 3 \)**

    Najprv \( (1\ 6) \) nechá \( 3 \) na mieste.

    Potom \( (1\ 3) \) pošle \( 3 \) na \( 1 \).

    Teda

    \[
    3 \to 1.
    \]

!!! note "Vysvetlenie príkladu"
    Presne to je cyklus

    \[
    (1\ 6\ 3).
    \]

!!! example "Príklad"
    Cyklus

    \[
    (2\ 4\ 5)
    \]

    sa rozloží ako

    \[
    (2\ 4)(2\ 5).
    \]

!!! note "Vysvetlenie príkladu"
    Opäť to sedí:

    - \( 2 \) ide na \( 4 \),
    - \( 4 \) ide na \( 5 \),
    - \( 5 \) ide na \( 2 \).

!!! example "Príklad"
    Cyklus

    \[
    (1\ 4\ 3\ 7\ 5\ 9\ 2\ 8\ 10\ 6)
    \]

    sa rozloží na transpozície

    \[
    (1\ 4)(1\ 3)(1\ 7)(1\ 5)(1\ 9)(1\ 2)(1\ 8)(1\ 10)(1\ 6).
    \]

!!! note "Vysvetlenie príkladu"
    To je priamo použitie uvedeného vzorca.

## 7. Každá permutácia je súčinom transpozícií

### 7.1 Veta

!!! info "Veta"
    Každá permutácia je súčinom transpozícií.

!!! warning "Upozornenie"
    Ale tieto transpozície vo všeobecnosti nie sú disjunktné.

!!! note "Vysvetlenie"
    Každá permutácia sa najprv rozloží na cykly.

    Každý cyklus sa potom rozloží na transpozície.

    Keď tieto dva kroky spojíme, dostaneme, že každá permutácia je súčinom transpozícií.

    Teda logika je:

    \[
    \text{permutácia} \to \text{cykly} \to \text{transpozície}.
    \]

### 7.3 Prečo transpozície nemusia byť disjunktné

!!! note "Poznámka"
    Pozrime sa napríklad na rozklad

    \[
    (1\ 6\ 3) = (1\ 6)(1\ 3).
    \]

    Tieto dve transpozície nie sú disjunktné, lebo obe obsahujú prvok \( 1 \).

    Preto veta nehovorí, že každá permutácia je súčinom disjunktných transpozícií. Hovorí len, že je súčinom transpozícií.

## 8. Mocniny permutácie

### 8.1 Čo znamená \( \pi^2 \), \( \pi^3 \) a podobne

!!! abstract "Definícia"
    Ak \( \pi \) je permutácia, tak

    - \( \pi^2 \) znamená \( \pi \) zložené s \( \pi \),
    - \( \pi^3 \) znamená \( \pi \) zložené s \( \pi \) a ešte raz s \( \pi \),
    - všeobecne \( \pi^n \) znamená \( n \)-násobné zloženie permutácie \( \pi \) so sebou samou.

!!! note "Poznámka"
    A samozrejme

    \[
    \pi^0 = \operatorname{id}.
    \]

### 8.2 Pomalý príklad

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 & 5 & 6 \\
6 & 4 & 1 & 5 & 2 & 3
\end{pmatrix}.
\]

Už vieme, že

\[
\pi = (1\ 6\ 3)(2\ 4\ 5).
\]

!!! example "Príklad"
    Z poznámok vychádza

    \[
    \pi^2 =
    \begin{pmatrix}
    1 & 2 & 3 & 4 & 5 & 6 \\
    3 & 5 & 6 & 2 & 4 & 1
    \end{pmatrix}
    \]

    a potom

    \[
    \pi^3 = \operatorname{id}.
    \]

!!! note "Vysvetlenie príkladu"
    To je veľmi prirodzené, lebo oba cykly majú dĺžku \( 3 \). Keď cyklus dĺžky \( 3 \) vykonáme trikrát, všetko sa vráti na pôvodné miesto.

    Keďže oba cykly sú disjunktné, platí to naraz pre celú permutáciu.

    Preto má táto permutácia rád \( 3 \).

### 8.3 Ďalší príklad

Nech

\[
\pi =
\begin{pmatrix}
1 & 2 & 3 & 4 \\
3 & 1 & 4 & 2
\end{pmatrix}.
\]

!!! note "Poznámka"
    Táto permutácia je jeden cyklus dĺžky \( 4 \).

!!! example "Príklad"
    Preto jej mocniny vyzerajú takto:

    \[
    \pi^1 = \pi,
    \]

    \[
    \pi^2 =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    4 & 3 & 2 & 1
    \end{pmatrix},
    \]

    \[
    \pi^3 =
    \begin{pmatrix}
    1 & 2 & 3 & 4 \\
    2 & 4 & 1 & 3
    \end{pmatrix},
    \]

    \[
    \pi^4 = \operatorname{id}.
    \]

!!! note "Vysvetlenie príkladu"
    Teda rád tejto permutácie je \( 4 \).

## 9. Prvky konečného rádu

### 9.1 Čo znamená, že prvok má konečný rád

!!! abstract "Definícia"
    Nech \( (G, \circ) \) je grupa a \( a \) je jej prvok.

    Povieme, že \( a \) je prvok konečného rádu, ak existuje nejaké kladné celé číslo \( n \), pre ktoré platí

    \[
    a^n = e,
    \]

    kde \( e \) je neutrálny prvok grupy.

!!! note "Poznámka"
    Teda po dostatočnom počte opakovaní prvku \( a \) sa dostaneme späť k neutrálnemu prvku.

### 9.2 Definícia rádu prvku

!!! abstract "Definícia"
    Ak \( a \) je prvok konečného rádu, potom najmenšie kladné celé číslo \( r \), pre ktoré platí

    \[
    a^r = e,
    \]

    sa nazýva rád prvku \( a \).

!!! note "Poznámka"
    Značí sa napríklad

    \[
    \operatorname{rad}(a), \qquad \operatorname{ord}(a).
    \]

!!! warning "Upozornenie"
    Je veľmi dôležité slovo najmenšie.

    Nestačí, že nejaká mocnina dá neutrálny prvok. Hľadáme prvú kladnú mocninu, pri ktorej sa to stane.

## 10. V konečnej grupe má každý prvok konečný rád

### 10.1 Veta

!!! info "Veta"
    V konečnej grupe je každý prvok konečného rádu.

### 10.2 Prečo je to logické

!!! note "Vysvetlenie"
    Ak je grupa konečná, má len konečne veľa prvkov.

    Teraz vezmime prvok \( a \) a píšme postupne

    \[
    a, a^2, a^3, a^4, \dots
    \]

    Týchto mocnín je nekonečne veľa, ale prvkov grupy je len konečne veľa.

    Preto sa v tomto zozname skôr či neskôr musia objaviť dve rovnaké mocniny.

    To je základná myšlienka dôkazu.

??? success "Dôkaz"
    Predpokladajme, že \( G \) je konečná grupa a \( a \in G \).

    Uvažujme prvky

    \[
    a, a^2, a^3, a^4, \dots
    \]

    Keďže \( G \) má len konečne veľa prvkov, v tejto nekonečnej postupnosti sa musia niektoré dva prvky zhodovať.

    Teda existujú čísla \( n \) a \( k \), kde \( k > 0 \), také, že

    \[
    a^{n+k} = a^n.
    \]

    Teraz chceme odstrániť \( a^n \) z oboch strán.

    Keďže sme v grupe, prvok \( a^n \) má inverzný prvok. Označme ho \( (a^n)^{-1} \).

    Vynásobíme zľava obidve strany týmto inverzným prvkom:

    \[
    (a^n)^{-1} a^{n+k} = (a^n)^{-1} a^n.
    \]

    Pravá strana je \( e \).

    Ľavá strana sa zjednoduší na

    \[
    a^k.
    \]

    Dostávame teda

    \[
    a^k = e.
    \]

    A to znamená, že existuje kladné číslo \( k \), pre ktoré \( a^k = e \).

    Teda \( a \) má konečný rád.

    Dôkaz je hotový.

## 11. Veta o deliteľnosti exponentu rádom prvku

### 11.1 Znenie vety

!!! info "Veta"
    Nech \( a \) je prvok konečného rádu a nech

    \[
    r = \operatorname{rad}(a).
    \]

    Potom pre každé celé číslo \( m \) platí:

    \[
    a^m = e \quad \Leftrightarrow \quad r \mid m.
    \]

### 11.2 Čo táto veta hovorí

!!! note "Poznámka"
    Ak poznáme rád prvku, presne vieme, pri ktorých exponentoch dostaneme neutrálny prvok.

    Nie hocikedy. Presne vtedy, keď exponent je násobkom rádu.

#### Dôkaz smeru ak \( r \mid m \), tak \( a^m = e \)

??? success "Dôkaz"
    Predpokladajme, že \( r \mid m \).

    To znamená, že existuje celé číslo \( q \) také, že

    \[
    m = rq.
    \]

    Potom

    \[
    a^m = a^{rq} = (a^r)^q.
    \]

    Ale \( a^r = e \), lebo \( r \) je rád prvku \( a \).

    Preto

    \[
    a^m = e^q = e.
    \]

    Tento smer je hotový.

#### Dôkaz smeru ak \( a^m = e \), tak \( r \mid m \)

??? success "Dôkaz"
    Teraz predpokladajme, že

    \[
    a^m = e.
    \]

    Chceme dokázať, že \( r \mid m \).

    Použijeme delenie so zvyškom. To znamená, že číslo \( m \) vieme zapísať v tvare

    \[
    m = rq + r_1,
    \]

    kde

    \[
    0 \leq r_1 < r.
    \]

    Teraz počítame:

    \[
    a^m = a^{rq + r_1} = a^{rq} a^{r_1} = (a^r)^q a^{r_1} = e^q a^{r_1} = a^{r_1}.
    \]

    Ale predpokladáme, že \( a^m = e \), teda dostávame

    \[
    a^{r_1} = e.
    \]

    Lenže \( r \) je najmenšie kladné číslo, pre ktoré \( a^r = e \).

    Ak by bolo \( r_1 > 0 \), dostali by sme menšie kladné číslo než \( r \), pre ktoré tiež vyjde neutrálny prvok. To by odporovalo minimalite \( r \).

    Preto musí byť

    \[
    r_1 = 0.
    \]

    A keďže zvyšok pri delení je \( 0 \), znamená to, že \( r \) delí \( m \).

    Dôkaz je hotový.

## 12. Veta o mocnine súčinu

### 12.1 Čo chceme zistiť

Chceme vedieť, kedy platí

\[
(ab)^m = a^m b^m.
\]

Na prvý pohľad to vyzerá ako samozrejmé pravidlo zo školy. Lenže v grupách to vôbec nemusí platiť.

Dôvod je jednoduchý: v grupách vo všeobecnosti nemusí byť

\[
ab = ba.
\]

Poradie môže byť dôležité.

### 12.2 Veta

!!! info "Veta"
    Pre prvky \( a, b \) grupy platí:

    pre všetky prirodzené \( m \) je

    \[
    (ab)^m = a^m b^m
    \]

    práve vtedy, keď

    \[
    ab = ba.
    \]

    Teda práve vtedy, keď \( a \) a \( b \) komutujú.

#### Prečo smer ak \( ab = ba \), tak \( (ab)^m = a^m b^m \) dáva zmysel

!!! note "Vysvetlenie"
    Ak \( a \) a \( b \) komutujú, môžeme ich vo výrazoch medzi sebou presúvať.

    Napríklad

    \[
    (ab)^2 = abab = aabb = a^2 b^2.
    \]

    Podobne

    \[
    (ab)^3 = ababab = aaabbb = a^3 b^3,
    \]

    lebo medzi sebou môžeme prehodiť každé \( b \) cez každé \( a \).

    Takto to funguje všeobecne.

??? success "Dôkaz"
    Predpokladajme, že pre všetky \( m \) platí

    \[
    (ab)^m = a^m b^m.
    \]

    Potom to musí platiť aj pre \( m = 2 \).

    Dostávame

    \[
    (ab)^2 = a^2 b^2.
    \]

    To znamená

    \[
    abab = aabb.
    \]

    Teraz chceme z toho dostať, že \( ab = ba \).

    Vynásobme zľava prvkom \( a^{-1} \). Dostaneme

    \[
    bab = abb.
    \]

    Teraz vynásobme sprava prvkom \( b^{-1} \). Dostaneme

    \[
    ba = ab.
    \]

    Teda \( a \) a \( b \) komutujú.

## 13. Rád cyklu

### 13.1 Veľmi dôležitá veta

!!! info "Veta"
    Rád cyklu je jeho dĺžka.

    Teda ak máme cyklus

    \[
    (a_1\ a_2\ \dots\ a_s),
    \]

    tak jeho rád je \( s \).

!!! note "Vysvetlenie"
    Keď cyklus vykonáme raz, každý prvok sa posunie o jedno miesto.

    Keď ho vykonáme dvakrát, posunie sa o dve miesta.

    Keď ho vykonáme \( s \)-krát, každý prvok sa po kruhu vráti tam, odkiaľ vyšiel.

    Teda \( s \)-tá mocnina cyklu je identita.

    A skôr než po \( s \) krokoch sa to stať nemôže, lebo prvky ešte neobehli celý kruh.

    Preto je rád cyklu presne \( s \).

### 13.3 Príklady

!!! example "Príklad"
    Cyklus

    \[
    (1\ 6\ 3)
    \]

    má dĺžku \( 3 \), preto má rád \( 3 \).

!!! example "Príklad"
    Cyklus

    \[
    (2\ 4\ 5\ 7)
    \]

    má dĺžku \( 4 \), preto má rád \( 4 \).

!!! example "Príklad"
    Cyklus

    \[
    (1\ 4\ 8)
    \]

    má dĺžku \( 3 \), preto má rád \( 3 \).

!!! example "Príklad"
    Cyklus

    \[
    (2\ 9\ 5\ 6\ 7)
    \]

    má dĺžku \( 5 \), preto má rád \( 5 \).

## 14. Rád permutácie rozloženej na disjunktné cykly

### 14.1 Hlavná veta

!!! info "Veta"
    Ak sa permutácia rozloží na disjunktné cykly

    \[
    \pi = c_1 c_2 \cdots c_k,
    \]

    tak rád permutácie \( \pi \) je najmenší spoločný násobok dĺžok týchto cyklov.

    Inak povedané:

    \[
    \operatorname{rad}(\pi) = \operatorname{nsn}\bigl(\operatorname{rad}(c_1), \operatorname{rad}(c_2), \dots, \operatorname{rad}(c_k)\bigr).
    \]

!!! note "Poznámka"
    Keďže rád cyklu je jeho dĺžka, môžeme rovno povedať:

    rád permutácie je najmenší spoločný násobok dĺžok jej disjunktných cyklov.

#### Prečo sa tu objaví najmenší spoločný násobok

!!! note "Vysvetlenie"
    Aby bolo

    \[
    \pi^r = \operatorname{id},
    \]

    musí byť každý cyklus po umocnení na \( r \) už späť v identite.

    Ak má nejaký cyklus dĺžku \( 3 \), tak \( r \) musí byť násobkom \( 3 \).

    Ak má iný cyklus dĺžku \( 4 \), tak \( r \) musí byť násobkom \( 4 \).

    Teda \( r \) musí byť spoločný násobok \( 3 \) a \( 4 \).

    Najmenšie také číslo je \( 12 \).

    Preto sa objaví najmenší spoločný násobok.

### 14.2 Príklady

!!! example "Príklad"
    Permutácia

    \[
    \pi = (1\ 6\ 3)(2\ 4\ 5\ 7)
    \]

    má cykly dĺžok \( 3 \) a \( 4 \).

    Preto

    \[
    \operatorname{rad}(\pi) = \operatorname{nsn}(3, 4) = 12.
    \]

!!! example "Príklad"
    Permutácia

    \[
    \pi = (1\ 5\ 4\ 3\ 6\ 2)(7\ 10\ 9\ 8)
    \]

    má cykly dĺžok \( 6 \) a \( 4 \).

    Preto

    \[
    \operatorname{rad}(\pi) = \operatorname{nsn}(6, 4) = 12.
    \]

!!! example "Príklad"
    Permutácia

    \[
    \pi = (1\ 4\ 8)(2\ 9\ 5\ 6\ 7)(3)
    \]

    má cykly dĺžok \( 3 \), \( 5 \) a \( 1 \).

    Teda

    \[
    \operatorname{rad}(\pi) = \operatorname{nsn}(3, 5, 1) = 15.
    \]

!!! note "Vysvetlenie príkladu"
    Preto má táto permutácia rád \( 15 \).

## 15. Príklady rádu prvku v iných grupách

### 15.1 Príklad v \( \mathbb{Z}_7^{*} \)

V grupe \( \mathbb{Z}_7^{*} \) pri násobení modulo \( 7 \) vezmime prvok \( 2 \).

??? question "Postup"
    Počítame jeho mocniny:

    \[
    2^0 = 1,
    \]

    \[
    2^1 = 2,
    \]

    \[
    2^2 = 4,
    \]

    \[
    2^3 = 8 \equiv 1 \pmod{7}.
    \]

!!! note "Vysvetlenie príkladu"
    Prvý raz sme dostali \( 1 \) pri exponentovi \( 3 \).

    Preto

    \[
    \operatorname{rad}(2) = 3.
    \]

### 15.2 Príklad v \( \mathbb{Z}_{11}^{*} \)

V grupe \( \mathbb{Z}_{11}^{*} \) vezmime prvok \( 5 \).

??? question "Postup"
    Počítame:

    \[
    5^0 = 1,
    \]

    \[
    5^1 = 5,
    \]

    \[
    5^2 = 25 \equiv 3 \pmod{11},
    \]

    \[
    5^3 = 5 \cdot 3 = 15 \equiv 4 \pmod{11},
    \]

    \[
    5^4 = 5 \cdot 4 = 20 \equiv 9 \pmod{11},
    \]

    \[
    5^5 = 5 \cdot 9 = 45 \equiv 1 \pmod{11}.
    \]

!!! note "Vysvetlenie príkladu"
    Prvý raz sa \( 1 \) objaví pri exponentovi \( 5 \).

    Preto

    \[
    \operatorname{rad}(5) = 5.
    \]

## Zhrnutie viet a dôkazov:

!!! info "Veta"
    V konečnej grupe je každý prvok konečného rádu.

??? success "Dôkaz"
    Predpokladajme, že \( G \) je konečná grupa a \( a \in G \).

    Uvažujme prvky

    \[
    a, a^2, a^3, a^4, \dots
    \]

    Keďže \( G \) má len konečne veľa prvkov, v tejto nekonečnej postupnosti sa musia niektoré dva prvky zhodovať.

    Teda existujú čísla \( n \) a \( k \), kde \( k > 0 \), také, že

    \[
    a^{n+k} = a^n.
    \]

    Teraz chceme odstrániť \( a^n \) z oboch strán.

    Keďže sme v grupe, prvok \( a^n \) má inverzný prvok. Označme ho \( (a^n)^{-1} \).

    Vynásobíme zľava obidve strany týmto inverzným prvkom:

    \[
    (a^n)^{-1} a^{n+k} = (a^n)^{-1} a^n.
    \]

    Pravá strana je \( e \).

    Ľavá strana sa zjednoduší na

    \[
    a^k.
    \]

    Dostávame teda

    \[
    a^k = e.
    \]

    A to znamená, že existuje kladné číslo \( k \), pre ktoré \( a^k = e \).

    Teda \( a \) má konečný rád.

    Dôkaz je hotový.

---

!!! info "Veta"
    Nech \( a \) je prvok konečného rádu a nech

    \[
    r = \operatorname{rad}(a).
    \]

    Potom pre každé celé číslo \( m \) platí:

    \[
    a^m = e \quad \Leftrightarrow \quad r \mid m.
    \]

    Nie hocikedy. Presne vtedy, keď exponent je násobkom rádu.

#### Dôkaz smeru ak \( r \mid m \), tak \( a^m = e \)

??? success "Dôkaz"
    Predpokladajme, že \( r \mid m \).

    To znamená, že existuje celé číslo \( q \) také, že

    \[
    m = rq.
    \]

    Potom

    \[
    a^m = a^{rq} = (a^r)^q.
    \]

    Ale \( a^r = e \), lebo \( r \) je rád prvku \( a \).

    Preto

    \[
    a^m = e^q = e.
    \]

    Tento smer je hotový.

#### Dôkaz smeru ak \( a^m = e \), tak \( r \mid m \)

??? success "Dôkaz"
    Teraz predpokladajme, že

    \[
    a^m = e.
    \]

    Chceme dokázať, že \( r \mid m \).

    Použijeme delenie so zvyškom. To znamená, že číslo \( m \) vieme zapísať v tvare

    \[
    m = rq + r_1,
    \]

    kde

    \[
    0 \leq r_1 < r.
    \]

    Teraz počítame:

    \[
    a^m = a^{rq + r_1} = a^{rq} a^{r_1} = (a^r)^q a^{r_1} = e^q a^{r_1} = a^{r_1}.
    \]

    Ale predpokladáme, že \( a^m = e \), teda dostávame

    \[
    a^{r_1} = e.
    \]

    Lenže \( r \) je najmenšie kladné číslo, pre ktoré \( a^r = e \).

    Ak by bolo \( r_1 > 0 \), dostali by sme menšie kladné číslo než \( r \), pre ktoré tiež vyjde neutrálny prvok. To by odporovalo minimalite \( r \).

    Preto musí byť

    \[
    r_1 = 0.
    \]

    A keďže zvyšok pri delení je \( 0 \), znamená to, že \( r \) delí \( m \).

    Dôkaz je hotový.

---

!!! info "Veta"
    Pre prvky \( a, b \) grupy platí:

    pre všetky prirodzené \( m \) je

    \[
    (ab)^m = a^m b^m
    \]

    práve vtedy, keď

    \[
    ab = ba.
    \]

    Teda práve vtedy, keď \( a \) a \( b \) komutujú.

??? success "Dôkaz"
    Predpokladajme, že pre všetky \( m \) platí

    \[
    (ab)^m = a^m b^m.
    \]

    Potom to musí platiť aj pre \( m = 2 \).

    Dostávame

    \[
    (ab)^2 = a^2 b^2.
    \]

    To znamená

    \[
    abab = aabb.
    \]

    Teraz chceme z toho dostať, že \( ab = ba \).

    Vynásobme zľava prvkom \( a^{-1} \). Dostaneme

    \[
    bab = abb.
    \]

    Teraz vynásobme sprava prvkom \( b^{-1} \). Dostaneme

    \[
    ba = ab.
    \]

    Teda \( a \) a \( b \) komutujú.

---

