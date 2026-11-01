---
icon: fontawesome/solid/8
---

<button class="md-button md-button--primary" onclick="window.print();">
  Tlačiť
</button>

# Ôsmy týždeň

## Konštruovateľné čísla, kubické polynómy, trisekcia uhla a zostrojiteľnosť pravidelných \( n \)-uholníkov

## Úvod do témy

V tejto časti ide o veľmi dôležitú otázku klasickej geometrie:

**Čo sa dá a čo sa nedá zostrojiť pravítkom a kružidlom?**

Na prvý pohľad môže pôsobiť, že pravítko a kružidlo sú veľmi silné nástroje. Vieme nimi zostrojiť množstvo dĺžok, uhlov, priesečníkov, kolmíc, osí úsečiek, pravidelné trojuholníky, štvoruholníky, päťuholníky a veľa ďalších objektov. Ukáže sa však, že ich možnosti nie sú neobmedzené.

Hlavná myšlienka tejto témy je takáto:

- pri jednej konštrukčnej operácii sa vieme dostať najviac ku kvadratickej rovnici,
- preto sa pri konštrukciách objavujú najmä **druhé odmocniny**,
- ale ku koreňom ireducibilných kubických polynómov sa takto vo všeobecnosti dostať nevieme.

Práve z tejto myšlienky potom vyplynie:

- prečo sa **nedá zostrojiť uhol \( 20^\circ \)**,
- prečo sa všeobecne **nedá trisekovať ľubovoľný uhol**,
- a prečo sa **nedá zostrojiť pravidelný \( 7 \)-uholník**.

## 1. Konštrukcie a kvadratické rozšírenia

Aby sme vedeli presne opísať, čo sa dá zostrojiť, budeme pracovať s poľami.

Pole si tu môžeme predstaviť ako množinu čísel, v ktorej vieme počítať so sčítaním, odčítaním, násobením a delením nenulovým číslom. Najzákladnejším poľom je pole racionálnych čísel \( \mathbb{Q} \).

Ak začíname s bodmi, ktorých súradnice ležia v nejakom poli \( F \), chceme vedieť, aké súradnice môže mať nový bod, ktorý vznikne jedným konštrukčným krokom.

### 1.1 Jeden konštrukčný krok

!!! info "Veta"

    Nech je dané pole \( F \) a body

    \[
    A_1 = [x_1, y_1], \dots, A_n = [x_n, y_n],
    \]

    kde všetky súradnice \( x_i, y_i \) patria do poľa \( F \).

    Ak bod \( A = [x, y] \) vznikne z týchto bodov **jedným** konštrukčným krokom pravítkom a kružidlom, potom platí jedna z dvoch možností:

    1. buď \( x, y \in F \),
    2. alebo existuje číslo \( d \in F \) tak, že \( x, y \in F(\sqrt{d}) \).

Táto veta hovorí niečo veľmi dôležité:

**Jeden konštrukčný krok nás nikdy nedostane ďalej než k druhej odmocnine.**

Inými slovami:

- buď pri konštrukcii zostaneme v tom istom poli,
- alebo k nemu musíme pridať jednu druhú odmocninu.

To je algebraický opis toho, čo sa deje v klasickej geometrii.

#### 1.1.1 Prečo je to pravda

Pri konštrukciách vznikajú tri základné situácie.

##### a) Priesečník dvoch priamok

Rovnice priamok sú lineárne. Keď hľadáme ich priesečník, riešime sústavu dvoch lineárnych rovníc.

Pri riešení lineárnej sústavy používame iba sčítanie, odčítanie, násobenie a delenie. Tieto operácie nás nevyvedú z poľa \( F \).

Preto súradnice priesečníka patria do \( F \).

##### b) Priesečník priamky a kružnice

Tu vieme jednu premennú vyjadriť z lineárnej rovnice priamky a dosadiť ju do rovnice kružnice.

Po dosadení dostaneme **kvadratickú rovnicu**. Jej riešenie má tvar s druhou odmocninou. Preto súradnice priesečníka patria buď do \( F \), alebo do poľa \( F(\sqrt{d}) \) pre vhodné \( d \in F \).

##### c) Priesečník dvoch kružníc

Aj tu sa po odčítaní rovníc kružníc dostaneme najprv k lineárnej rovnici. Potom sa problém zredukuje na predchádzajúci prípad, teda opäť najviac na kvadratickú rovnicu.

Preto ani v tomto prípade nevznikne nič „horšie“ než druhá odmocnina.

#### 1.1.2 Záver

Pri jednom kroku sa teda môže objaviť najviac kvadratické rozšírenie.

To je základná algebraická bariéra klasických konštrukcií.

### 1.2 Konečný počet konštrukčných krokov

!!! info "Veta"

    Nech bod \( A = [x, y] \) vznikne konečným počtom konštrukčných krokov pravítkom a kružidlom.

    Potom existuje postupnosť čísel \( d_1, d_2, \dots, d_k \) taká, že

    - \( d_1 \in \mathbb{Q} \),
    - \( d_2 \in \mathbb{Q}(\sqrt{d_1}) \),
    - \(\dots\)
    - \( d_j \in \mathbb{Q}(\sqrt{d_1}, \dots, \sqrt{d_{j-1}}) \),

    a súradnice \( x, y \) patria do poľa

    \[
    \mathbb{Q}(\sqrt{d_1}, \dots, \sqrt{d_k}).
    \]

Táto veta hovorí, že každá zostrojiteľná súradnica vzniká tak, že k poľu \( \mathbb{Q} \) postupne pridávame **druhé odmocniny**.

Nie kubické odmocniny.  
Nie korene všeobecných kubických rovníc.  
Nie ľubovoľné algebraické čísla.

Len opakované pridávanie druhých odmocnín.

#### 1.2.1 Prečo je to dôležité

Ak sa nám podarí ukázať, že nejaké číslo sa nedá získať z \( \mathbb{Q} \) postupným pridávaním druhých odmocnín, potom sme dokázali, že sa **nedá zostrojiť pravítkom a kružidlom**.

Práve toto budeme robiť pri číslach ako:

- \( \sqrt[3]{2} \),
- \( \cos 20^\circ \),
- hodnoty súvisiace s pravidelným \( 7 \)-uholníkom.

## 2. Kubické polynómy a kvadratické rozšírenia

Teraz prichádza kľúčový krok.

Ukážeme, že ak kubický polynóm nemá koreň v poli \( F \), tak ho nenájdeme ani po pridaní jednej druhej odmocniny.

To je veľmi silné tvrdenie.

### 2.1 Koreň kubického polynómu sa nevynorí v jednom kvadratickom rozšírení

!!! info "Veta"

    Nech \( g(x) \) je kubický polynóm nad poľom \( F \) a nech nemá koreň v \( F \).

    Potom nemá koreň ani v poli \( F(\sqrt{d}) \), kde \( d \in F \).

Ak kubická rovnica nemá riešenie už v poli \( F \), tak pridanie jednej druhej odmocniny jej zázračne riešenie nedá.

To je presne dôvod, prečo sa klasickými konštrukciami nedostaneme ku koreňom „pravých“ kubických problémov.

### 2.2 Dôkaz krok po kroku

Predpokladajme naopak, že existuje číslo \( \alpha \) v poli \( F(\sqrt{d}) \) také, že

\[
g(\alpha) = 0.
\]

Chceme ukázať, že to vedie ku sporu.

!!! note "Vysvetlenie dôkazu"

    Základná myšlienka dôkazu je táto: ak by koreň kubického polynómu ležal v kvadratickom rozšírení, potom by zároveň spĺňal kvadratickú rovnicu nad poľom \( F \). Porovnaním týchto dvoch informácií sa ukáže, že kubický polynóm by už musel mať koreň priamo v \( F \), čo odporuje predpokladu.

??? success "Dôkaz"

    **Krok 1: Ak \( \alpha \in F(\sqrt{d}) \), potom spĺňa kvadratickú rovnicu nad \( F \)**

    Každý prvok poľa \( F(\sqrt{d}) \) má tvar

    \[
    a + b\sqrt{d},
    \]

    kde \( a, b \in F \).

    Takýto prvok je koreňom nejakej kvadratickej rovnice s koeficientmi z \( F \). Označme si taký kvadratický polynóm písmenom \( f(x) \), teda

    \[
    f(\alpha) = 0.
    \]

    **Krok 2: Vydelíme kubický polynóm \( g(x) \) kvadratickým polynómom \( f(x) \)**

    Keďže \( g(x) \) má stupeň \( 3 \) a \( f(x) \) má stupeň \( 2 \), po vydelení dostaneme:

    - lineárny podiel,
    - zvyšok stupňa najviac \( 1 \).

    Po vhodnom označení môžeme písať

    \[
    g(x) = (x - x_1)f(x) + cx + d,
    \]

    kde \( x_1, c, d \in F \).

    Dôležité je, že zvyšok má tvar \( cx + d \), teda je lineárny.

    **Krok 3: Dosadíme \( x = \alpha \)**

    Keďže \( g(\alpha) = 0 \) a \( f(\alpha) = 0 \), dostaneme

    \[
    0 = g(\alpha) = (\alpha - x_1)f(\alpha) + c\alpha + d = 0 + c\alpha + d.
    \]

    Teda

    \[
    c\alpha + d = 0.
    \]

    **Krok 4: Rozoberieme dve možnosti**

    **Možnosť A: \( c \neq 0 \)**

    V tom prípade môžeme vyjadriť \( \alpha \):

    \[
    \alpha = -\frac{d}{c}.
    \]

    Keďže \( c \) aj \( d \) patria do \( F \), vyplýva z toho, že \( \alpha \in F \).

    To je však spor, pretože sme predpokladali, že \( g(x) \) nemá koreň v \( F \).

    **Možnosť B: \( c = 0 \)**

    Potom z rovnice \( c\alpha + d = 0 \) dostaneme aj \( d = 0 \).

    Teda zvyšok je nulový a platí

    \[
    g(x) = (x - x_1)f(x).
    \]

    To znamená, že \( x_1 \) je koreň polynómu \( g(x) \).

    Keďže \( x_1 \in F \), opäť by \( g(x) \) mal koreň v \( F \).

    To je zase spor.

    **Záver**

    Obe možnosti vedú ku sporu.

    Preto kubický polynóm, ktorý nemá koreň v \( F \), nemôže získať koreň ani po pridaní jednej druhej odmocniny.

## 3. Dôsledok: koreň ireducibilného kubického polynómu nie je zostrojiteľný

!!! info "Veta"

    Koreň ireducibilného kubického polynómu sa nedá zostrojiť pomocou pravítka a kružidla.

### 3.1 Čo znamená „ireducibilný“

!!! abstract "Definícia"

    Polynóm je **ireducibilný** nad poľom \( \mathbb{Q} \), ak sa nedá rozložiť na súčin polynómov menšieho stupňa s racionálnymi koeficientmi.

Pri kubickom polynóme to v praxi znamená:

- ak je reducibilný nad \( \mathbb{Q} \),
- musí mať lineárny činiteľ,
- a teda musí mať racionálny koreň.

Pre kubický polynóm je teda ireducibilita úzko spojená s tým, že nemá racionálny koreň.

### 3.2 Prečo z predchádzajúcej vety plynie tento záver

Predstavme si, že \( x \) je koreň ireducibilného kubického polynómu a zároveň je zostrojiteľný.

Podľa predchádzajúcej vety o konečnom počte konštrukčných krokov by potom \( x \) patril do poľa, ktoré vzniklo z \( \mathbb{Q} \) postupným pridávaním druhých odmocnín.

Teda by existovala veža polí

\[
\mathbb{Q} \subset K_1 \subset K_2 \subset \dots \subset K_m,
\]

kde každý prechod je kvadratické rozšírenie.

Pozrime sa na prvé pole v tejto veži, v ktorom sa \( x \) objaví.

- V predchádzajúcom poli ešte \( x \) neleží.
- V nasledujúcom poli už \( x \) leží.

To však znamená, že sme koreň kubického polynómu získali pridaním jednej druhej odmocniny.

Ale to presne odporuje predchádzajúcej vete o kubickom polynóme.

Preto taký koreň zostrojiť nemožno.

### 3.3 Hlavná myšlienka

Klasické konštrukcie produkujú iba čísla vznikajúce pomocou opakovaných druhých odmocnín.

Koreň „skutočne kubického“ problému medzi také čísla nepatrí.

## 4. Trisekcia uhla a nemožnosť zostrojiť uhol \( 20^\circ \)

Jedna z najslávnejších klasických úloh je **trisekcia uhla**, teda rozdelenie uhla na tri rovnaké časti pomocou pravítka a kružidla.

Ukážeme konkrétny príklad:

**uhol \( 20^\circ \) sa nedá zostrojiť**.

Ak by sa dal zostrojiť uhol \( 20^\circ \), potom by sa dal zostrojiť aj uhol \( 60^\circ \) ako jeho trojnásobok. Práve vzťah medzi \( 20^\circ \) a \( 60^\circ \) sa zapíše pomocou vzorca pre \( \cos 3\varphi \).

### 4.1 Prečo stačí skúmať číslo \( \cos 20^\circ \)

Na jednotkovej kružnici má bod, ktorý zodpovedá uhlu \( 20^\circ \), súradnice

\[
(\cos 20^\circ, \sin 20^\circ).
\]

To znamená:

- ak vieme zostrojiť uhol \( 20^\circ \), vieme zostrojiť aj dĺžku \( \cos 20^\circ \),
- a naopak, zo zostrojenej hodnoty \( \cos 20^\circ \) vieme príslušný bod na jednotkovej kružnici určiť.

Preto platí:

**uhol \( 20^\circ \) sa dá zostrojiť práve vtedy, keď sa dá zostrojiť číslo \( \cos 20^\circ \).**

Teda nám stačí dokázať, že číslo \( \cos 20^\circ \) nie je zostrojiteľné.

### 4.2 Odvodenie rovnice pre \( \cos 20^\circ \)

Označme

\[
\varphi = 20^\circ.
\]

Potom

\[
3\varphi = 60^\circ.
\]

Použijeme vzorec pre kosínus trojnásobného uhla.

Začneme od identity

\[
\cos 3\varphi = \cos(2\varphi + \varphi).
\]

Podľa vzorca pre kosínus súčtu platí

\[
\cos(2\varphi + \varphi) = \cos 2\varphi \cdot \cos \varphi - \sin 2\varphi \cdot \sin \varphi.
\]

Teraz použijeme známe vzorce

\[
\cos 2\varphi = \cos^2 \varphi - \sin^2 \varphi,
\]

\[
\sin 2\varphi = 2 \sin \varphi \cos \varphi.
\]

Dostávame

\[
\cos 3\varphi = (\cos^2 \varphi - \sin^2 \varphi)\cos \varphi - (2 \sin \varphi \cos \varphi)\sin \varphi.
\]

Roztvorme súčin:

\[
\cos 3\varphi = \cos^3 \varphi - \sin^2 \varphi \cos \varphi - 2 \sin^2 \varphi \cos \varphi.
\]

Zlúčime podobné členy:

\[
\cos 3\varphi = \cos^3 \varphi - 3 \sin^2 \varphi \cos \varphi.
\]

Vyňatím \( \cos \varphi \) dostaneme

\[
\cos 3\varphi = \cos \varphi (\cos^2 \varphi - 3 \sin^2 \varphi).
\]

Teraz použijeme vzťah

\[
\sin^2 \varphi = 1 - \cos^2 \varphi.
\]

Po dosadení:

\[
\cos 3\varphi = \cos \varphi (\cos^2 \varphi - 3(1 - \cos^2 \varphi))
\]

\[
= \cos \varphi (\cos^2 \varphi - 3 + 3\cos^2 \varphi)
\]

\[
= \cos \varphi (4\cos^2 \varphi - 3)
\]

\[
= 4\cos^3 \varphi - 3\cos \varphi.
\]

Teda platí známy vzorec

\[
\cos 3\varphi = 4\cos^3 \varphi - 3\cos \varphi.
\]

### 4.3 Dosadenie \( \varphi = 20^\circ \)

Keďže \( 3\varphi = 60^\circ \), dostaneme

\[
\cos 60^\circ = 4\cos^3 20^\circ - 3\cos 20^\circ.
\]

A pretože

\[
\cos 60^\circ = \frac{1}{2},
\]

platí

\[
4\cos^3 20^\circ - 3\cos 20^\circ = \frac{1}{2}.
\]

Vynásobíme dvoma:

\[
8\cos^3 20^\circ - 6\cos 20^\circ - 1 = 0.
\]

Označme

\[
x = \cos 20^\circ.
\]

Potom \( x \) spĺňa rovnicu

\[
8x^3 - 6x - 1 = 0.
\]

Teda číslo \( \cos 20^\circ \) je koreňom kubického polynómu

\[
8x^3 - 6x - 1.
\]

### 4.4 Prečo je polynóm \( 8x^3 - 6x - 1 \) ireducibilný nad \( \mathbb{Q} \)

Keďže ide o kubický polynóm, na jeho reducibilitu stačí skúmať, či má racionálny koreň.

Predpokladajme, že má racionálny koreň \( \frac{p}{q} \) v základnom tvare, teda

- \( p, q \) sú celé čísla,
- \( q \neq 0 \),
- zlomok \( \frac{p}{q} \) je krátený.

Podľa vety o racionálnych koreňoch musí platiť:

- \( p \) delí absolútnu hodnotu konštantného člena, teda \( 1 \),
- \( q \) delí absolútnu hodnotu vedúceho koeficientu, teda \( 8 \).

Preto sú možné iba tieto kandidáty:

\[
\pm 1, \pm \frac{1}{2}, \pm \frac{1}{4}, \pm \frac{1}{8}.
\]

!!! example "Príklad"

    Teraz ich dosadíme.

    **\( x = 1 \)**

    \[
    8 \cdot 1^3 - 6 \cdot 1 - 1 = 8 - 6 - 1 = 1 \neq 0.
    \]

    **\( x = -1 \)**

    \[
    8 \cdot (-1)^3 - 6 \cdot (-1) - 1 = -8 + 6 - 1 = -3 \neq 0.
    \]

    **\( x = \frac{1}{2} \)**

    \[
    8 \cdot \frac{1}{8} - 6 \cdot \frac{1}{2} - 1 = 1 - 3 - 1 = -3 \neq 0.
    \]

    **\( x = -\frac{1}{2} \)**

    \[
    8 \cdot \left(-\frac{1}{8}\right) - 6 \cdot \left(-\frac{1}{2}\right) - 1 = -1 + 3 - 1 = 1 \neq 0.
    \]

    **\( x = \frac{1}{4} \)**

    \[
    8 \cdot \frac{1}{64} - 6 \cdot \frac{1}{4} - 1 = \frac{1}{8} - \frac{3}{2} - 1 \neq 0.
    \]

    **\( x = -\frac{1}{4} \)**

    \[
    8 \cdot \left(-\frac{1}{64}\right) - 6 \cdot \left(-\frac{1}{4}\right) - 1
    = -\frac{1}{8} + \frac{3}{2} - 1
    = -\frac{1}{8} + \frac{1}{2}
    = \frac{3}{8} \neq 0.
    \]

    **\( x = \frac{1}{8} \)**

    \[
    8 \cdot \frac{1}{512} - 6 \cdot \frac{1}{8} - 1 = \frac{1}{64} - \frac{3}{4} - 1 \neq 0.
    \]

    **\( x = -\frac{1}{8} \)**

    \[
    8 \cdot \left(-\frac{1}{512}\right) - 6 \cdot \left(-\frac{1}{8}\right) - 1
    = -\frac{1}{64} + \frac{3}{4} - 1
    = -\frac{1}{64} - \frac{1}{4} \neq 0.
    \]

Žiadny kandidát nevyšiel.

Teda polynóm \( 8x^3 - 6x - 1 \) nemá racionálny koreň, a preto je nad \( \mathbb{Q} \) ireducibilný.

### 4.5 Záver pre uhol \( 20^\circ \)

Číslo \( \cos 20^\circ \) je koreňom ireducibilného kubického polynómu.

Podľa predchádzajúcej vety sa taký koreň nedá zostrojiť pravítkom a kružidlom.

Preto sa **nedá zostrojiť číslo \( \cos 20^\circ \)**.

A keďže zostrojiteľnosť uhla \( 20^\circ \) je ekvivalentná zostrojiteľnosti čísla \( \cos 20^\circ \), dostávame záver:

!!! tip "Dôsledok"

    **Uhol \( 20^\circ \) sa nedá zostrojiť pravítkom a kružidlom.**

Tým sme dostali konkrétny príklad nemožnosti trisekcie uhla.

## 5. Zostrojiteľnosť pravidelného \( n \)-uholníka

Teraz sa pozrieme na inú klasickú otázku:

**Pre ktoré \( n \) sa dá zostrojiť pravidelný \( n \)-uholník?**

To znamená: pre ktoré \( n \) vieme na kružnici rozdeliť plný uhol na \( n \) rovnakých častí?

### 5.1 Súvis s uhlom \( \frac{2\pi}{n} \)

Pravidelný \( n \)-uholník sa dá zostrojiť práve vtedy, keď vieme zostrojiť stredový uhol

\[
\frac{2\pi}{n}.
\]

Keď vieme zostrojiť tento uhol, vieme zostrojiť aj bod na jednotkovej kružnici so súradnicami

\[
\left(\cos \frac{2\pi}{n}, \sin \frac{2\pi}{n}\right).
\]

Teda musia byť zostrojiteľné čísla

\[
\cos \frac{2\pi}{n}
\quad \text{a} \quad
\sin \frac{2\pi}{n}.
\]

Z teórie konštrukcií potom plynie, že existuje pole \( F \) obsahujúce tieto hodnoty a zároveň

\[
[F : \mathbb{Q}] = 2^k
\]

pre nejaké prirodzené číslo \( k \).

To znamená, že stupeň tohto rozšírenia je mocninou čísla \( 2 \).

### 5.2 Komplexné číslo \( \omega_n \)

Označme

\[
\omega_n = \cos \frac{2\pi}{n} + i \sin \frac{2\pi}{n}.
\]

Toto číslo leží v poli \( F(i) \).

Z toho vyplýva

\[
\mathbb{Q}(\omega_n) \subseteq F(i).
\]

Teraz použijeme dôležitý fakt:

stupeň poľa \( \mathbb{Q}(\omega_n) \) nad \( \mathbb{Q} \) je

\[
[\mathbb{Q}(\omega_n) : \mathbb{Q}] = \varphi(n),
\]

kde \( \varphi \) je Eulerova funkcia.

Keďže \( F \) má stupeň \( 2^k \) a pridaním čísla \( i \) sa stupeň môže nanajvýš zdvojnásobiť, aj pole \( F(i) \) má stupeň, ktorý je mocninou čísla \( 2 \).

Ak je teda \( \mathbb{Q}(\omega_n) \) podpoľom poľa \( F(i) \), musí aj jeho stupeň byť mocninou čísla \( 2 \).

Preto dostávame nevyhnutnú podmienku

\[
\varphi(n) = 2^t
\]

pre nejaké \( t \).

Teda Eulerova funkcia čísla \( n \) musí byť mocninou dvojky.

### 5.3 Tvar čísla \( n \)

Rozložme číslo \( n \) kanonicky na prvočinitele:

\[
n = 2^k \cdot p_1^{k_1} \cdots p_s^{k_s},
\]

kde \( p_1, \dots, p_s \) sú navzájom rôzne nepárne prvočísla.

Pre Eulerovu funkciu platí

\[
\varphi(n) = \varphi(2^k)\cdot \varphi(p_1^{k_1}) \cdots \varphi(p_s^{k_s}),
\]

pričom

\[
\varphi(p_j^{k_j}) = p_j^{k_j - 1}(p_j - 1).
\]

Ak má byť \( \varphi(n) \) mocninou čísla \( 2 \), nesmie v ňom zostať žiadny nepárny prvočíselný činiteľ.

To je možné iba vtedy, keď:

1. každé \( k_j = 1 \),  
   lebo keby \( k_j \) bolo väčšie než \( 1 \), faktor \( p_j^{k_j - 1} \) by bol nepárny a väčší než \( 1 \),

2. a zároveň každé \( p_j - 1 \) musí byť mocninou \( 2 \).

To znamená, že každé nepárne prvočíslo \( p_j \) musí mať tvar

\[
p_j = 2^{m_j} + 1.
\]

Dostávame teda podmienku:

!!! tip "Dôsledok"

    **Pravidelný \( n \)-uholník sa dá zostrojiť len vtedy, keď**

    \[
    n = 2^k \cdot p_1 \cdots p_s,
    \]

    kde \( p_1, \dots, p_s \) sú navzájom rôzne nepárne prvočísla a každé z nich má tvar

    \[
    p_j = 2^{m_j} + 1.
    \]

To je presne algebraická podmienka, ktorá v tejto téme rozhoduje o zostrojiteľnosti pravidelných mnohouholníkov.

## 6. Príklad: pravidelný \( 7 \)-uholník sa nedá zostrojiť

Teraz túto teóriu použijeme na konkrétny príklad.

### 6.1 Otázka

Dá sa zostrojiť pravidelný \( 7 \)-uholník?

### 6.2 Predpoklad

Predpokladajme, že áno.

Ak by sa dal zostrojiť pravidelný \( 7 \)-uholník, dal by sa zostrojiť aj stredový uhol

\[
\frac{2\pi}{7}.
\]

Teda by sa dali zostrojiť aj hodnoty

\[
\cos \frac{2\pi}{7}
\quad \text{a} \quad
\sin \frac{2\pi}{7}.
\]

Preto by existovalo pole \( F \) nad \( \mathbb{Q} \) také, že

\[
[F : \mathbb{Q}] = 2^k
\]

a súčasne

\[
\cos \frac{2\pi}{7}, \sin \frac{2\pi}{7} \in F.
\]

Potom číslo

\[
\omega_7 = \cos \frac{2\pi}{7} + i \sin \frac{2\pi}{7}
\]

patrí do \( F(i) \).

Teda

\[
\mathbb{Q}(\omega_7) \subseteq F(i).
\]

### 6.3 Porovnanie stupňov

Vieme, že

\[
[\mathbb{Q}(\omega_7) : \mathbb{Q}] = \varphi(7).
\]

Keďže \( 7 \) je prvočíslo, platí

\[
\varphi(7) = 6.
\]

Teda

\[
[\mathbb{Q}(\omega_7) : \mathbb{Q}] = 6.
\]

Na druhej strane pole \( F(i) \) má stupeň, ktorý je mocninou \( 2 \).

Ak by \( \mathbb{Q}(\omega_7) \) bolo jeho podpoľom, stupeň \( 6 \) by musel deliť nejakú mocninu čísla \( 2 \).

To však nie je možné, pretože číslo \( 6 \) obsahuje činiteľ \( 3 \) a žiadna mocnina čísla \( 2 \) nie je deliteľná tromi.

Dostali sme spor.

### 6.4 Záver

Predpoklad bol nesprávny.

!!! tip "Dôsledok"

    **Pravidelný \( 7 \)-uholník sa nedá zostrojiť pravítkom a kružidlom.**

## Záverečné zhrnutie

V tejto téme je najdôležitejšie pochopiť tieto body:

1. **Jeden konštrukčný krok** pravítkom a kružidlom vedie najviac ku kvadratickému rozšíreniu, teda najviac k pridaniu druhej odmocniny.

2. **Každé zostrojiteľné číslo** patrí do poľa, ktoré vznikne z \( \mathbb{Q} \) postupným pridávaním druhých odmocnín.

3. **Kubický polynóm**, ktorý nemá koreň v poli \( F \), ho nezíska ani v rozšírení \( F(\sqrt{d}) \).

4. Odtiaľ plynie, že **koreň ireducibilného kubického polynómu nie je zostrojiteľný**.

5. Číslo **\( \cos 20^\circ \)** je koreňom ireducibilného kubického polynómu

   \[
   8x^3 - 6x - 1,
   \]

   a preto sa **uhol \( 20^\circ \) nedá zostrojiť**.

6. Ak sa má dať zostrojiť **pravidelný \( n \)-uholník**, potom musí byť \( \varphi(n) \) mocninou \( 2 \), a z toho vyplýva špeciálny tvar čísla \( n \).

7. Preto sa napríklad **pravidelný \( 7 \)-uholník nedá zostrojiť**.

Hlavná myšlienka celej kapitoly je veľmi jednoduchá, aj keď dôkazy sú algebraicky náročnejšie:

**pravítko a kružidlo vedia pracovať s lineárnymi a kvadratickými problémami, ale nie so skutočne kubickými problémami.**

## Zhrnutie viet a dôkazov

!!! info "Veta"

    Nech \( g(x) \) je kubický polynóm nad poľom \( F \) a nech nemá koreň v \( F \).

    Potom nemá koreň ani v poli \( F(\sqrt{d}) \), kde \( d \in F \).

??? success "Dôkaz"

    **Krok 1: Ak \( \alpha \in F(\sqrt{d}) \), potom spĺňa kvadratickú rovnicu nad \( F \)**

    Každý prvok poľa \( F(\sqrt{d}) \) má tvar

    \[
    a + b\sqrt{d},
    \]

    kde \( a, b \in F \).

    Takýto prvok je koreňom nejakej kvadratickej rovnice s koeficientmi z \( F \). Označme si taký kvadratický polynóm písmenom \( f(x) \), teda

    \[
    f(\alpha) = 0.
    \]

    **Krok 2: Vydelíme kubický polynóm \( g(x) \) kvadratickým polynómom \( f(x) \)**

    Keďže \( g(x) \) má stupeň \( 3 \) a \( f(x) \) má stupeň \( 2 \), po vydelení dostaneme:

    - lineárny podiel,
    - zvyšok stupňa najviac \( 1 \).

    Po vhodnom označení môžeme písať

    \[
    g(x) = (x - x_1)f(x) + cx + d,
    \]

    kde \( x_1, c, d \in F \).

    Dôležité je, že zvyšok má tvar \( cx + d \), teda je lineárny.

    **Krok 3: Dosadíme \( x = \alpha \)**

    Keďže \( g(\alpha) = 0 \) a \( f(\alpha) = 0 \), dostaneme

    \[
    0 = g(\alpha) = (\alpha - x_1)f(\alpha) + c\alpha + d = 0 + c\alpha + d.
    \]

    Teda

    \[
    c\alpha + d = 0.
    \]

    **Krok 4: Rozoberieme dve možnosti**

    **Možnosť A: \( c \neq 0 \)**

    V tom prípade môžeme vyjadriť \( \alpha \):

    \[
    \alpha = -\frac{d}{c}.
    \]

    Keďže \( c \) aj \( d \) patria do \( F \), vyplýva z toho, že \( \alpha \in F \).

    To je však spor, pretože sme predpokladali, že \( g(x) \) nemá koreň v \( F \).

    **Možnosť B: \( c = 0 \)**

    Potom z rovnice \( c\alpha + d = 0 \) dostaneme aj \( d = 0 \).

    Teda zvyšok je nulový a platí

    \[
    g(x) = (x - x_1)f(x).
    \]

    To znamená, že \( x_1 \) je koreň polynómu \( g(x) \).

    Keďže \( x_1 \in F \), opäť by \( g(x) \) mal koreň v \( F \).

    To je zase spor.

    **Záver**

    Obe možnosti vedú ku sporu.

    Preto kubický polynóm, ktorý nemá koreň v \( F \), nemôže získať koreň ani po pridaní jednej druhej odmocniny.


