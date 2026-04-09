---
icon: fontawesome/solid/6
---

<button class="md-button md-button--primary" onclick="window.print()">
  Tlačiť
</button>

# Šiesty týždeň

## Algebra a analytická geometria

## Okruhy, polia a vybrané úlohy z geometrie v súradniciach

## Úvod do témy

V tomto texte sa spájajú dve väčšie oblasti.

Prvou sú okruhy a polia. To sú algebraické štruktúry, v ktorých vieme s prvkami sčitovať a násobiť. Tieto pojmy sú dôležité preto, lebo zjednocujú mnohé známe číselné systémy, napríklad celé čísla, racionálne čísla, reálne čísla, komplexné čísla alebo počítanie modulo prvočíslo.

Druhou oblasťou sú historické geometrické úlohy a ich prepojenie so súradnicovou geometriou. Ide o prechod od klasických konštrukcií pravítkom a kružidlom ku geometrickému počítaniu pomocou súradníc, rovníc priamok a rovníc kružníc. Tento prechod je veľmi dôležitý, pretože ukazuje, ako sa geometrický problém dá premeniť na algebraický výpočet.

!!! note "Poznámka"

    V jednej krátkej historickej vsuvke nie je jedno meno celkom spoľahlivo čitateľné. Na hlavný matematický obsah to však nemá vplyv.

## 1. Okruhy

### 1.1 Čo je okruh

Okruh je množina, v ktorej máme dve operácie:

- sčítanie,
- násobenie.

Myšlienka je takáto: chceme pracovať s objektmi, pri ktorých sa dá sčitovať a násobiť podobne ako s číslami.

!!! abstract "Definícia"

    Okruh \( (R, +, \cdot) \) je štruktúra, pre ktorú platí:

    - \( (R, +) \) je komutatívna grupa,
    - platia distributívne zákony

    \[
    a \cdot (b + c) = ab + ac,
    \]

    \[
    (b + c) \cdot a = ba + ca.
    \]

Teraz si veľmi pomaly vysvetlime, čo to znamená.

#### 1.1.1 Komutatívna grupa vzhľadom na sčítanie

Keď sa povie, že \( (R, +) \) je komutatívna grupa, znamená to:

- sčitovať vieme ľubovoľné dva prvky z \( R \) a výsledok je opäť v \( R \),
- existuje nulový prvok \( 0 \),
- ku každému prvku \( a \) existuje opačný prvok \( -a \),
- sčítanie je asociatívne,
- sčítanie je komutatívne, teda \( a + b = b + a \).

Čiže vzhľadom na sčítanie sa prvky správajú „pekne“ a vieme s nimi manipulovať podobne ako s bežnými číslami.

#### 1.1.2 Distributivita

Distributívny zákon hovorí, že násobenie sa rozdeľuje cez sčítanie.

To znamená:

- keď násobíme súčet zľava, dostaneme súčet súčinov,
- keď násobíme súčet sprava, dostaneme opäť súčet súčinov.

Teda:

\[
a \cdot (b + c) = ab + ac
\]

a zároveň

\[
(b + c) \cdot a = ba + ca.
\]

To je známa vlastnosť z obyčajnej aritmetiky, napríklad:

\[
3 \cdot (4 + 5) = 3 \cdot 4 + 3 \cdot 5.
\]

### 1.2 Komutatívny okruh a okruh s jednotkou

!!! abstract "Definícia"

    Ak je násobenie v okruhu komutatívne, teda ak pre všetky \( a, b \) platí

    \[
    ab = ba,
    \]

    tak hovoríme o komutatívnom okruhu.

!!! abstract "Definícia"

    Ak má okruh prvok \( 1 \), ktorý sa pri násobení správa ako jednotka, teda

    \[
    1 \cdot a = a \cdot 1 = a
    \]

    pre každý prvok \( a \), tak hovoríme o okruhu s jednotkou alebo o okruhu s \( 1 \).

Tieto dve vlastnosti sa často vyskytujú spolu:

- násobenie je komutatívne,
- existuje jednotkový prvok \( 1 \).

### 1.3 Príklad: \( \mathbb{Z}_{20} \)

Ako príklad je uvedená množina zvyškových tried modulo \( 20 \), teda \( \mathbb{Z}_{20} \).

!!! example "Príklad"

    Štruktúra \( \mathbb{Z}_{20} \) je komutatívny okruh s \( 1 \).

To znamená:

- sčítanie modulo \( 20 \) funguje dobre,
- násobenie modulo \( 20 \) tiež,
- násobenie je komutatívne,
- existuje jednotka \( 1 \).

Zároveň je však zdôraznené, že v \( \mathbb{Z}_{20} \) sa „nedá deliť“ tak, ako by sme možno chceli.

!!! note "Vysvetlenie príkladu"

    Keď sa v takomto prostredí povie, že „nedá sa deliť“, v skutočnosti to znamená, že nie každý nenulový prvok má násobkový inverz.

    Napríklad v \( \mathbb{Z}_{20} \) neexistujú prvky, ktoré by sa správali ako

    \[
    \frac{1}{2}, \quad \frac{1}{4}, \quad \frac{1}{5}, \quad \frac{1}{10}.
    \]

    To znamená, že rovnice

    \[
    2x = 1, \quad 4x = 1, \quad 5x = 1, \quad 10x = 1
    \]

    nemajú riešenie v \( \mathbb{Z}_{20} \).

Toto je veľmi dôležité, pretože práve tu začína rozdiel medzi okruhom a poľom. V poli sa dá deliť každým nenulovým prvkom. V \( \mathbb{Z}_{20} \) to neplatí.

### 1.4 Obor integrity

Ďalší pojem je obor integrity.

!!! abstract "Definícia"

    Obor integrity je okruh s \( 1 \), v ktorom platí:

    \[
    ab = 0 \Rightarrow a = 0 \text{ alebo } b = 0.
    \]

Túto vlastnosť si treba vysvetliť veľmi opatrne.

Hovorí sa v nej, že súčin dvoch prvkov môže byť nulový iba vtedy, keď aspoň jeden z nich je nulový.

Inými slovami: v takomto prostredí neexistujú nenulové prvky, ktorých súčin by vyšiel \( 0 \).

Také nenulové prvky, ktorých súčin je \( 0 \), sa nazývajú delitele nuly. Obor integrity ich neobsahuje.

#### 1.4.1 Prečo je to dôležité

Keď v nejakom číselnom systéme existujú delitele nuly, veľa bežných úprav prestáva fungovať tak, ako sme zvyknutí zo školy.

Napríklad zo vzťahu

\[
ab = ac
\]

sa už nedá vždy „skrátiť“ a dostať \( b = c \), ak nevieme nič o prvku \( a \).

Práve preto je vlastnosť „bez deliteľov nuly“ veľmi dôležitá.

#### 1.4.2 Príklad, že \( \mathbb{Z}_{20} \) nie je obor integrity

!!! example "Príklad"

    V \( \mathbb{Z}_{20} \) platí:

    \[
    4 \cdot 5 = 20 \equiv 0 \pmod{20}
    \]

    a tiež

    \[
    2 \cdot 10 = 20 \equiv 0 \pmod{20}.
    \]

!!! note "Vysvetlenie príkladu"

    Ani v jednom prípade však nie je žiadny z činiteľov nulový prvok modulo \( 20 \).

    To znamená, že v \( \mathbb{Z}_{20} \) existujú delitele nuly.

    Preto \( \mathbb{Z}_{20} \) nie je obor integrity.

### 1.5 Násobenie nulou

V materiáli je uvedená nasledujúca veta.

!!! info "Veta"

    Ak \( (R, +, \cdot) \) je okruh, tak pre každé \( a \in R \) platí

    \[
    a \cdot 0 = 0 \cdot a = 0.
    \]

Toto je jedna z tých vecí, ktoré sa zdajú samozrejmé, ale v matematike je potrebné ich dokázať.

!!! note "Vysvetlenie dôkazu"

    Pri dôkaze sa využije to, že \( (R, +) \) je grupa, takže každý prvok má opačný prvok, a zároveň sa použije distributivita.

??? success "Dôkaz"

    **Dôkaz, že \( a \cdot 0 = 0 \)**

    Vieme, že v každej grupe vzhľadom na sčítanie platí

    \[
    0 + 0 = 0.
    \]

    Teraz vynásobme túto rovnosť zľava prvkom \( a \):

    \[
    a \cdot (0 + 0) = a \cdot 0.
    \]

    Použijeme distributivitu:

    \[
    a \cdot 0 + a \cdot 0 = a \cdot 0.
    \]

    Teraz chceme z oboch strán odobrať \( a \cdot 0 \). Keďže vzhľadom na sčítanie tvorí \( R \) grupu, každý prvok má opačný prvok. Teda môžeme k obom stranám pripočítať \( -(a \cdot 0) \).

    Dostaneme:

    \[
    (a \cdot 0 + a \cdot 0) + (-(a \cdot 0)) = a \cdot 0 + (-(a \cdot 0)).
    \]

    Na ľavej strane zostane \( a \cdot 0 \), na pravej strane zostane \( 0 \).

    Teda

    \[
    a \cdot 0 = 0.
    \]

    **Dôkaz, že \( 0 \cdot a = 0 \)**

    Postup je rovnaký, len použijeme distributivitu sprava.

    Platí:

    \[
    (0 + 0) \cdot a = 0 \cdot a.
    \]

    Po roznásobení:

    \[
    0 \cdot a + 0 \cdot a = 0 \cdot a.
    \]

    Opäť odčítame \( 0 \cdot a \) z oboch strán a dostaneme:

    \[
    0 \cdot a = 0.
    \]

    Teda naozaj platí

    \[
    a \cdot 0 = 0 \cdot a = 0.
    \]

## 2. Zvyškové triedy modulo prvočíslo a obor integrity

### 2.1 Prečo je \( \mathbb{Z}_p \) dôležitý príklad

Teraz sa berie štruktúra \( \mathbb{Z}_p \), kde \( p \) je prvočíslo.

To je množina zvyškových tried modulo \( p \).

Je to veľmi dôležitý príklad, pretože pri modulo prvočísle sa veci správajú omnoho lepšie než pri modulo zloženom čísle, napríklad pri modulo \( 20 \).

V materiáli sa ukazuje, že \( \mathbb{Z}_p \) je ďalším príkladom oboru integrity.

### 2.2 Dôkaz myšlienky

!!! info "Tvrdenie"

    Ak \( p \) je prvočíslo, potom \( \mathbb{Z}_p \) je obor integrity.

!!! note "Vysvetlenie dôkazu"

    Základná myšlienka je veľmi jednoduchá: ak v \( \mathbb{Z}_p \) vyjde súčin rovný nule, znamená to, že prvočíslo \( p \) delí príslušný súčin. Pre prvočísla pritom platí známa vlastnosť, že ak delia súčin dvoch čísel, musia deliť aspoň jedno z nich.

??? success "Dôkaz"

    Predpokladajme, že v \( \mathbb{Z}_p \) platí

    \[
    ab = 0.
    \]

    To znamená

    \[
    ab \equiv 0 \pmod{p}.
    \]

    Inými slovami, prvočíslo \( p \) delí súčin \( ab \).

    Teraz použijeme známu vlastnosť prvočísel:

    ak prvočíslo delí súčin dvoch čísel, tak delí aspoň jedno z nich.

    Teda:

    - \( p \) delí \( a \), alebo
    - \( p \) delí \( b \).

    V jazyku zvyškových tried to znamená:

    - \( a = 0 \) v \( \mathbb{Z}_p \), alebo
    - \( b = 0 \) v \( \mathbb{Z}_p \).

    Preto v \( \mathbb{Z}_p \) neexistujú nenulové delitele nuly.

    Teda \( \mathbb{Z}_p \) je obor integrity.

### 2.3 Podielové pole

V materiáli sa uvádza aj myšlienka, že každý obor integrity sa dá chápať ako časť vhodného poľa. Toto pole sa nazýva podielové pole.

!!! note "Vysvetlenie dôkazu"

    Intuitívne je to podobná myšlienka ako prechod z celých čísel \( \mathbb{Z} \) na racionálne čísla \( \mathbb{Q} \).

    V celých číslach sa nedá deliť vždy. Napríklad

    \[
    1 : 2
    \]

    nie je celé číslo.

    Preto vytvoríme väčší systém, racionálne čísla, v ktorom už takéto delenie zmysel má.

Podobne sa z oboru integrity dá vytvoriť väčší systém, v ktorom sa dá deliť každým nenulovým prvkom. Tento väčší systém je pole.

!!! example "Príklad"

    Je spomenutý príklad oboru integrity, ktorý nie je poľom: okruh polynómov nad poľom.

To je dôležité preto, aby bolo jasné, že:

- každý obor integrity nie je automaticky pole,
- ale dá sa vložiť do vhodného poľa.

## 3. Polia

### 3.1 Čo je pole

Pole je ešte „lepšia“ štruktúra než okruh.

V poli vieme:

- sčitovať,
- odčitovať,
- násobiť,
- a deliť každým nenulovým prvkom.

!!! abstract "Definícia"

    Štruktúra \( (F, +, \cdot) \) je pole práve vtedy, keď:

    - \( (F, +) \) je komutatívna grupa,
    - \( (F \setminus \{0\}, \cdot) \) je komutatívna grupa,
    - platí distributivita

    \[
    a(b + c) = ab + ac
    \]

    pre všetky \( a, b, c \in F \).

Teraz si vysvetlime najdôležitejšiu časť tejto definície.

#### 3.1.1 Prečo sa pri násobení vyhadzuje \( 0 \)

Pri sčítaní je \( 0 \) úplne v poriadku. Pri násobení však \( 0 \) nemá inverz.

Naozaj, neexistuje číslo \( x \), pre ktoré by platilo

\[
0 \cdot x = 1,
\]

pretože \( 0 \cdot x \) je vždy \( 0 \).

Preto sa pri definícii poľa berie množina \( F \) bez nuly, teda \( F \setminus \{0\} \), a len tam sa požaduje grupová štruktúra vzhľadom na násobenie.

To presne znamená: každý nenulový prvok má násobkový inverz.

### 3.2 Príklady polí

!!! example "Príklad"

    V materiáli sú uvedené tieto príklady polí:

    - množina komplexných čísel vzhľadom na sčítanie a násobenie,
    - reálne čísla,
    - racionálne čísla,
    - konečné polia.

Posledný bod je veľmi dôležitý.

Ak počítame modulo \( p \), kde \( p \) je prvočíslo, tak zvyškové triedy modulo \( p \) tvoria pole.

To znamená, že v \( \mathbb{Z}_p \):

- vieme sčitovať,
- vieme násobiť,
- a každý nenulový prvok má aj násobkový inverz.

!!! note "Poznámka"

    Práve preto je rozdiel medzi \( \mathbb{Z}_{20} \) a \( \mathbb{Z}_p \) taký veľký:

    - \( \mathbb{Z}_{20} \) je komutatívny okruh s \( 1 \), ale nie pole,
    - \( \mathbb{Z}_p \) pri prvočísle \( p \) je pole.

## 4. Historické geometrické úlohy

### 4.1 Prečo sa spomínajú v tomto texte

Ďalšia časť sa presúva ku geometrii a k jej historickému vývoju.

Základná myšlienka je táto: niektoré klasické geometrické problémy sa dlho riešili čisto geometricky, ale neskôr sa ukázalo, že ich skutočná podstata je algebraická.

To je veľmi pekný moment v matematike: geometrický problém sa zmení na problém o rovniciach, číslach a algebraických vlastnostiach.

### 4.2 Staroveká geometria

Je zdôraznené, že v antickom Grécku sa veľmi silno rozvíjala geometria.

Spomína sa Euklides a jeho dielo *Základy*.

V tomto období sa pracovalo najmä s dvoma nástrojmi:

- pravítko,
- kružidlo.

Nešlo však o pravítko s mierkou, ale o ideálne pravítko na vedenie priamok. Cieľom bolo pochopiť, čo sa dá a čo sa nedá zostrojiť iba pomocou týchto dvoch nástrojov.

### 4.3 Tri slávne klasické úlohy

V materiáli sú uvedené tri známe úlohy, ktoré sa klasickými prostriedkami nepodarilo vyriešiť.

#### 4.3.1 Trisekcia uhla

Vieme zostrojiť os uhla, teda rozdeliť uhol na dve rovnaké časti.

Otázka však znela: dá sa ľubovoľný uhol rozdeliť na tri rovnaké časti iba pravítkom a kružidlom?

Práve toto je úloha trisekcie uhla.

#### 4.3.2 Zdvojenie kocky

Predstavme si kocku s objemom \( 1 \).

Úloha znie: zostrojiť takú kocku, ktorej objem bude \( 2 \).

Nejde teda o obyčajné zdvojenie hrany. Keby sme zdvojnásobili hranu, objem by nebol \( 2 \), ale \( 8 \).

Treba teda nájsť novú dĺžku hrany tak, aby platilo:

\[
\text{nová hrana}^3 = 2.
\]

To vedie k výrazu tretia odmocnina z \( 2 \).

#### 4.3.3 Kvadratúra kruhu

Tu ide o problém zostrojiť útvar štvorcového typu s rovnakou plochou ako daný kruh.

Inými slovami, ide o prepojenie plochy kruhu a štvorca.

Táto úloha je historicky veľmi známa a patrí medzi najslávnejšie klasické konštrukčné problémy.

### 4.4 Pravidelné mnohouholníky

Ďalej sa spomínajú pravidelné mnohouholníky.

Je naznačené, že:

- pravidelný trojuholník sa zostrojiť dá,
- štvorec sa zostrojiť dá,
- päťuholník nie je úplne jednoduchý,
- šesťuholník sa zostrojiť dá,
- pri sedemuholníku vzniká problém.

Záver je ten, že nie všetky pravidelné \( n \)-uholníky sa dajú zostrojiť pravítkom a kružidlom.

### 4.5 Wantzel a algebraická povaha problému

Je spomenutý Pierre Wantzel, francúzsky matematik z 19. storočia.

Podstatná myšlienka je táto: ukázalo sa, že problém nie je len geometrický, ale algebraický.

To znamená, že otázka „dá sa to zostrojiť?“ sa dá preložiť do otázky „dá sa to vyjadriť pomocou určitých algebraických operácií?“

Toto je zásadný moment: geometrická zostrojiteľnosť sa začne skúmať pomocou algebry.

### 4.6 Descartes a kartézsky súradnicový systém

Ďalej sa spomína René Descartes.

Jeho význam spočíva v tom, že spojil aritmetiku a geometriu. Tým vznikla analytická geometria.

Namiesto čisto obrazového uvažovania sa geometrické objekty začnú opisovať číslami a rovnicami.

Práve po Descartovi sa súradnicová rovina nazýva kartézsky súradnicový systém.

To je obrovský krok:

- bod už nie je len „bod na obrázku“,
- ale dvojica čísel,
- priamka je daná rovnicou,
- kružnica je daná rovnicou,
- priesečník sa nájde riešením sústavy rovníc.

## 5. Súradnicová rovina, vzdialenosť bodov, priamka a kružnica

### 5.1 Bod v rovine

V analytickej geometrii sa bod zapisuje pomocou dvoch súradníc.

!!! abstract "Definícia"

    Ak máme bod \( [a, b] \), tak:

    - prvá súradnica určuje polohu v smere osi \( x \),
    - druhá súradnica určuje polohu v smere osi \( y \).

Štandardne sa prvej súradnici hovorí abscisa a druhej ordináta.

### 5.2 Vzdialenosť dvoch bodov

Nech máme body

\[
A = [a, b]
\quad \text{a} \quad
B = [c, d].
\]

Vzdialenosť medzi nimi je dĺžka úsečky \( AB \).

Ak ju označíme \( l \), tak platí

\[
l^2 = (c - a)^2 + (d - b)^2
\]

a teda

\[
l = \sqrt{(c - a)^2 + (d - b)^2}.
\]

!!! note "Vysvetlenie dôkazu"

    Tento vzorec vzniká z Pytagorovej vety.

    Rozdiel \( c - a \) je vodorovná zmena.

    Rozdiel \( d - b \) je zvislá zmena.

    Tieto dve zmeny tvoria odvesny pravouhlého trojuholníka a úsečka \( AB \) je jeho prepona.

    Preto:

    \[
    \text{dĺžka}^2 = \text{vodorovná zmena}^2 + \text{zvislá zmena}^2.
    \]

### 5.3 Kružnica

Kružnica so stredom \( S = [m, n] \) a polomerom \( r \) je množina všetkých bodov \( [x, y] \), ktoré majú od stredu vzdialenosť \( r \).

!!! abstract "Definícia"

    Pomocou vzorca na vzdialenosť dostaneme rovnicu kružnice:

    \[
    (x - m)^2 + (y - n)^2 = r^2.
    \]

To je základná rovnica kružnice.

!!! note "Vysvetlenie dôkazu"

    Táto rovnica hovorí, že bod \( [x, y] \) leží na kružnici práve vtedy, keď jeho vzdialenosť od stredu je presne \( r \).

### 5.4 Priamka v parametrickom tvare

Priamka sa v tomto materiáli zapisuje pomocou:

- jedného bodu \( A = [a_1, b_1] \),
- jedného smerového vektora \( N = [n_1, n_2] \).

!!! abstract "Definícia"

    Body priamky môžeme zapisovať takto:

    \[
    [x, y] = [a_1, b_1] + t[n_1, n_2],
    \]

    kde \( t \) je reálne číslo.

    Po súradniciach to znamená:

    \[
    x = a_1 + tn_1,
    \]

    \[
    y = b_1 + tn_2.
    \]

!!! note "Vysvetlenie dôkazu"

    Bod \( A \) je jeden konkrétny bod priamky.

    Vektor \( N \) určuje smer, ktorým sa po priamke pohybujeme.

    Parameter \( t \) hovorí, ako ďaleko a ktorým smerom sa od bodu \( A \) posunieme:

    - ak \( t = 0 \), sme v bode \( A \),
    - ak \( t > 0 \), ideme jedným smerom,
    - ak \( t < 0 \), ideme opačným smerom.

## 6. Priesečník priamky a kružnice

### 6.1 Základná myšlienka

Ak chceme nájsť priesečník priamky a kružnice, spojíme dve informácie:

- bod leží na priamke,
- bod leží na kružnici.

Ak bod leží na priamke, vieme jeho súradnice vyjadriť pomocou parametra \( t \):

\[
x = a_1 + tn_1,
\]

\[
y = b_1 + tn_2.
\]

Tieto výrazy potom dosadíme do rovnice kružnice:

\[
(x - m)^2 + (y - n)^2 = r^2.
\]

Dostaneme rovnicu pre parameter \( t \):

\[
(a_1 + tn_1 - m)^2 + (b_1 + tn_2 - n)^2 = r^2.
\]

Po roznásobení vznikne kvadratická rovnica. Jej riešenia určia hodnoty parametra \( t \), a tie potom dajú priesečníky.

To je veľmi dôležité: geometrická úloha sa zmení na algebraickú úlohu.

### 6.2 Poznámka k euklidovským konštrukciám

Je naznačené, že v každom kroku klasickej euklidovskej konštrukcie v zásade hľadáme niektorý z týchto typov priesečníkov:

- priamka s priamkou,
- priamka s kružnicou,
- kružnica s kružnicou.

!!! note "Poznámka"

    Práve preto je analytická geometria taká silná: umožňuje tieto priesečníky počítať pomocou rovníc.

### 6.3 Príklad: kružnica so stredom v počiatku a priamka cez počiatok

Majme kružnicu so stredom \( [0, 0] \) a polomerom \( 2 \).

Jej rovnica je:

\[
x^2 + y^2 = 4.
\]

Majme priamku prechádzajúcu bodom \( [0, 0] \) so smerovým vektorom \( [2, 3] \).

Jej parametrické vyjadrenie je:

\[
x = 2t,
\]

\[
y = 3t.
\]

!!! example "Príklad"

    Dosadíme do rovnice kružnice:

    \[
    (2t)^2 + (3t)^2 = 4,
    \]

    \[
    4t^2 + 9t^2 = 4,
    \]

    \[
    13t^2 = 4,
    \]

    \[
    t^2 = \frac{4}{13},
    \]

    \[
    t = \pm \frac{2}{\sqrt{13}} = \pm \frac{2\sqrt{13}}{13}.
    \]

Teraz dopočítame body.

!!! note "Vysvetlenie príkladu"

    **Pre kladné \( t \):**

    \[
    x_1 = 2t = \frac{4\sqrt{13}}{13},
    \]

    \[
    y_1 = 3t = \frac{6\sqrt{13}}{13}.
    \]

    Prvý priesečník je teda

    \[
    P_1 = \left[\frac{4\sqrt{13}}{13}, \frac{6\sqrt{13}}{13}\right]
    \approx [1{,}11;\,1{,}66].
    \]

    **Pre záporné \( t \):**

    \[
    x_2 = -\frac{4\sqrt{13}}{13},
    \]

    \[
    y_2 = -\frac{6\sqrt{13}}{13}.
    \]

    Druhý priesečník je

    \[
    P_2 = \left[-\frac{4\sqrt{13}}{13}, -\frac{6\sqrt{13}}{13}\right]
    \approx [-1{,}11;\,-1{,}66].
    \]

Tento výsledok je prirodzený. Priamka prechádza stredom kružnice, preto ju pretína v dvoch oproti ležiacich bodoch.

### 6.4 Príklad: kružnica so stredom \( [1, 1] \) a priamka cez bod \( [2, 2] \)

Majme kružnicu so stredom \( [1, 1] \) a polomerom \( 2 \).

Jej rovnica je:

\[
(x - 1)^2 + (y - 1)^2 = 4.
\]

Majme priamku prechádzajúcu bodom \( [2, 2] \) so smerovým vektorom \( [2, 3] \).

Parametrické vyjadrenie:

\[
x = 2 + 2t,
\]

\[
y = 2 + 3t.
\]

!!! example "Príklad"

    Dosadíme:

    \[
    (2 + 2t - 1)^2 + (2 + 3t - 1)^2 = 4,
    \]

    \[
    (1 + 2t)^2 + (1 + 3t)^2 = 4.
    \]

    Teraz roznásobíme:

    \[
    (1 + 2t)^2 = 1 + 4t + 4t^2,
    \]

    \[
    (1 + 3t)^2 = 1 + 6t + 9t^2.
    \]

    Po sčítaní:

    \[
    1 + 4t + 4t^2 + 1 + 6t + 9t^2 = 4,
    \]

    \[
    2 + 10t + 13t^2 = 4,
    \]

    \[
    13t^2 + 10t - 2 = 0.
    \]

    Teraz vyriešime kvadratickú rovnicu.

    Diskriminant:

    \[
    D = 10^2 - 4 \cdot 13 \cdot (-2)
    = 100 + 104
    = 204
    = 4 \cdot 51.
    \]

    Teda

    \[
    t = \frac{-10 \pm \sqrt{204}}{26}
    = \frac{-10 \pm 2\sqrt{51}}{26}
    = \frac{-5 \pm \sqrt{51}}{13}.
    \]

    Máme teda dve hodnoty:

    \[
    t_1 = \frac{-5 + \sqrt{51}}{13},
    \qquad
    t_2 = \frac{-5 - \sqrt{51}}{13}.
    \]

!!! note "Vysvetlenie príkladu"

    **Prvý priesečník**

    \[
    x_1 = 2 + 2t_1
    = 2 + 2\left(\frac{-5 + \sqrt{51}}{13}\right)
    = \frac{16 + 2\sqrt{51}}{13},
    \]

    \[
    y_1 = 2 + 3t_1
    = 2 + 3\left(\frac{-5 + \sqrt{51}}{13}\right)
    = \frac{11 + 3\sqrt{51}}{13}.
    \]

    Teda

    \[
    P_1 = \left[\frac{16 + 2\sqrt{51}}{13}, \frac{11 + 3\sqrt{51}}{13}\right]
    \approx [2{,}33;\,2{,}49].
    \]

    **Druhý priesečník**

    \[
    x_2 = 2 + 2t_2
    = \frac{16 - 2\sqrt{51}}{13},
    \]

    \[
    y_2 = 2 + 3t_2
    = \frac{11 - 3\sqrt{51}}{13}.
    \]

    Teda

    \[
    P_2 = \left[\frac{16 - 2\sqrt{51}}{13}, \frac{11 - 3\sqrt{51}}{13}\right]
    \approx [0{,}13;\,-0{,}80].
    \]

### 6.5 Príklad: kružnica so stredom v počiatku a priamka cez body \( [1, 1] \) a \( [5, 7] \)

Majme kružnicu so stredom \( [0, 0] \) a polomerom \( 3 \).

Rovnica kružnice:

\[
x^2 + y^2 = 9.
\]

Priamka prechádza bodmi \( [1, 1] \) a \( [5, 7] \).

Najprv nájdeme jej smerový vektor:

\[
[5, 7] - [1, 1] = [4, 6].
\]

Parametrické vyjadrenie priamky teda je:

\[
x = 1 + 4t,
\]

\[
y = 1 + 6t.
\]

!!! example "Príklad"

    Dosadíme do kružnice:

    \[
    (1 + 4t)^2 + (1 + 6t)^2 = 9.
    \]

    Roznásobíme:

    \[
    1 + 8t + 16t^2 + 1 + 12t + 36t^2 = 9,
    \]

    \[
    2 + 20t + 52t^2 = 9,
    \]

    \[
    52t^2 + 20t - 7 = 0.
    \]

    Vydelíme \( 4 \):

    \[
    13t^2 + 5t - \frac{7}{4} = 0.
    \]

    Ale pohodlnejšie je nechať pôvodný tvar.

    Diskriminant:

    \[
    D = 20^2 - 4 \cdot 52 \cdot (-7)
    = 400 + 1456
    = 1856
    = 64 \cdot 29.
    \]

    Teda

    \[
    t = \frac{-20 \pm 8\sqrt{29}}{104}
    = \frac{-5 \pm 2\sqrt{29}}{26}.
    \]

!!! note "Vysvetlenie príkladu"

    **Prvý priesečník**

    \[
    x_1 = 1 + 4t_1
    = 1 + 4\left(\frac{-5 + 2\sqrt{29}}{26}\right)
    = \frac{3 + 4\sqrt{29}}{13},
    \]

    \[
    y_1 = 1 + 6t_1
    = 1 + 6\left(\frac{-5 + 2\sqrt{29}}{26}\right)
    = \frac{-2 + 6\sqrt{29}}{13}.
    \]

    Teda

    \[
    P_1 = \left[\frac{3 + 4\sqrt{29}}{13}, \frac{-2 + 6\sqrt{29}}{13}\right]
    \approx [1{,}89;\,2{,}33].
    \]

    **Druhý priesečník**

    \[
    x_2 = \frac{3 - 4\sqrt{29}}{13},
    \]

    \[
    y_2 = \frac{-2 - 6\sqrt{29}}{13}.
    \]

    Teda

    \[
    P_2 = \left[\frac{3 - 4\sqrt{29}}{13}, \frac{-2 - 6\sqrt{29}}{13}\right]
    \approx [-1{,}43;\,-2{,}64].
    \]

## 7. Smerový vektor priamky

### 7.1 Ako ho nájsť z dvoch bodov

Ak priamka prechádza bodmi

\[
A = [x_1, y_1]
\quad \text{a} \quad
B = [x_2, y_2],
\]

tak jej smerový vektor dostaneme odčítaním:

\[
B - A = [x_2 - x_1, y_2 - y_1].
\]

!!! example "Príklad"

    Pre body \( [2, -2] \) a \( [3, 4] \) dostaneme:

    \[
    [3, 4] - [2, -2] = [1, 6].
    \]

    Teda jedným smerovým vektorom tejto priamky je

    \[
    [1, 6].
    \]

    Parametrické vyjadrenie priamky môže byť napríklad:

    \[
    x = 2 + t,
    \]

    \[
    y = -2 + 6t.
    \]

### 7.2 Rovnobežná priamka

Ak hľadáme priamku rovnobežnú s danou priamkou, použijeme ten istý smerový vektor, prípadne jeho nenulový násobok.

!!! example "Príklad"

    Priamka prechádzajúca bodmi \( [1, 7] \) a \( [2, 5] \) má smerový vektor

    \[
    [2, 5] - [1, 7] = [1, -2].
    \]

    Môžeme použiť aj opačný smerový vektor

    \[
    [-1, 2].
    \]

    Preto jedno parametrické vyjadrenie tejto priamky je:

    \[
    x = 1 - t,
    \]

    \[
    y = 7 + 2t.
    \]

!!! note "Vysvetlenie príkladu"

    To je úplne v poriadku, pretože priamka sa nemení, keď zmeníme smer na opačný.

## 8. Priesečník dvoch priamok a všeobecná rovnica priamky

### 8.1 Príklad na priesečník dvoch priamok

Máme dve priamky.

Prvá priamka prechádza bodmi \( [1, 2] \) a \( [4, 1] \).

Smerový vektor je:

\[
[4, 1] - [1, 2] = [3, -1].
\]

Parametrické vyjadrenie prvej priamky:

\[
x = 1 + 3t,
\]

\[
y = 2 - t.
\]

Druhá priamka prechádza bodmi \( [2, 5] \) a \( [6, 7] \).

Jeden smerový vektor je:

\[
[2, 5] - [6, 7] = [-4, -2].
\]

Preto ju môžeme písať ako:

\[
x = 2 - 4s,
\]

\[
y = 5 - 2s.
\]

V materiáli sa potom druhá priamka prepíše do všeobecnej rovnice a tá sa dosadí do parametrického tvaru prvej priamky.

### 8.2 Všeobecná rovnica priamky zo smerového vektora

Ak má priamka bod

\[
[x_0, y_0]
\]

a smerový vektor

\[
[v, u],
\]

tak jej parametrické vyjadrenie je:

\[
x = x_0 + vt,
\]

\[
y = y_0 + ut.
\]

Teraz ukážeme, ako z toho vznikne všeobecná rovnica.

!!! note "Vysvetlenie dôkazu"

    Cieľom je odstrániť parameter \( t \), aby ostala rovnica len medzi \( x \) a \( y \).

??? success "Dôkaz"

    Vynásobme prvú rovnicu číslom \( u \):

    \[
    ux = ux_0 + uvt.
    \]

    Druhú rovnicu vynásobme číslom \( -v \):

    \[
    -vy = -vy_0 - vut.
    \]

    Keď tieto dve rovnice sčítame, členy s \( t \) sa vyrušia:

    \[
    ux - vy = ux_0 - vy_0.
    \]

    To je všeobecná rovnica tej istej priamky.

Tento krok je veľmi pekný, pretože parameter \( t \) zmizne a ostane rovnica len medzi \( x \) a \( y \).

### 8.3 Dokončenie príkladu

Pre druhú priamku máme bod \( [2, 5] \) a smerový vektor \( [-4, -2] \).

Teda

\[
v = -4,
\qquad
u = -2.
\]

Podľa vzorca

\[
ux - vy = ux_0 - vy_0
\]

dostaneme:

\[
-2x - (-4)y = -2 \cdot 2 - (-4) \cdot 5,
\]

\[
-2x + 4y = -4 + 20,
\]

\[
-2x + 4y = 16.
\]

Po vydelení \( -2 \):

\[
x - 2y + 8 = 0.
\]

Teraz dosadíme parametrické vyjadrenie prvej priamky:

\[
x = 1 + 3t,
\qquad
y = 2 - t.
\]

!!! example "Príklad"

    Dostaneme:

    \[
    (1 + 3t) - 2(2 - t) + 8 = 0,
    \]

    \[
    1 + 3t - 4 + 2t + 8 = 0,
    \]

    \[
    5 + 5t = 0,
    \]

    \[
    t = -1.
    \]

    Teraz dosadíme do prvej priamky:

    \[
    x = 1 + 3(-1) = -2,
    \]

    \[
    y = 2 - (-1) = 3.
    \]

    Priesečník je teda

    \[
    [-2, 3].
    \]

## Záverečné zhrnutie

Najdôležitejšie myšlienky z tohto materiálu sú tieto.

Okruh je štruktúra, v ktorej vieme sčitovať a násobiť a násobenie je distributívne vzhľadom na sčítanie. Ak je násobenie komutatívne, hovoríme o komutatívnom okruhu. Ak existuje jednotka \( 1 \), ide o okruh s \( 1 \).

Obor integrity je okruh s \( 1 \), v ktorom neexistujú nenulové delitele nuly. To znamená, že z rovnosti \( ab = 0 \) vyplýva \( a = 0 \) alebo \( b = 0 \). \( \mathbb{Z}_{20} \) nie je obor integrity, lebo napríklad

\[
4 \cdot 5 = 0 \pmod{20},
\]

hoci ani \( 4 \) ani \( 5 \) nie sú nulové prvky. Naopak, \( \mathbb{Z}_p \) pre prvočíslo \( p \) je obor integrity.

Pole je ešte silnejšia štruktúra. Okrem sčítania a násobenia v ňom vieme deliť každým nenulovým prvkom. Typické príklady sú racionálne, reálne a komplexné čísla a tiež zvyškové triedy modulo prvočíslo.

V historickej časti sa ukazuje, že klasické konštrukčné problémy pravítkom a kružidlom sú v skutočnosti úzko spojené s algebrou. Práve prepojenie geometrie a aritmetiky viedlo ku kartézskemu súradnicovému systému a k analytickej geometrii.

V analytickej geometrii sa body opisujú súradnicami, priamky parametrickými alebo všeobecnými rovnicami a kružnice rovnicou

\[
(x - m)^2 + (y - n)^2 = r^2.
\]

Priesečník priamky a kružnice nájdeme tak, že parametrické vyjadrenie priamky dosadíme do rovnice kružnice. Priesečník dvoch priamok nájdeme riešením ich rovníc. Tak sa geometrický problém premení na algebraický výpočet.

## Zhrnutie viet a dôkazov

!!! info "Veta"

    Ak \( (R, +, \cdot) \) je okruh, tak pre každé \( a \in R \) platí

    \[
    a \cdot 0 = 0 \cdot a = 0.
    \]

??? success "Dôkaz"

    **Dôkaz, že \( a \cdot 0 = 0 \)**

    Vieme, že v každej grupe vzhľadom na sčítanie platí

    \[
    0 + 0 = 0.
    \]

    Teraz vynásobme túto rovnosť zľava prvkom \( a \):

    \[
    a \cdot (0 + 0) = a \cdot 0.
    \]

    Použijeme distributivitu:

    \[
    a \cdot 0 + a \cdot 0 = a \cdot 0.
    \]

    Teraz chceme z oboch strán odobrať \( a \cdot 0 \). Keďže vzhľadom na sčítanie tvorí \( R \) grupu, každý prvok má opačný prvok. Teda môžeme k obom stranám pripočítať \( -(a \cdot 0) \).

    Dostaneme:

    \[
    (a \cdot 0 + a \cdot 0) + (-(a \cdot 0)) = a \cdot 0 + (-(a \cdot 0)).
    \]

    Na ľavej strane zostane \( a \cdot 0 \), na pravej strane zostane \( 0 \).

    Teda

    \[
    a \cdot 0 = 0.
    \]

    **Dôkaz, že \( 0 \cdot a = 0 \)**

    Postup je rovnaký, len použijeme distributivitu sprava.

    Platí:

    \[
    (0 + 0) \cdot a = 0 \cdot a.
    \]

    Po roznásobení:

    \[
    0 \cdot a + 0 \cdot a = 0 \cdot a.
    \]

    Opäť odčítame \( 0 \cdot a \) z oboch strán a dostaneme:

    \[
    0 \cdot a = 0.
    \]

    Teda naozaj platí

    \[
    a \cdot 0 = 0 \cdot a = 0.
    \]

---

!!! info "Tvrdenie"

    Ak \( p \) je prvočíslo, potom \( \mathbb{Z}_p \) je obor integrity.

??? success "Dôkaz"

    Predpokladajme, že v \( \mathbb{Z}_p \) platí

    \[
    ab = 0.
    \]

    To znamená

    \[
    ab \equiv 0 \pmod{p}.
    \]

    Inými slovami, prvočíslo \( p \) delí súčin \( ab \).

    Teraz použijeme známu vlastnosť prvočísel:

    ak prvočíslo delí súčin dvoch čísel, tak delí aspoň jedno z nich.

    Teda:

    - \( p \) delí \( a \), alebo
    - \( p \) delí \( b \).

    V jazyku zvyškových tried to znamená:

    - \( a = 0 \) v \( \mathbb{Z}_p \), alebo
    - \( b = 0 \) v \( \mathbb{Z}_p \).

    Preto v \( \mathbb{Z}_p \) neexistujú nenulové delitele nuly.

    Teda \( \mathbb{Z}_p \) je obor integrity.

---

!!! info "Tvrdenie"

    Ak má priamka bod \( [x_0, y_0] \) a smerový vektor \( [v, u] \), potom z parametrického tvaru

    \[
    x = x_0 + vt,
    \qquad
    y = y_0 + ut
    \]

    dostaneme všeobecnú rovnicu

    \[
    ux - vy = ux_0 - vy_0.
    \]

??? success "Dôkaz"

    Vynásobme prvú rovnicu číslom \( u \):

    \[
    ux = ux_0 + uvt.
    \]

    Druhú rovnicu vynásobme číslom \( -v \):

    \[
    -vy = -vy_0 - vut.
    \]

    Keď tieto dve rovnice sčítame, členy s \( t \) sa vyrušia:

    \[
    ux - vy = ux_0 - vy_0.
    \]

    To je všeobecná rovnica tej istej priamky.