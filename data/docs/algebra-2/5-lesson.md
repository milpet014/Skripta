---
icon: fontawesome/solid/5
---

# Piaty týždeň

## Rád prvku, cyklické podgrupy, podgrupy a Lagrangeova veta

## Úvod do témy

V tejto časti sa preberajú viaceré veľmi dôležité myšlienky z teórie grúp.

Najprv sa pracuje s pojmom rád prvku. To je číslo, ktoré hovorí, po koľkých opakovaniach daného prvku sa pri grupovej operácii dostaneme späť k jednotkovému prvku. Tento pojem je dôležitý preto, lebo z neho vieme vyčítať veľa informácií o správaní prvku aj o celej grupe.

Potom sa ukazuje, že z mocnín jedného prvku vzniká podgrupa. Takáto podgrupa sa nazýva cyklická podgrupa generovaná daným prvkom. Pri nej sa dajú veľmi pekne zostaviť Cayleyho tabuľky.

Ďalej sa zavádza pojem podgrupa a ukazujú sa základné spôsoby, ako dokázať, že istá množina je podgrupou. Objaví sa aj dôležitý príklad: množina všetkých prvkov, ktoré komutujú s pevným prvkom.

Napokon sa prejde k rozkladu grupy na triedy rozkladu vzhľadom na podgrupu. To vedie k Lagrangeovej vete, ktorá patrí medzi základné výsledky konečných grúp. Tá hovorí, že počet prvkov podgrupy musí deliť počet prvkov celej grupy.

V celej téme sa používa násobný zápis operácie. To znamená, že jednotkový prvok sa označuje \( e \), súčin prvkov sa píše ako \( ab \) a mocniny \( a \), \( a^2 \), \( a^3 \), \(\dots\) znamenajú opakované násobenie prvku \( a \) so sebou samým.

## 1. Rád prvku a dôsledky z rovností typu \( a^n = e \)

### 1.1 Čo znamená rád prvku

Nech \( G \) je grupa a \( a \) je jej prvok.

!!! abstract "Definícia"

    Rád prvku \( a \), značený \( \operatorname{rad} a \), je najmenšie kladné celé číslo \( r \) také, že

    \[
    a^r = e.
    \]

Jednoducho povedané: rád prvku hovorí, po koľkých násobeniach prvku \( a \) sebou samým sa prvýkrát dostaneme späť k jednotke \( e \).

Toto je veľmi dôležitý pojem. Keď poznáme rád prvku, vieme:

- ktoré mocniny prvku budú rovné \( e \),
- ktoré mocniny sa budú opakovať,
- koľko rôznych mocnín prvok vytvorí.

### 1.2 Ak platí viac rovností \( a^n = e \)

V tejto časti sa ukazuje, ako sa dá z viacerých rovností typu \( a^n = e \) využiť deliteľnosť rádu prvku.

!!! example "Príklad"

    Ak platí

    \[
    a^2 = e
    \quad \text{a zároveň} \quad
    a^3 = e,
    \]

    potom

    \[
    a = e.
    \]

!!! note "Vysvetlenie príkladu"

    Označme \( r = \operatorname{rad} a \).

    Keďže \( a^2 = e \), z vlastnosti rádu prvku vieme, že \( r \) delí \( 2 \).
    Keďže \( a^3 = e \), tak \( r \) delí aj \( 3 \).

    Teda \( r \) musí byť spoločným deliteľom čísel \( 2 \) a \( 3 \).

    Jediný kladný spoločný deliteľ čísel \( 2 \) a \( 3 \) je \( 1 \).
    Preto \( r = 1 \).

    Ak má prvok rád \( 1 \), znamená to, že už

    \[
    a = e.
    \]

!!! example "Príklad"

    Ak platí

    \[
    a^7 = e
    \quad \text{a zároveň} \quad
    a^5 = e,
    \]

    potom

    \[
    a = e.
    \]

!!! note "Vysvetlenie príkladu"

    Opäť označme \( r = \operatorname{rad} a \).

    Potom:

    - \( r \) delí \( 7 \),
    - \( r \) delí \( 5 \),
    - jediný spoločný kladný deliteľ čísel \( 7 \) a \( 5 \) je \( 1 \),

    teda

    \[
    r = 1.
    \]

    Preto

    \[
    a = e.
    \]

!!! example "Príklad"

    Ak platí

    \[
    a^8 = e
    \quad \text{a zároveň} \quad
    a^{15} = e,
    \]

    potom

    \[
    a = e.
    \]

!!! note "Vysvetlenie príkladu"

    Ak \( r = \operatorname{rad} a \), potom:

    - \( r \) delí \( 8 \),
    - \( r \) delí \( 15 \),
    - jediný spoločný kladný deliteľ čísel \( 8 \) a \( 15 \) je \( 1 \),

    teda

    \[
    r = 1.
    \]

    Z toho zasa vyplýva

    \[
    a = e.
    \]

### 1.3 Čo si z týchto príkladov treba odniesť

Tieto príklady ukazujú veľmi dôležitú myšlienku.

!!! tip "Dôsledok"

    Ak vieme, že

    \[
    a^m = e
    \quad \text{a zároveň} \quad
    a^n = e,
    \]

    tak rád prvku \( a \) musí deliť obe čísla \( m \) aj \( n \).

Ak sú tieto dve čísla navzájom nesúdeliteľné, teda ich najväčší spoločný deliteľ je \( 1 \), tak jediná možnosť je, že rád prvku je \( 1 \). Vtedy musí byť

\[
a = e.
\]

To je veľmi užitočný spôsob, ako z dvoch rovností rýchlo dostať záver, že prvok je jednotka.

## 2. Mocniny prvku a cyklická podgrupa

### 2.1 Ak má prvok rád \( 5 \)

V tejto časti sa ukazuje, ako sa dajú vysoké mocniny zjednodušovať, keď poznáme rád prvku.

Predpokladajme, že

\[
\operatorname{rad} a = 5.
\]

Potom platí

\[
a^5 = e.
\]

!!! example "Príklad"

    Zjednodušme výraz

    \[
    a^{23}.
    \]

!!! note "Vysvetlenie príkladu"

    Píšeme

    \[
    a^{23} = a^{20} \cdot a^3,
    \]

    pretože \( 23 = 20 + 3 \) a číslo \( 20 \) je násobok \( 5 \).

    Keďže \( a^5 = e \), dostaneme

    \[
    a^{20} = (a^5)^4 = e^4 = e.
    \]

    Preto

    \[
    a^{23} = a^{20} \cdot a^3 = e \cdot a^3 = a^3.
    \]

Toto je veľmi dôležité. Keď poznáme rád prvku, vieme vysoké exponenty zredukovať na menšie. Pri ráde \( 5 \) sa všetko opakuje po piatich krokoch.

### 2.2 Aké mocniny dostaneme

Ak \( \operatorname{rad} a = 5 \), tak rôzne mocniny prvku \( a \) sú:

\[
e, a, a^2, a^3, a^4.
\]

Ďalej už nič nové nevzniká, lebo:

\[
a^5 = e, \qquad a^6 = a, \qquad a^7 = a^2,
\]

a tak ďalej.

!!! abstract "Definícia"

    Množina

    \[
    \langle a \rangle = \{e, a, a^2, a^3, a^4\}
    \]

    sa nazýva podgrupa generovaná prvkom \( a \), alebo cyklická podgrupa generovaná prvkom \( a \).

Jej zmysel je jednoduchý: vezmeme jeden prvok a všetky jeho mocniny; tieto mocniny spolu vytvoria vlastnú podgrupu.

### 2.3 Cayleyho tabuľka pri ráde \( 5 \)

Pre cyklickú podgrupu

\[
\langle a \rangle = \{e, a, a^2, a^3, a^4\}
\]

vyzerá násobenie takto:

- \( e \) je neutrálny prvok,
- \( a \cdot a = a^2 \),
- \( a \cdot a^2 = a^3 \),
- \( a \cdot a^3 = a^4 \),
- \( a \cdot a^4 = a^5 = e \),
- \( a^2 \cdot a^4 = a^6 = a \),
- a podobne.

Všetko sa teda riadi sčítaním exponentov, pričom po dosiahnutí \( 5 \) sa exponenty vracajú od začiatku, lebo \( a^5 = e \).

To je presne dôvod, prečo má Cayleyho tabuľka taký pravidelný, posunutý tvar.

### 2.4 Cayleyho tabuľka pri ráde \( 7 \)

Analogicky sa objavuje aj Cayleyho tabuľka pre prvok rádu \( 7 \).

Ak

\[
\operatorname{rad} a = 7,
\]

tak prvky cyklickej podgrupy sú:

\[
e, a, a^2, a^3, a^4, a^5, a^6.
\]

A opäť platí

\[
a^7 = e.
\]

Preto sa pri násobení exponenty sčítajú a výsledok sa redukuje podľa toho, že \( a^7 = e \).

!!! example "Príklad"

    V cyklickej podgrupe rádu \( 7 \) platí napríklad:

    \[
    a^4 \cdot a^5 = a^9 = a^2,
    \]

    \[
    a^6 \cdot a = a^7 = e,
    \]

    \[
    a^5 \cdot a^6 = a^{11} = a^4.
    \]

Aj tu teda Cayleyho tabuľka vzniká úplne pravidelne.

### 2.5 Dôležitý dôsledok pre prvočíslo \( p \)

V tejto časti sa objavuje jednoduché, ale veľmi dôležité tvrdenie.

!!! info "Tvrdenie"

    Ak \( p \) je prvočíslo a

    \[
    a^p = e,
    \]

    tak nastáva jedna z dvoch možností:

    - buď \( a = e \),
    - alebo \( \operatorname{rad} a = p \).

!!! note "Vysvetlenie dôkazu"

    Myšlienka je veľmi prirodzená. Ak označíme \( r = \operatorname{rad} a \), tak z rovnosti \( a^p = e \) vyplýva, že \( r \) delí \( p \). Keďže \( p \) je prvočíslo, má iba dvoch kladných deliteľov: \( 1 \) a \( p \). Preto môže byť \( r \) len \( 1 \) alebo \( p \).

??? success "Dôkaz"

    Nech \( r = \operatorname{rad} a \).

    Keďže

    \[
    a^p = e,
    \]

    rád prvku \( r \) delí \( p \).

    Ale \( p \) je prvočíslo, takže jeho jediné kladné delitele sú \( 1 \) a \( p \).

    Preto:

    - ak \( r = 1 \), potom \( a = e \),
    - ak \( r \neq 1 \), musí byť \( r = p \).

    Teda naozaj platí, že buď \( a = e \), alebo \( \operatorname{rad} a = p \).

## 3. Podgrupa a základné kritériá

### 3.1 Čo je podgrupa

Máme grupu \( G \) a množinu \( H \subseteq G \).

!!! abstract "Definícia"

    Hovoríme, že \( H \) je podgrupa grupy \( G \), ak sama so zdedenou operáciou tvorí grupu.

V tejto súvislosti sa používajú tri základné podmienky.

!!! info "Tvrdenie"

    Množina \( H \subseteq G \) je podgrupa grupy \( G \), ak platí:

    1. \( H \) nie je prázdna množina.
    2. Pre všetky \( h_1, h_2 \in H \) platí, že \( h_1 h_2 \in H \).
    3. Pre každé \( h \in H \) platí, že aj \( h^{-1} \in H \).

Tieto tri podmienky hovoria presne toto:

- v množine \( H \) niečo je,
- \( H \) je uzavretá na grupovú operáciu,
- \( H \) je uzavretá aj na branie inverzov.

Ak toto platí, \( H \) je podgrupa.

### 3.2 Príklad: prvky, ktoré komutujú s pevným prvkom

Teraz vezmime grupu \( G \) a pevný prvok \( a \in G \).

!!! abstract "Definícia"

    Definujme množinu

    \[
    H = \{ b \in G ; ab = ba \}.
    \]

To znamená, že do \( H \) patria presne tie prvky \( b \), ktoré s prvkom \( a \) komutujú.

Inak povedané: \( H \) je množina všetkých prvkov grupy, ktoré sa pri násobení s \( a \) môžu prehodiť.

Treba dokázať, že \( H \) je podgrupa grupy \( G \).

!!! note "Vysvetlenie dôkazu"

    Pri dôkaze sa overia presne tri podmienky pre podgrupu: neprázdnosť, uzavretosť na súčin a uzavretosť na inverz. Ide o veľmi typický spôsob dokazovania, že nejaká množina je podgrupou.

??? success "Dôkaz"

    **Krok 1: \( H \) nie je prázdna**

    Stačí ukázať, že \( e \in H \).

    Máme

    \[
    ae = a
    \quad \text{a zároveň} \quad
    ea = a.
    \]

    Teda

    \[
    ae = ea.
    \]

    Preto \( e \in H \).

    **Krok 2: uzavretosť na súčin**

    Nech \( h_1, h_2 \in H \).

    To znamená, že

    \[
    ah_1 = h_1 a
    \quad \text{a} \quad
    ah_2 = h_2 a.
    \]

    Chceme ukázať, že aj \( h_1 h_2 \in H \), teda že

    \[
    a(h_1 h_2) = (h_1 h_2)a.
    \]

    Začnime z jednej strany:

    \[
    (h_1 h_2)a = h_1(h_2 a).
    \]

    Keďže \( h_2 \in H \), môžeme zameniť \( h_2 a \) za \( a h_2 \):

    \[
    (h_1 h_2)a = h_1(a h_2).
    \]

    Teraz použijeme asociativitu:

    \[
    h_1(a h_2) = (h_1 a)h_2.
    \]

    A keďže \( h_1 \in H \), máme \( h_1 a = a h_1 \), teda

    \[
    (h_1 a)h_2 = (a h_1)h_2 = a(h_1 h_2).
    \]

    Dostali sme

    \[
    (h_1 h_2)a = a(h_1 h_2).
    \]

    Preto \( h_1 h_2 \in H \).

    **Krok 3: uzavretosť na inverz**

    Nech \( h \in H \). Potom

    \[
    ah = ha.
    \]

    Chceme dokázať, že aj \( h^{-1} \in H \), teda že

    \[
    ah^{-1} = h^{-1}a.
    \]

    Začneme rovnosťou

    \[
    ah = ha.
    \]

    Vynásobme ju zľava prvkom \( h^{-1} \):

    \[
    h^{-1}ah = h^{-1}ha.
    \]

    Na pravej strane je \( h^{-1}h = e \), takže dostaneme

    \[
    h^{-1}ah = ea = a.
    \]

    Teraz vynásobme túto rovnosť sprava prvkom \( h^{-1} \):

    \[
    h^{-1}a = ah^{-1}.
    \]

    Teda naozaj \( h^{-1} \in H \).

    Keďže sú splnené všetky tri podmienky, \( H \) je podgrupa grupy \( G \).

### 3.3 Prienik podgrúp je podgrupa

Toto tvrdenie je veľmi dôležitý a často používaný fakt.

!!! info "Tvrdenie"

    Ak \( H_1 \) a \( H_2 \) sú podgrupy grupy \( G \), tak aj

    \[
    H_1 \cap H_2
    \]

    je podgrupa.

!!! note "Vysvetlenie dôkazu"

    Aj tu sa používa rovnaká schéma ako pri predchádzajúcom tvrdení. Ukáže sa, že prienik obsahuje jednotku, je uzavretý na súčin a je uzavretý na inverzy.

??? success "Dôkaz"

    **Krok 1: neprázdnosť**

    Keďže \( H_1 \) aj \( H_2 \) sú podgrupy, obe obsahujú jednotku \( e \).

    Teda

    \[
    e \in H_1
    \quad \text{a} \quad
    e \in H_2.
    \]

    Preto

    \[
    e \in H_1 \cap H_2.
    \]

    Takže prienik nie je prázdny.

    **Krok 2: uzavretosť na súčin**

    Nech \( h_1, h_2 \in H_1 \cap H_2 \).

    To znamená, že:

    - \( h_1, h_2 \in H_1 \),
    - \( h_1, h_2 \in H_2 \).

    Keďže \( H_1 \) je podgrupa, platí \( h_1 h_2 \in H_1 \).
    Keďže \( H_2 \) je podgrupa, platí aj \( h_1 h_2 \in H_2 \).

    Preto

    \[
    h_1 h_2 \in H_1 \cap H_2.
    \]

    **Krok 3: uzavretosť na inverz**

    Nech \( h \in H_1 \cap H_2 \).

    Potom

    \[
    h \in H_1
    \quad \text{a} \quad
    h \in H_2.
    \]

    Keďže \( H_1 \) je podgrupa, \( h^{-1} \in H_1 \).
    Keďže \( H_2 \) je podgrupa, \( h^{-1} \in H_2 \).

    Teda

    \[
    h^{-1} \in H_1 \cap H_2.
    \]

    Tým sú splnené všetky tri podmienky, a preto \( H_1 \cap H_2 \) je podgrupa.

## 4. Triedy rozkladu vzhľadom na podgrupu

### 4.1 Čo je ľavá trieda rozkladu

Nech \( H \) je podgrupa grupy \( G \) a \( a \in G \).

!!! abstract "Definícia"

    Množina

    \[
    aH = \{ ah ; h \in H \}
    \]

    sa nazýva trieda rozkladu prislúchajúca prvku \( a \).

Intuitívne to znamená toto: vezmeme všetky prvky podgrupy \( H \) a všetky ich „posunieme“ zľava prvkom \( a \).

Tak vznikne nová množina \( aH \).

Táto množina nemusí byť podgrupou, ale je veľmi dôležitá, lebo práve pomocou takýchto množín sa grupa rozloží na kúsky rovnakej veľkosti.

### 4.2 Príklad v grupe \( \mathbb{Z}_{11}^{\ast} \)

V tejto časti sa pracuje s grupou \( \mathbb{Z}_{11}^{\ast} \). To je grupa všetkých nenulových tried modulo \( 11 \) so zvyškovým násobením.

Jej prvky sú:

\[
1, 2, 3, 4, 5, 6, 7, 8, 9, 10.
\]

#### 4.2.1 Podgrupa \( H = \langle 4 \rangle \)

Najprv sa zoberie podgrupa generovaná prvkom \( 4 \).

!!! example "Príklad"

    Vypočítajme mocniny čísla \( 4 \) modulo \( 11 \):

    \[
    4^0 = 1,
    \]

    \[
    4^1 = 4,
    \]

    \[
    4^2 = 16 \equiv 5 \pmod{11},
    \]

    \[
    4^3 = 20 \equiv 9 \pmod{11},
    \]

    \[
    4^4 = 36 \equiv 3 \pmod{11},
    \]

    \[
    4^5 = 12 \equiv 1 \pmod{11}.
    \]

!!! note "Vysvetlenie príkladu"

    Z vypočítaných mocnín vidíme, že

    \[
    \langle 4 \rangle = \{1, 3, 4, 5, 9\}.
    \]

Teraz vytvorme triedu rozkladu \( 2\langle 4 \rangle \).

!!! example "Príklad"

    Máme

    \[
    2\langle 4 \rangle = \{2 \cdot 1, 2 \cdot 3, 2 \cdot 4, 2 \cdot 5, 2 \cdot 9\}.
    \]

    Teda

    \[
    2\langle 4 \rangle = \{2, 6, 8, 10, 18\}.
    \]

    Po redukcii modulo \( 11 \) dostaneme

    \[
    2\langle 4 \rangle = \{2, 6, 7, 8, 10\}.
    \]

Vypísané sú aj ďalšie triedy:

- \( 3\langle 4 \rangle = \langle 4 \rangle \), lebo \( 3 \in \langle 4 \rangle \),
- \( 4\langle 4 \rangle = \langle 4 \rangle \),
- \( 5\langle 4 \rangle = \langle 4 \rangle \),
- \( 9\langle 4 \rangle = \langle 4 \rangle \),
- \( 6\langle 4 \rangle = 2\langle 4 \rangle \),
- \( 7\langle 4 \rangle = 2\langle 4 \rangle \),
- \( 8\langle 4 \rangle = 2\langle 4 \rangle \),
- \( 10\langle 4 \rangle = 2\langle 4 \rangle \).

Takže v skutočnosti vzniknú iba dve rôzne triedy rozkladu:

\[
\langle 4 \rangle = \{1, 3, 4, 5, 9\},
\]

\[
2\langle 4 \rangle = \{2, 6, 7, 8, 10\}.
\]

A ich zjednotenie je celá grupa \( \mathbb{Z}_{11}^{\ast} \).

To veľmi pekne ukazuje, že triedy rozkladu sú buď rovnaké, alebo sa vôbec neprekrývajú.

#### 4.2.2 Podgrupa \( H = \langle 10 \rangle \)

V druhom príklade sa berie podgrupa generovaná prvkom \( 10 \).

!!! example "Príklad"

    Počítame:

    \[
    10^0 = 1,
    \]

    \[
    10^1 = 10,
    \]

    \[
    10^2 = 100 \equiv 1 \pmod{11}.
    \]

!!! note "Vysvetlenie príkladu"

    Teda

    \[
    \langle 10 \rangle = \{1, 10\}.
    \]

Jej triedy rozkladu sú:

\[
\langle 10 \rangle = \{1, 10\},
\]

\[
2\langle 10 \rangle = \{2, 9\},
\]

\[
3\langle 10 \rangle = \{3, 8\},
\]

\[
4\langle 10 \rangle = \{4, 7\},
\]

\[
5\langle 10 \rangle = \{5, 6\}.
\]

A potom sa už len opakujú:

- \( 6\langle 10 \rangle = 5\langle 10 \rangle \),
- \( 7\langle 10 \rangle = 4\langle 10 \rangle \),
- \( 8\langle 10 \rangle = 3\langle 10 \rangle \),
- \( 9\langle 10 \rangle = 2\langle 10 \rangle \),
- \( 10\langle 10 \rangle = \langle 10 \rangle \).

Takže grupa \( \mathbb{Z}_{11}^{\ast} \) sa rozpadne na päť dvojprvkových tried rozkladu.

To je presne obraz toho, čo neskôr tvrdí Lagrangeova veta: počet prvkov podgrupy musí deliť počet prvkov grupy.

Tu má \( \langle 10 \rangle \) dva prvky a celá grupa \( \mathbb{Z}_{11}^{\ast} \) má desať prvkov. Naozaj:

\[
2 \mid 10.
\]

## 5. Dve základné lemy o triedach rozkladu

### 5.1 Prvá lema: všetky triedy rozkladu majú rovnaký počet prvkov ako \( H \)

!!! info "Tvrdenie"

    Počet prvkov množiny \( aH \) je taký istý ako počet prvkov množiny \( H \). Teda

    \[
    |aH| = |H|.
    \]

!!! note "Vysvetlenie dôkazu"

    Myšlienka dôkazu je takáto: ak prvky \( H \) vynásobíme zľava pevným prvkom \( a \), nevzniknú tým žiadne nové zhodnosti. Inými slovami, dva rôzne prvky z \( H \) nemôžu po vynásobení zľava prvkom \( a \) splynúť do jedného.

??? success "Dôkaz"

    Nech

    \[
    H = \{h_1, \dots, h_k\}.
    \]

    Potom

    \[
    aH = \{ah_1, \dots, ah_k\}.
    \]

    Treba ukázať, že tieto prvky sú všetky navzájom rôzne.

    Predpokladajme, že

    \[
    ah_i = ah_j.
    \]

    Keďže sme v grupe, prvok \( a \) má inverz \( a^{-1} \). Vynásobme rovnosť zľava prvkom \( a^{-1} \):

    \[
    a^{-1}(ah_i) = a^{-1}(ah_j).
    \]

    Podľa asociativity dostaneme

    \[
    (a^{-1}a)h_i = (a^{-1}a)h_j.
    \]

    Keďže \( a^{-1}a = e \), platí

    \[
    eh_i = eh_j,
    \]

    teda

    \[
    h_i = h_j.
    \]

    To znamená, že ak sa dva prvky v \( aH \) rovnajú, museli už byť rovnaké aj pôvodné prvky v \( H \).

    Preto sa pri prechode z \( H \) na \( aH \) nič „nezlepí“.
    Počet prvkov sa nezmení.

    Teda

    \[
    |aH| = |H|.
    \]

### 5.2 Druhá lema: ak sa dve triedy rozkladu pretínajú, tak sú rovnaké

!!! info "Tvrdenie"

    Ak

    \[
    a_1H \cap a_2H \neq \varnothing,
    \]

    tak

    \[
    a_1H = a_2H.
    \]

Toto je jedno z najdôležitejších tvrdení v celej téme. Hovorí presne to, že dve triedy rozkladu nemôžu mať „trochu spoločné“. Buď sú úplne rovnaké, alebo sa vôbec nepretínajú.

!!! note "Vysvetlenie dôkazu"

    Ak majú dve triedy rozkladu spoločný prvok, tak sa dá pomocou tohto prvku vyjadriť jeden reprezentant pomocou druhého a prvku z podgrupy \( H \). Odtiaľ potom vyplynie, že každý prvok jednej triedy patrí aj do druhej.

??? success "Dôkaz"

    Predpokladajme, že prienik \( a_1H \cap a_2H \) nie je prázdny.

    Potom existuje prvok \( c \) taký, že

    \[
    c \in a_1H
    \quad \text{a zároveň} \quad
    c \in a_2H.
    \]

    Z definície triedy rozkladu to znamená, že existujú prvky \( h_1, h_2 \in H \) tak, že

    \[
    c = a_1h_1 = a_2h_2.
    \]

    Z tejto rovnosti chceme vyjadriť \( a_1 \) pomocou \( a_2 \).

    Máme

    \[
    a_1h_1 = a_2h_2.
    \]

    Vynásobme sprava prvkom \( h_1^{-1} \):

    \[
    a_1 = a_2h_2h_1^{-1}.
    \]

    Označme si

    \[
    h_3 = h_2h_1^{-1}.
    \]

    Keďže \( H \) je podgrupa, patrí do nej aj súčin \( h_2h_1^{-1} \). Teda \( h_3 \in H \).

    Dostali sme

    \[
    a_1 = a_2h_3.
    \]

    Teraz vezmime ľubovoľný prvok \( v \in a_1H \). Potom existuje \( h \in H \) tak, že

    \[
    v = a_1h.
    \]

    Dosadíme za \( a_1 \) výraz \( a_2h_3 \):

    \[
    v = a_2h_3h.
    \]

    Keďže \( h_3 \) aj \( h \) patria do \( H \) a \( H \) je uzavretá na súčin, prvok \( h_3h \in H \).

    Teda \( v \in a_2H \).

    Ukázali sme, že

    \[
    a_1H \subseteq a_2H.
    \]

    Úplne rovnakým postupom sa ukáže aj opačné zahrnutie:

    \[
    a_2H \subseteq a_1H.
    \]

    Preto

    \[
    a_1H = a_2H.
    \]

### 5.3 Dôležitý záver

Z druhej lemy okamžite vyplýva nasledujúci záver.

!!! tip "Dôsledok"

    Dve triedy rozkladu sú buď rovnaké, alebo disjunktné.

To znamená:

- ak majú spoločný aspoň jeden prvok, sú celé rovnaké,
- ak nie sú rovnaké, nemajú spoločný ani jeden prvok.

Práve toto umožní rozložiť grupu na navzájom disjunktné kúsky.

## 6. Lagrangeova veta

### 6.1 Znenie vety

!!! info "Veta"

    Ak \( G \) je konečná grupa a \( H \) je jej podgrupa, tak rád podgrupy \( H \) je deliteľom rádu grupy \( G \).

    Zápisom:

    \[
    |H| \mid |G|.
    \]

Tu:

- \( |H| \) znamená počet prvkov podgrupy \( H \),
- \( |G| \) znamená počet prvkov grupy \( G \).

Toto je základná veta o konečných grupách.

### 6.2 Prečo je to pravdivé

Treba si uvedomiť tri veci.

**Prvá vec: každý prvok grupy patrí do nejakej triedy rozkladu.**

Nech \( a \in G \).

Potom \( e \in H \), lebo \( H \) je podgrupa.

Preto:

\[
a = ae.
\]

A keďže \( e \in H \), dostávame:

\[
a \in aH.
\]

Teda každý prvok grupy leží aspoň v jednej triede rozkladu.

Z toho vyplýva: zjednotenie všetkých tried rozkladu \( aH \) je celá grupa \( G \).

**Druhá vec: rôzne triedy rozkladu sú disjunktné.**

To už vieme z druhej lemy: ak sa dve triedy pretnú, musia byť rovnaké.

Takže keď vyberieme všetky rôzne triedy rozkladu, budú navzájom disjunktné.

**Tretia vec: všetky triedy majú rovnaký počet prvkov.**

To je obsah prvej lemy: každá trieda \( aH \) má presne \( |H| \) prvkov.

### 6.3 Dôkaz Lagrangeovej vety

!!! note "Vysvetlenie dôkazu"

    Dôkaz stojí na troch už známych faktoch: grupa sa pokryje triedami rozkladu, rôzne triedy sa nepretínajú a každá trieda má rovnaký počet prvkov ako podgrupa \( H \). Preto sa počet prvkov celej grupy musí dať zapísať ako násobok čísla \( |H| \).

??? success "Dôkaz"

    Nech všetky rôzne triedy rozkladu sú:

    \[
    a_1H, a_2H, \dots, a_sH.
    \]

    Keďže ich zjednotenie je \( G \) a sú navzájom disjunktné, dostávame

    \[
    G = a_1H \cup a_2H \cup \dots \cup a_sH.
    \]

    Preto počet prvkov celej grupy je súčet počtov prvkov týchto tried:

    \[
    |G| = |a_1H| + |a_2H| + \dots + |a_sH|.
    \]

    Každá z týchto tried má podľa prvej lemy práve \( |H| \) prvkov, teda

    \[
    |a_1H| = |a_2H| = \dots = |a_sH| = |H|.
    \]

    Takže

    \[
    |G| = |H| + |H| + \dots + |H| \quad (s\text{-krát}),
    \]

    čiže

    \[
    |G| = s \cdot |H|.
    \]

    To znamená, že

    \[
    |H| \mid |G|.
    \]

    Tým je Lagrangeova veta dokázaná.

## 7. Dôsledky Lagrangeovej vety

### 7.1 Dôsledok: pre každý prvok \( a \) platí \( a^{|G|} = e \)

Nech \( a \in G \).

Označme

\[
r = \operatorname{rad} a.
\]

Podgrupa \( \langle a \rangle \) je podgrupa grupy \( G \) a počet jej prvkov je práve \( \operatorname{rad} a \), teda \( r \).

!!! tip "Dôsledok"

    Podľa Lagrangeovej vety platí

    \[
    r \mid |G|.
    \]

    Preto existuje celé číslo \( k \) také, že

    \[
    |G| = kr.
    \]

Teraz počítame:

\[
a^{|G|} = a^{kr} = (a^r)^k = e^k = e.
\]

Teda naozaj:

\[
a^{|G|} = e.
\]

To je veľmi silný dôsledok. Hovorí, že ak je grupa konečná, potom každému prvku po umocnení na počet prvkov celej grupy vyjde jednotka.

### 7.2 Dôsledok: grupa s prvočíselným počtom prvkov je cyklická

Nech

\[
|G| = p,
\]

kde \( p \) je prvočíslo.

Vyberme ľubovoľný prvok \( a \in G \), pričom \( a \neq e \).

Pozrime sa na rád prvku \( a \).

!!! tip "Dôsledok"

    Podľa Lagrangeovej vety musí \( \operatorname{rad} a \) deliť \( |G| = p \).

    Keďže \( p \) je prvočíslo, jeho kladné delitele sú len \( 1 \) a \( p \).

    Ale \( a \neq e \), takže \( \operatorname{rad} a \neq 1 \).

    Preto

    \[
    \operatorname{rad} a = p.
    \]

To znamená, že podgrupa \( \langle a \rangle \) má \( p \) prvkov.

Lenže celá grupa \( G \) má tiež \( p \) prvkov.

Podgrupa \( \langle a \rangle \) má teda rovnako veľa prvkov ako \( G \), a preto musí byť

\[
G = \langle a \rangle.
\]

Teda \( G \) je cyklická.

Toto je veľmi pekný dôsledok: každá grupa s prvočíselným počtom prvkov je automaticky cyklická.

## Záverečné zhrnutie

Najdôležitejšie myšlienky z tejto časti sú tieto.

Rád prvku \( a \) je najmenšie kladné číslo \( r \), pre ktoré

\[
a^r = e.
\]

Ak vieme, že \( a^m = e \) a \( a^n = e \), tak \( \operatorname{rad} a \) delí \( m \) aj \( n \). Preto sa dá z deliteľnosti často zistiť, že \( a \) musí byť jednotkový prvok.

Z mocnín jedného prvku vzniká cyklická podgrupa \( \langle a \rangle \). Ak má \( a \) rád \( n \), tak \( \langle a \rangle \) obsahuje presne \( n \) prvkov a mocniny sa opakujú po \( n \) krokoch.

Na to, aby bola množina \( H \) podgrupou, stačí overiť:

- že nie je prázdna,
- že je uzavretá na súčin,
- že je uzavretá na inverzy.

Dôležité príklady sú:

- množina prvkov komutujúcich s pevným prvkom,
- prienik dvoch podgrúp.

Ak \( H \) je podgrupa a \( a \) je prvok grupy, množina

\[
aH = \{ah ; h \in H\}
\]

sa nazýva trieda rozkladu.

Všetky triedy rozkladu majú rovnaký počet prvkov ako \( H \). Ak sa dve triedy rozkladu pretnú, sú celé rovnaké.

Z týchto faktov vyplýva Lagrangeova veta: v konečnej grupe počet prvkov podgrupy delí počet prvkov celej grupy.

A z nej ďalej plynie:

- pre každý prvok \( a \in G \) platí \( a^{|G|} = e \),
- každá grupa s prvočíselným počtom prvkov je cyklická.

## Zhrnutie viet a dôkazov

!!! info "Tvrdenie"

    Ak \( p \) je prvočíslo a

    \[
    a^p = e,
    \]

    tak nastáva jedna z dvoch možností:

    - buď \( a = e \),
    - alebo \( \operatorname{rad} a = p \).

??? success "Dôkaz"

    Nech \( r = \operatorname{rad} a \).

    Keďže

    \[
    a^p = e,
    \]

    rád prvku \( r \) delí \( p \).

    Ale \( p \) je prvočíslo, takže jeho jediné kladné delitele sú \( 1 \) a \( p \).

    Preto:

    - ak \( r = 1 \), potom \( a = e \),
    - ak \( r \neq 1 \), musí byť \( r = p \).

    Teda naozaj platí, že buď \( a = e \), alebo \( \operatorname{rad} a = p \).

---

!!! abstract "Definícia"

    Definujme množinu

    \[
    H = \{ b \in G ; ab = ba \}.
    \]

??? success "Dôkaz"

    **Krok 1: \( H \) nie je prázdna**

    Stačí ukázať, že \( e \in H \).

    Máme

    \[
    ae = a
    \quad \text{a zároveň} \quad
    ea = a.
    \]

    Teda

    \[
    ae = ea.
    \]

    Preto \( e \in H \).

    **Krok 2: uzavretosť na súčin**

    Nech \( h_1, h_2 \in H \).

    To znamená, že

    \[
    ah_1 = h_1 a
    \quad \text{a} \quad
    ah_2 = h_2 a.
    \]

    Chceme ukázať, že aj \( h_1 h_2 \in H \), teda že

    \[
    a(h_1 h_2) = (h_1 h_2)a.
    \]

    Začnime z jednej strany:

    \[
    (h_1 h_2)a = h_1(h_2 a).
    \]

    Keďže \( h_2 \in H \), môžeme zameniť \( h_2 a \) za \( a h_2 \):

    \[
    (h_1 h_2)a = h_1(a h_2).
    \]

    Teraz použijeme asociativitu:

    \[
    h_1(a h_2) = (h_1 a)h_2.
    \]

    A keďže \( h_1 \in H \), máme \( h_1 a = a h_1 \), teda

    \[
    (h_1 a)h_2 = (a h_1)h_2 = a(h_1 h_2).
    \]

    Dostali sme

    \[
    (h_1 h_2)a = a(h_1 h_2).
    \]

    Preto \( h_1 h_2 \in H \).

    **Krok 3: uzavretosť na inverz**

    Nech \( h \in H \). Potom

    \[
    ah = ha.
    \]

    Chceme dokázať, že aj \( h^{-1} \in H \), teda že

    \[
    ah^{-1} = h^{-1}a.
    \]

    Začneme rovnosťou

    \[
    ah = ha.
    \]

    Vynásobme ju zľava prvkom \( h^{-1} \):

    \[
    h^{-1}ah = h^{-1}ha.
    \]

    Na pravej strane je \( h^{-1}h = e \), takže dostaneme

    \[
    h^{-1}ah = ea = a.
    \]

    Teraz vynásobme túto rovnosť sprava prvkom \( h^{-1} \):

    \[
    h^{-1}a = ah^{-1}.
    \]

    Teda naozaj \( h^{-1} \in H \).

    Keďže sú splnené všetky tri podmienky, \( H \) je podgrupa grupy \( G \).

---

!!! info "Tvrdenie"

    Počet prvkov množiny \( aH \) je taký istý ako počet prvkov množiny \( H \). Teda

    \[
    |aH| = |H|.
    \]

??? success "Dôkaz"

    Nech

    \[
    H = \{h_1, \dots, h_k\}.
    \]

    Potom

    \[
    aH = \{ah_1, \dots, ah_k\}.
    \]

    Treba ukázať, že tieto prvky sú všetky navzájom rôzne.

    Predpokladajme, že

    \[
    ah_i = ah_j.
    \]

    Keďže sme v grupe, prvok \( a \) má inverz \( a^{-1} \). Vynásobme rovnosť zľava prvkom \( a^{-1} \):

    \[
    a^{-1}(ah_i) = a^{-1}(ah_j).
    \]

    Podľa asociativity dostaneme

    \[
    (a^{-1}a)h_i = (a^{-1}a)h_j.
    \]

    Keďže \( a^{-1}a = e \), platí

    \[
    eh_i = eh_j,
    \]

    teda

    \[
    h_i = h_j.
    \]

    To znamená, že ak sa dva prvky v \( aH \) rovnajú, museli už byť rovnaké aj pôvodné prvky v \( H \).

    Preto sa pri prechode z \( H \) na \( aH \) nič „nezlepí“.
    Počet prvkov sa nezmení.

    Teda

    \[
    |aH| = |H|.
    \]

---

!!! info "Tvrdenie"

    Ak

    \[
    a_1H \cap a_2H \neq \varnothing,
    \]

    tak

    \[
    a_1H = a_2H.
    \]

Toto je jedno z najdôležitejších tvrdení v celej téme. Hovorí presne to, že dve triedy rozkladu nemôžu mať „trochu spoločné“. Buď sú úplne rovnaké, alebo sa vôbec nepretínajú.

??? success "Dôkaz"

    Predpokladajme, že prienik \( a_1H \cap a_2H \) nie je prázdny.

    Potom existuje prvok \( c \) taký, že

    \[
    c \in a_1H
    \quad \text{a zároveň} \quad
    c \in a_2H.
    \]

    Z definície triedy rozkladu to znamená, že existujú prvky \( h_1, h_2 \in H \) tak, že

    \[
    c = a_1h_1 = a_2h_2.
    \]

    Z tejto rovnosti chceme vyjadriť \( a_1 \) pomocou \( a_2 \).

    Máme

    \[
    a_1h_1 = a_2h_2.
    \]

    Vynásobme sprava prvkom \( h_1^{-1} \):

    \[
    a_1 = a_2h_2h_1^{-1}.
    \]

    Označme si

    \[
    h_3 = h_2h_1^{-1}.
    \]

    Keďže \( H \) je podgrupa, patrí do nej aj súčin \( h_2h_1^{-1} \). Teda \( h_3 \in H \).

    Dostali sme

    \[
    a_1 = a_2h_3.
    \]

    Teraz vezmime ľubovoľný prvok \( v \in a_1H \). Potom existuje \( h \in H \) tak, že

    \[
    v = a_1h.
    \]

    Dosadíme za \( a_1 \) výraz \( a_2h_3 \):

    \[
    v = a_2h_3h.
    \]

    Keďže \( h_3 \) aj \( h \) patria do \( H \) a \( H \) je uzavretá na súčin, prvok \( h_3h \in H \).

    Teda \( v \in a_2H \).

    Ukázali sme, že

    \[
    a_1H \subseteq a_2H.
    \]

    Úplne rovnakým postupom sa ukáže aj opačné zahrnutie:

    \[
    a_2H \subseteq a_1H.
    \]

    Preto

    \[
    a_1H = a_2H.
    \]

---

!!! info "Lagrangeova veta"

    Ak \( G \) je konečná grupa a \( H \) je jej podgrupa, tak rád podgrupy \( H \) je deliteľom rádu grupy \( G \).

    Zápisom:

    \[
    |H| \mid |G|.
    \]

??? success "Dôkaz"

    Nech všetky rôzne triedy rozkladu sú:

    \[
    a_1H, a_2H, \dots, a_sH.
    \]

    Keďže ich zjednotenie je \( G \) a sú navzájom disjunktné, dostávame

    \[
    G = a_1H \cup a_2H \cup \dots \cup a_sH.
    \]

    Preto počet prvkov celej grupy je súčet počtov prvkov týchto tried:

    \[
    |G| = |a_1H| + |a_2H| + \dots + |a_sH|.
    \]

    Každá z týchto tried má podľa prvej lemy práve \( |H| \) prvkov, teda

    \[
    |a_1H| = |a_2H| = \dots = |a_sH| = |H|.
    \]

    Takže

    \[
    |G| = |H| + |H| + \dots + |H| \quad (s\text{-krát}),
    \]

    čiže

    \[
    |G| = s \cdot |H|.
    \]

    To znamená, že

    \[
    |H| \mid |G|.
    \]

    Tým je Lagrangeova veta dokázaná.