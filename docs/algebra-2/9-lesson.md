---
icon: fontawesome/solid/9
---

<button class="md-button md-button--primary" onclick="window.print();">
  Tlačiť
</button>

# Deviaty týždeň

## Algebraicky uzavreté polia, nadpolia s koreňmi polynómov a algebraické dôsledky pre konštrukcie

## Úvod do témy

V tejto časti ide o veľmi dôležitú myšlienku algebry:

Keď nejaký polynóm **nemá koreň v danom poli**, často vieme vytvoriť **väčšie pole**, v ktorom už koreň má.

To je základná idea celej teórie nadpolí a algebraických rozšírení.

Má to viacero dôsledkov:

- vysvetľuje to, prečo v poli reálnych čísel nemá rovnica \(x^2+1=0\) riešenie, ale v komplexných číslach už riešenie má,
- ukazuje to, ako sa konštruujú nové polia zo starých,
- pomáha to pochopiť, prečo niektoré čísla alebo uhly **nie sú euklidovsky zostrojiteľné**,
- a vedie to aj k algebraickému dôkazu, že napríklad **pravidelný \(7\)-uholník sa nedá zostrojiť pravítkom a kružidlom**.

V celej kapitole budeme veľmi často používať slová **pole**, **nadpole**, **koreň polynómu**, **ireducibilný polynóm** a **algebraicky uzavreté pole**. Preto si ich budeme vysvetľovať veľmi pomaly a po krokoch.

## 1. Algebraicky uzavreté polia a hlavná veta algebry

### 1.1 Základná myšlienka

Polynóm nemusí mať koreň v poli, nad ktorým je zadaný.

Najjednoduchší príklad je rovnica

\[
x^2+1=0.
\]

V poli reálnych čísel \( \mathbb{R} \) nemá táto rovnica riešenie, pretože druhá mocnina reálneho čísla nikdy nie je záporná. Číslo \(-1\) preto nemôže byť druhou mocninou reálneho čísla.

Keď však prejdeme do väčšieho poľa, totiž do poľa komplexných čísel \( \mathbb{C} \), riešenie už existuje. Je ním číslo \(i\), pre ktoré platí

\[
i^2=-1.
\]

To je prvý veľmi dôležitý príklad toho, že niekedy treba pole **rozšíriť**, aby sme v ňom našli korene polynómov.

!!! abstract "Definícia"

    Pole \(F\) sa nazýva **algebraicky uzavreté**, ak každý nekonštantný polynóm z \(F[x]\) má aspoň jeden koreň v poli \(F\).

!!! note "Vysvetlenie definície"

    Táto definícia hovorí, že v algebraicky uzavretom poli sa polynómy „nemusia sťahovať do väčšieho sveta“. Všetky ich korene sa už nachádzajú priamo v tomto poli.

    Inými slovami, pole je algebraicky uzavreté vtedy, keď z pohľadu hľadania koreňov už netreba nič nové pridávať.

### 1.2 Hlavná veta algebry

!!! info "Veta"

    Každý polynóm s komplexnými koeficientmi stupňa aspoň \(1\) má komplexný koreň.

### 1.3 Čo táto veta znamená

Táto veta je jednou z najdôležitejších viet celej matematiky.

Hovorí, že ak máme polynóm

\[
p(x)=a_nx^n+a_{n-1}x^{n-1}+\dots+a_1x+a_0,
\qquad a_n\neq 0,
\]

a všetky jeho koeficienty sú komplexné čísla, potom existuje aspoň jedno komplexné číslo \(z\), pre ktoré platí

\[
p(z)=0.
\]

To má veľmi silný dôsledok.

!!! tip "Dôsledok"

    Pole \( \mathbb{C} \) je algebraicky uzavreté.

Naopak, pole \( \mathbb{R} \) algebraicky uzavreté nie je, pretože napríklad polynóm \(x^2+1\) v ňom koreň nemá.

### 1.4 Algebraický uzáver

!!! info "Tvrdenie"

    Každé pole možno vložiť do nejakého algebraicky uzavretého nadpoľa.

!!! note "Vysvetlenie tvrdenia"

    Ak začneme s ľubovoľným poľom \(F\), vždy existuje väčšie pole, ktoré obsahuje \(F\) a v ktorom už má každý nekonštantný polynóm s koeficientmi z tohto väčšieho poľa svoje korene.

    Takéto nadpole sa nazýva **algebraický uzáver** poľa \(F\).

### 1.5 Konečné telesá

!!! info "Tvrdenie"

    Každé konečné teleso je komutatívne.

!!! note "Vysvetlenie tvrdenia"

    V tejto vete slovo **komutatívne** znamená, že násobenie v takom telese spĺňa

    \[
    ab=ba.
    \]

    Teda pri konečných telesách sa nemôže stať, že by záležalo na poradí pri násobení.

## 2. Koreň polynómu v nadpolí

### 2.1 Základná veta o nadpoliach

!!! info "Veta"

    Ak je \(f(x)\) polynóm nad nejakým poľom \(F\), potom existuje nadpole poľa \(F\), v ktorom má daný polynóm koreň.

### 2.2 Vysvetlenie významu vety

Táto veta hovorí, že ak polynóm v pôvodnom poli koreň nemá, neznamená to, že je „beznádejne bez koreňa“. Znamená to len to, že ho treba hľadať vo väčšom poli.

To je veľmi dôležité, lebo v algebre často postupujeme práve takto:

1. začneme s poľom \(F\),
2. nájdeme polynóm, ktorý v \(F\) nemá koreň,
3. vytvoríme väčšie pole, kde sa tento koreň bude dať „dopridať“.

### 2.3 Príklad s reálnymi a komplexnými číslami

!!! example "Príklad"

    V poli \( \mathbb{R} \) nemá polynóm

    \[
    x^2+1
    \]

    koreň.

    Keď však prejdeme do poľa \( \mathbb{C} \), objaví sa prvok \(i\), pre ktorý platí

    \[
    i^2=-1.
    \]

    Preto

    \[
    i^2+1=0,
    \]

    a teda \(i\) je koreň polynómu \(x^2+1\).

!!! note "Vysvetlenie príkladu"

    Týmto spôsobom nevyriešime iba jednu konkrétnu rovnicu. Vytvárame nový algebraický priestor, v ktorom vieme riešiť viac rovníc než predtým.

## 3. Konštrukcia nadpoľa pomocou koreňa polynómu

V tejto časti sa objavuje veľmi dôležitá idea: ak polynóm nemá koreň v poli \(F\), môžeme vytvoriť nové pole tak, že doň „pridáme“ symbol, ktorý sa bude správať ako koreň daného polynómu.

Toto si najlepšie ukážeme na konkrétnych príkladoch.

### 3.1 Príklad nad poľom \( \mathbb{Z}_5 \): polynóm \(x^2+2\)

Najprv pripomeňme, že \( \mathbb{Z}_5 \) je pole zvyškových tried modulo \(5\). Má teda prvky

\[
\mathbb{Z}_5=\{0,1,2,3,4\}.
\]

Chceme zistiť, či má polynóm

\[
x^2+2
\]

koreň v \( \mathbb{Z}_5 \).

!!! example "Príklad"

    Dosadíme všetky možné prvky:

    \[
    0^2+2=2 \neq 0,
    \]

    \[
    1^2+2=3 \neq 0,
    \]

    \[
    2^2+2=4+2=6 \equiv 1 \pmod 5,
    \]

    \[
    3^2+2=9+2=11 \equiv 1 \pmod 5,
    \]

    \[
    4^2+2=16+2=18 \equiv 3 \pmod 5.
    \]

    Žiadna hodnota nie je rovná nule v \( \mathbb{Z}_5 \), takže polynóm \(x^2+2\) nemá koreň v \( \mathbb{Z}_5 \).

#### 3.1.1 Pridanie nového prvku

Zavedme nový prvok \(\alpha\) tak, aby platilo

\[
\alpha^2+2=0.
\]

V poli \( \mathbb{Z}_5 \) je \(-2 \equiv 3\), preto môžeme písať

\[
\alpha^2=3.
\]

Tým vznikne nové pole, ktorého prvky majú tvar

\[
a+b\alpha,
\qquad a,b\in \mathbb{Z}_5.
\]

!!! abstract "Definícia"

    Pole vytvorené pridaním koreňa \(\alpha\) sa zapisuje ako

    \[
    \mathbb{Z}_5(\alpha).
    \]

    Jeho prvky sú všetky výrazy tvaru \(a+b\alpha\), kde \(a,b\in\mathbb{Z}_5\) a kde platí vzťah \(\alpha^2=3\).

#### 3.1.2 Ako sa v tomto poli násobí

Ak vezmeme dva prvky

\[
a+b\alpha
\quad \text{a} \quad
a_1+b_1\alpha,
\]

ich súčin je

\[
(a+b\alpha)(a_1+b_1\alpha)
=aa_1+a b_1\alpha + a_1 b\alpha + bb_1\alpha^2.
\]

Keďže \(\alpha^2=3\), dostaneme

\[
(a+b\alpha)(a_1+b_1\alpha)
=(aa_1+3bb_1)+(ab_1+a_1b)\alpha.
\]

!!! note "Vysvetlenie dôkazu"

    Keby sa pri násobení objavila mocnina \(\alpha^2\), nahradíme ju číslom \(3\). Preto sa nikdy nemusíme dostať k vyšším mocninám \(\alpha\). Všetko sa opäť zjednoduší na lineárny tvar v \(\alpha\).

#### 3.1.3 Príklad: inverzný prvok k \(2+3\alpha\)

Chceme nájsť čísla \(a,b\in\mathbb{Z}_5\) tak, aby platilo

\[
\frac{1}{2+3\alpha}=a+b\alpha.
\]

To znamená, že musí platiť

\[
1=(a+b\alpha)(2+3\alpha).
\]

!!! example "Príklad"

    Roznásobíme:

    \[
    1=2a+3a\alpha+2b\alpha+3b\alpha^2.
    \]

    Keďže \(\alpha^2=3\), dostávame

    \[
    1=2a+(3a+2b)\alpha+3b\cdot 3.
    \]

    Teda

    \[
    1=2a+(3a+2b)\alpha+9b.
    \]

    V poli \( \mathbb{Z}_5 \) platí \(9\equiv 4\), preto

    \[
    1=(2a+4b)+(3a+2b)\alpha.
    \]

    Aby sa tento výraz rovnal číslu \(1\), musí byť

    \[
    2a+4b=1,
    \]

    \[
    3a+2b=0.
    \]

    Z druhej rovnice vyjadríme vhodnú dvojicu riešení. Skúška ukáže, že funguje

    \[
    a=1,\qquad b=1.
    \]

    Naozaj:

    \[
    2a+4b=2+4=6\equiv 1 \pmod 5,
    \]

    \[
    3a+2b=3+2=5\equiv 0 \pmod 5.
    \]

    Preto

    \[
    \frac{1}{2+3\alpha}=1+\alpha.
    \]

!!! note "Vysvetlenie príkladu"

    Môžeme to skontrolovať priamo:

    \[
    (1+\alpha)(2+3\alpha)=2+3\alpha+2\alpha+3\alpha^2
    =2+5\alpha+3\cdot 3.
    \]

    Keďže \(5\alpha=0\) v \( \mathbb{Z}_5 \) a \(3\cdot 3=9\equiv 4\), dostaneme

    \[
    2+0+4=6\equiv 1.
    \]

    Teda výpočet je správny.

### 3.2 Druhý príklad nad \( \mathbb{Z}_5 \): polynóm \(x^2+x+1\)

Teraz sa pozrime na polynóm

\[
x^2+x+1.
\]

Skontrolujeme, či má koreň v \( \mathbb{Z}_5 \).

!!! example "Príklad"

    \[
    0^2+0+1=1 \neq 0,
    \]

    \[
    1^2+1+1=3 \neq 0,
    \]

    \[
    2^2+2+1=4+2+1=7 \equiv 2 \pmod 5,
    \]

    \[
    3^2+3+1=9+3+1=13 \equiv 3 \pmod 5,
    \]

    \[
    4^2+4+1=16+4+1=21 \equiv 1 \pmod 5.
    \]

    Teda ani tento polynóm nemá koreň v \( \mathbb{Z}_5 \).

Zavedme prvok \(\alpha\), ktorý spĺňa

\[
\alpha^2+\alpha+1=0.
\]

Odtiaľ dostaneme

\[
\alpha^2=-\alpha-1.
\]

V poli \( \mathbb{Z}_5 \) je \(-1\equiv 4\), preto môžeme písať

\[
\alpha^2=4\alpha+4.
\]

Opäť teda vieme všetky vyššie mocniny redukovať na lineárny výraz v \(\alpha\).

#### 3.2.1 Príklad násobenia

!!! example "Príklad"

    Vypočítajme

    \[
    (2+3\alpha)(1+2\alpha).
    \]

    Roznásobíme:

    \[
    (2+3\alpha)(1+2\alpha)=2+4\alpha+3\alpha+6\alpha^2.
    \]

    Teraz použijeme vzťah \(\alpha^2=4\alpha+4\). Keďže v \( \mathbb{Z}_5 \) je \(6\equiv 1\), môžeme písať

    \[
    6\alpha^2 \equiv \alpha^2 = 4\alpha+4.
    \]

    Teda

    \[
    2+4\alpha+3\alpha+6\alpha^2
    =
    2+7\alpha+(4\alpha+4).
    \]

    Po zlúčení členov dostaneme

    \[
    6+11\alpha.
    \]

    A teraz redukujeme modulo \(5\):

    \[
    6\equiv 1,\qquad 11\equiv 1.
    \]

    Preto výsledok je

    \[
    1+\alpha.
    \]

## 4. Zvyškové triedy modulo ireducibilného polynómu

Doteraz sme pracovali skôr intuitívne: „pridali sme koreň“. Teraz si vysvetlíme, ako sa to dá robiť presne.

### 4.1 Idea zvyškových tried modulo polynóm

Pri celých číslach poznáme zvyškové triedy modulo číslo \(n\). Napríklad v \( \mathbb{Z}_5 \) považujeme čísla, ktoré sa líšia o násobok \(5\), za rovnaké.

Podobná myšlienka funguje aj pri polynómoch.

Ak máme polynóm \(P(x)\), môžeme pracovať **modulo \(P(x)\)**. To znamená, že dva polynómy považujeme za rovnaké, ak dávajú po delení polynómom \(P(x)\) ten istý zvyšok.

### 4.2 Kľúčový fakt

!!! info "Veta"

    Ak je \(P(x)\) ireducibilný polynóm nad poľom \(F\), potom zvyškové triedy modulo \(P(x)\) tvoria pole. V tomto poli má polynóm \(P(x)\) koreň.

### 4.3 Prečo je to dôležité

Toto tvrdenie je presný algebraický mechanizmus, pomocou ktorého vznikajú nadpolia s koreňmi.

Najdôležitejšia myšlienka je táto:

- v novom poli sa trieda polynómu \(x\) správa ako prvok,
- pre ktorý platí

\[
P(x)=0.
\]

To je presne to, čo sme robili v príkladoch vyššie, len teraz je to napísané úplne presne.

!!! abstract "Definícia"

    Ak je \(P(x)\) ireducibilný nad \(F\), potom pole zvyškových tried modulo \(P(x)\) zapisujeme

    \[
    F[x]/(P(x)).
    \]

    V tomto poli platí, že trieda polynómu \(x\) je koreňom polynómu \(P(x)\).

### 4.4 Prepojenie s predchádzajúcimi príkladmi

V príklade s polynómom \(x^2+2\) nad \( \mathbb{Z}_5 \) vznikne pole

\[
\mathbb{Z}_5[x]/(x^2+2).
\]

V ňom platí

\[
x^2+2=0,
\]

čiže trieda \(x\) sa správa ako koreň polynómu \(x^2+2\).

Podobne pri polynóme \(x^2+x+1\) dostaneme pole

\[
\mathbb{Z}_5[x]/(x^2+x+1),
\]

v ktorom platí

\[
x^2+x+1=0.
\]

To je presná algebraická verzia výroku „pridali sme nový prvok \(\alpha\), ktorý je koreňom daného polynómu“.

## 5. Niektoré dôsledky pre zostrojiteľnosť uhlov

V tejto časti sa objavujú aj konkrétne dôsledky pre euklidovské geometrické konštrukcie, teda konštrukcie pomocou pravítka a kružidla.

### 5.1 Príklady uhlov, ktoré sa nedajú zostrojiť pravítkom a kružidlom

V tejto časti sa uvádzajú príklady uhlov, ktoré sa euklidovsky zostrojiť nedajú:

\[
20^\circ,\ 10^\circ,\ 5^\circ,\ 1^\circ,\ 40^\circ,\ 4^\circ,\ 2^\circ.
\]

### 5.2 Prečo by zo zostrojiteľnosti \(50^\circ\) vyplývala zostrojiteľnosť \(10^\circ\)

!!! example "Príklad"

    Keby sa dal zostrojiť uhol \(50^\circ\), potom by sa dal zostrojiť aj uhol \(100^\circ\), lebo vieme zostrojiť dvojnásobok uhla.

    Potom by sme vedeli zostrojiť aj uhol

    \[
    100^\circ-90^\circ=10^\circ.
    \]

    Lenže uhol \(10^\circ\) zostrojiteľný nie je.

    Preto ani uhol \(50^\circ\) nemôže byť zostrojiteľný.

### 5.3 Príklady zostrojiteľných uhlov

V tejto časti sa uvádzajú aj uhly, ktoré sa zostrojiť dajú:

\[
90^\circ,\ 45^\circ,\ 30^\circ,\ 60^\circ,\ 15^\circ,\ 75^\circ,\ 3^\circ.
\]

Zvlášť sa poznamenáva, že uhol \(3^\circ\) súvisí s hlbšou teóriou pravidelných mnohouholníkov, konkrétne so zostrojiteľnosťou pravidelného \(120\)-uholníka.

!!! note "Vysvetlenie príkladu"

    Táto časť ukazuje, že zostrojiteľnosť uhlov nie je náhodná. Za tým, ktoré uhly sa dajú a ktoré nie, stojí presná algebraická teória.

## 6. Parabola a možnosť zostrojiť \(\sqrt[3]{2}\)

V tejto časti sa objavuje veľmi zaujímavý príklad: ak okrem pravítka a kružidla dovolíme použiť aj **parabolu**, vieme sa dostať ku kubickej rovnici.

To je dôležité preto, že pri čistých euklidovských konštrukciách sa ku „skutočne kubickým“ problémom spravidla nedostaneme, ale s ďalšími krivkami už áno.

### 6.1 Zadanie paraboly a kružnice

Uvažujme parabolu

\[
y=x^2
\]

a kružnicu so stredom \((m,n)\) a polomerom \(r\), teda s rovnicou

\[
(x-m)^2+(y-n)^2=r^2.
\]

Ak body spoločné parabole a kružnici existujú, ich súradnice musia spĺňať obe rovnice naraz.

Dosadíme z paraboly vzťah \(y=x^2\) do rovnice kružnice:

\[
(x-m)^2+(x^2-n)^2=r^2.
\]

Roznásobením dostaneme

\[
x^2-2mx+m^2+x^4-2nx^2+n^2=r^2.
\]

V ďalšom kroku sa uvažuje prípad, keď

\[
m^2+n^2=r^2.
\]

Potom sa konštantné členy odčítajú a zostane

\[
x^2-2mx+x^4-2nx^2=0.
\]

Upravíme výraz:

\[
x^4+(1-2n)x^2-2mx=0.
\]

Tento výraz možno prepísať aj takto:

\[
x\bigl(x^3+(1-2n)x-2m\bigr)=0.
\]

V ďalšom sa sleduje netriviálne riešenie vedúce ku kubickej rovnici

\[
x^3+(1-2n)x-2m=0.
\]

### 6.2 Voľba parametrov

Zvolí sa

\[
n=\frac12
\qquad \text{a} \qquad
m=1.
\]

Potom rovnica prejde na

\[
x^3-2=0.
\]

Teda

\[
x^3=2,
\qquad
x=\sqrt[3]{2}.
\]

To znamená, že pomocou vhodenej paraboly a kružnice sa dá geometricky získať hodnota \(\sqrt[3]{2}\).

### 6.3 Výpočet polomeru

Keďže

\[
r^2=m^2+n^2,
\]

po dosadení \(m=1\) a \(n=\frac12\) dostaneme

\[
r^2=1^2+\left(\frac12\right)^2
=1+\frac14
=\frac54.
\]

Teda

\[
r=\frac{\sqrt5}{2}.
\]

!!! tip "Dôsledok"

    Ak popri pravítku a kružidle dovolíme aj parabolu \(y=x^2\), vieme zostrojiť aj číslo

    \[
    \sqrt[3]{2}.
    \]

!!! note "Vysvetlenie dôkazu"

    Toto je veľmi dôležitý moment. Ukazuje sa, že zákaz niektorých klasických konštrukcií nie je spôsobený tým, že číslo alebo objekt „neexistuje“, ale tým, že dané nástroje sú príliš slabé.

## 7. Algebraický dôkaz, že pravidelný \(7\)-uholník nie je euklidovsky zostrojiteľný

Teraz sa dostávame k veľmi peknej aplikácii.

Chceme algebraicky ukázať, že pravidelný \(7\)-uholník sa nedá zostrojiť pravítkom a kružidlom.

### 7.1 Koreň jednotky siedmeho rádu

Uvažujme komplexné číslo \(x\), pre ktoré platí

\[
x^7=1,
\qquad x\neq 1.
\]

Takéto číslo je siedmy koreň jednotky odlišný od \(1\). Potom platí

\[
x^7-1=0.
\]

Rozkladom dostaneme

\[
x^7-1=(x-1)(x^6+x^5+x^4+x^3+x^2+x+1).
\]

Keďže \(x\neq 1\), musí platiť

\[
x^6+x^5+x^4+x^3+x^2+x+1=0.
\]

Teraz vydelíme rovnicu číslom \(x^3\). Dostaneme

\[
x^3+x^2+x+1+\frac1x+\frac1{x^2}+\frac1{x^3}=0.
\]

Toto je tzv. reciproká rovnica, lebo sa v nej vyskytujú aj mocniny \(x\), aj mocniny \(1/x\).

### 7.2 Substitúcia \(y=x+\frac1x\)

Zaveďme nový výraz

\[
y=x+\frac1x.
\]

Teraz budeme postupne vyjadrovať členy v rovnici pomocou \(y\).

Najprv spočítame \(y^2\):

\[
y^2=\left(x+\frac1x\right)^2
=x^2+2+\frac1{x^2}.
\]

Odtiaľ dostaneme

\[
x^2+\frac1{x^2}=y^2-2.
\]

Teraz spočítame \(y^3\):

\[
y^3=\left(x+\frac1x\right)^3
=x^3+3x+\frac3x+\frac1{x^3}.
\]

Preto

\[
x^3+\frac1{x^3}=y^3-3\left(x+\frac1x\right)=y^3-3y.
\]

Dosadíme tieto dva výsledky do reciprokej rovnice

\[
x^3+x^2+x+1+\frac1x+\frac1{x^2}+\frac1{x^3}=0.
\]

Členy usporiadame takto:

\[
\left(x^3+\frac1{x^3}\right)
+
\left(x^2+\frac1{x^2}\right)
+
\left(x+\frac1x\right)
+1=0.
\]

Po dosadení dostaneme

\[
(y^3-3y)+(y^2-2)+y+1=0.
\]

Teraz už len upravíme:

\[
y^3+y^2-2y-1=0.
\]

Teda číslo \(y\) je koreňom kubického polynómu

\[
y^3+y^2-2y-1.
\]

### 7.3 Súvis s kosínom

Ak teraz zoberieme konkrétne

\[
x=\cos\frac{2\pi}{7}+i\sin\frac{2\pi}{7},
\]

potom, keďže \(|x|=1\), platí

\[
\frac1x=\cos\frac{2\pi}{7}-i\sin\frac{2\pi}{7}.
\]

Preto

\[
x+\frac1x
=
\left(\cos\frac{2\pi}{7}+i\sin\frac{2\pi}{7}\right)
+
\left(\cos\frac{2\pi}{7}-i\sin\frac{2\pi}{7}\right)
=
2\cos\frac{2\pi}{7}.
\]

Teda číslo

\[
2\cos\frac{2\pi}{7}
\]

je koreňom polynómu

\[
y^3+y^2-2y-1.
\]

### 7.4 Ireducibilita tohto polynómu

Preskúmajme polynóm

\[
p(y)=y^3+y^2-2y-1.
\]

Ak by bol reducibilný nad \( \mathbb{Q} \), ako kubický polynóm by musel mať racionálny koreň. Podľa vety o racionálnych koreňoch by jediní kandidáti boli

\[
1 \quad \text{a} \quad -1.
\]

!!! example "Príklad"

    Skúška:

    \[
    p(1)=1+1-2-1=-1\neq 0,
    \]

    \[
    p(-1)=-1+1+2-1=1\neq 0.
    \]

    Teda polynóm nemá racionálny koreň. Preto je nad \( \mathbb{Q} \) ireducibilný.

### 7.5 Záver pre \(7\)-uholník

Ak by sa dal zostrojiť pravidelný \(7\)-uholník, dal by sa zostrojiť aj uhol

\[
\frac{2\pi}{7},
\]

a teda aj číslo

\[
\cos\frac{2\pi}{7}.
\]

Potom by sa dalo zostrojiť aj číslo

\[
2\cos\frac{2\pi}{7},
\]

lebo násobenie zostrojiteľného čísla číslom \(2\) je opäť zostrojiteľná operácia.

Lenže číslo \(2\cos\frac{2\pi}{7}\) je koreňom ireducibilného kubického polynómu

\[
y^3+y^2-2y-1.
\]

Takéto číslo nevznikne euklidovskou konštrukciou pravítkom a kružidlom.

!!! warning "Upozornenie"

    Pravidelný \(7\)-uholník sa nedá zostrojiť pravítkom a kružidlom.

## Záverečné zhrnutie

!!! tip "Dôsledok"

    V tejto kapitole sú najdôležitejšie tieto myšlienky:

    1. **Algebraicky uzavreté pole** je pole, v ktorom má každý nekonštantný polynóm koreň.
    2. **Hlavná veta algebry** hovorí, že pole \( \mathbb{C} \) je algebraicky uzavreté.
    3. Ak polynóm nemá koreň v poli \(F\), vieme často vytvoriť **nadpole**, v ktorom už koreň má.
    4. Takéto nadpole možno skonštruovať pomocou **zvyškových tried modulo ireducibilného polynómu**.
    5. Nad poľom \( \mathbb{Z}_5 \) sa takto dajú vytvoriť nové polia, v ktorých majú korene polynómy ako \(x^2+2\) alebo \(x^2+x+1\).
    6. Algebraické vlastnosti koreňov polynómov majú priamy dôsledok na **geometrickú zostrojiteľnosť**.
    7. Ak dovolíme aj iné krivky než len priamky a kružnice, napríklad parabolu, vieme sa dostať aj ku kubickým rovniciam, napríklad ku číslu \(\sqrt[3]{2}\).
    8. Číslo \(2\cos\frac{2\pi}{7}\) je koreňom ireducibilného kubického polynómu, a preto sa pravidelný \(7\)-uholník euklidovsky zostrojiť nedá.

## Zhrnutie viet a dôkazov

!!! abstract "Definícia"

    Pole \(F\) sa nazýva algebraicky uzavreté, ak každý nekonštantný polynóm z \(F[x]\) má aspoň jeden koreň v poli \(F\).

!!! info "Veta"

    Každý polynóm s komplexnými koeficientmi stupňa aspoň \(1\) má komplexný koreň.

!!! tip "Dôsledok"

    Pole \( \mathbb{C} \) je algebraicky uzavreté.

!!! info "Tvrdenie"

    Každé pole možno vložiť do nejakého algebraicky uzavretého nadpoľa.

!!! info "Tvrdenie"

    Každé konečné teleso je komutatívne.

!!! info "Veta"

    Ak je \(f(x)\) polynóm nad nejakým poľom \(F\), potom existuje nadpole poľa \(F\), v ktorom má daný polynóm koreň.

!!! info "Veta"

    Ak je \(P(x)\) ireducibilný polynóm nad poľom \(F\), potom zvyškové triedy modulo \(P(x)\) tvoria pole. V tomto poli má polynóm \(P(x)\) koreň.

!!! tip "Dôsledok"

    Ak popri pravítku a kružidle dovolíme aj parabolu \(y=x^2\), vieme zostrojiť aj číslo

    \[
    \sqrt[3]{2}.
    \]

!!! warning "Upozornenie"

    Pravidelný \(7\)-uholník sa nedá zostrojiť pravítkom a kružidlom.