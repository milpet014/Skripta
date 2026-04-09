---
icon: fontawesome/solid/2
--- 

<button class="md-button md-button--primary" onclick="window.print()">
  Tlačiť
</button>

# Druhý týždeň

## Redukovaný zvyškový systém, multiplikatívna grupa modulo \( m \) a Eulerova veta

## Teória kongruencií

??? note "Skratka gcd"
    Skratka \( \gcd(a, m) \) pochádza z anglického názvu *greatest common divisor* a znamená najväčší spoločný deliteľ čísel \( a \) a \( m \).

    Teda zápis

    \[
    \gcd(a, m) = 1
    \]

    znamená, že čísla \( a \) a \( m \) sú nesúdeliteľné.

## Úvod do témy

V predchádzajúcej časti sa ukázalo, že pri sčítaní modulo \( m \) tvorí množina všetkých zvyškov grupu. Pri násobení modulo \( m \) je situácia iná. Nie každý zvyšok má totiž násobkový inverzný prvok.

To je veľmi dôležitý rozdiel. Pri sčítaní modulo \( m \) vie každý prvok „zrušiť“ nejaký iný prvok tak, aby výsledkom bola nula. Pri násobení modulo \( m \) to neplatí pre všetky prvky. Preto sa musíme pýtať, ktoré zvyšky majú násobkový inverzný prvok modulo \( m \).

Odpoveď vedie k pojmu redukovaný zvyškový systém. Z týchto prvkov potom vznikne veľmi dôležitá grupa pri násobení modulo \( m \). Na nej stojí aj Eulerova veta, ktorá je základným výsledkom teórie kongruencií a používa sa napríklad pri hľadaní inverzných prvkov modulo \( m \).

## 1. Prečo násobenie modulo \( m \) nevytvára vždy grupu na celej množine \( \mathbb{Z}_m \)

### 1.1 Príklad modulo \( 9 \)

Uvažujme množinu všetkých zvyškov po delení \( 9 \):

\[
\mathbb{Z}_9 = \{0, 1, 2, 3, 4, 5, 6, 7, 8\}.
\]

Ak na nej vezmeme násobenie modulo \( 9 \), na prvý pohľad sa môže zdať, že by to mohla byť grupa. Výsledok násobenia dvoch zvyškov je opäť zvyšok modulo \( 9 \), takže z množiny „nevyjdeme“.

??? warning "Upozornenie"
    Problém je v tom, že nie každý prvok má inverzný prvok.

    Napríklad pri prvku \( 3 \) by sme potrebovali nájsť také číslo \( b \), aby platilo

    \[
    3b \equiv 1 \pmod{9}.
    \]

    To sa však nedá. Násobky čísla \( 3 \) modulo \( 9 \) sú len

    \[
    3, 6, 0, 3, 6, 0, \dots
    \]

    a nikdy medzi nimi nedostaneme \( 1 \).

    Podobne ani \( 6 \) nemá inverzný prvok modulo \( 9 \).

    To znamená, že množina \( \mathbb{Z}_9 \) pri násobení modulo \( 9 \) nie je grupou.

### 1.2 Kde je problém

Prvky \( 3 \) a \( 6 \) majú s číslom \( 9 \) spoločný deliteľ väčší ako \( 1 \). Inými slovami:

\[
\gcd(3, 9) = 3,
\]

\[
\gcd(6, 9) = 3.
\]

!!! note "Vysvetlenie"
    Práve v tom je jadro problému. Pri násobení modulo \( m \) majú inverzný prvok presne tie prvky, ktoré sú s modulom \( m \) nesúdeliteľné.

To nás vedie k novej množine.

## 2. Redukovaný zvyškový systém

### 2.1 Základná myšlienka

Ak z množiny všetkých zvyškov vyberieme iba tie, ktoré sú s modulom \( m \) nesúdeliteľné, dostaneme množinu prvkov, ktoré sa pri násobení modulo \( m \) správajú omnoho lepšie.

Táto množina sa označuje ako \( \mathbb{Z}_m^{*} \).

### 2.2 Definícia

!!! abstract "Definícia"
    Pre prirodzené číslo \( m \) definujeme

    \[
    \mathbb{Z}_m^{*} = \{\, k;\ 1 \leq k < m \text{ a } \gcd(k, m) = 1 \,\}.
    \]

    To znamená, že do množiny \( \mathbb{Z}_m^{*} \) patria práve tie zvyšky od \( 1 \) po \( m - 1 \), ktoré nemajú s číslom \( m \) žiadneho spoločného deliteľa okrem čísla \( 1 \).

    Táto množina sa nazýva redukovaný zvyškový systém modulo \( m \).

!!! abstract "Definícia"
    Množina

    \[
    \mathbb{Z}_m = \{0, 1, 2, \dots, m - 1\}
    \]

    sa nazýva úplný zvyškový systém modulo \( m \).

### 2.3 Príklady

!!! example "Príklad"
    Pre \( m = 12 \) dostaneme

    \[
    \mathbb{Z}_{12}^{*} = \{1, 5, 7, 11\},
    \]

    pretože iba tieto čísla z množiny \( \{1, 2, \dots, 11\} \) sú nesúdeliteľné s \( 12 \).

!!! example "Príklad"
    Pre \( m = 18 \) dostaneme

    \[
    \mathbb{Z}_{18}^{*} = \{1, 5, 7, 11, 13, 17\}.
    \]

!!! example "Príklad"
    Ak je \( p \) prvočíslo, potom každé číslo \( 1, 2, \dots, p - 1 \) je s \( p \) nesúdeliteľné. Preto platí

    \[
    \mathbb{Z}_p^{*} = \{1, 2, \dots, p - 1\}.
    \]

!!! note "Vysvetlenie príkladu"
    To je veľmi dôležité pozorovanie. Pri prvočíselnom module sa do redukovaného zvyškového systému dostanú všetky nenulové zvyšky.

## 3. Existencia násobkového inverzného prvku modulo \( m \)

Potrebujeme presne vystihnúť, kedy má číslo \( a \) násobkový inverzný prvok modulo \( m \).

Hľadáme teda odpoveď na otázku:

\[
ab \equiv 1 \pmod{m}.
\]

Také číslo \( b \) sa chápe ako \( 1/a \) modulo \( m \). Nejde o obyčajné delenie v reálnych číslach. Ide o nájdenie prvku, ktorý pri násobení s \( a \) dáva zvyšok \( 1 \) po delení \( m \).

!!! info "Veta"
    Nech \( m \) je prirodzené číslo a nech \( a \) je celé číslo. Ak

    \[
    \gcd(a, m) = 1,
    \]

    potom existuje také \( b \) z množiny \( \{1, 2, \dots, m - 1\} \), že

    \[
    ab \equiv 1 \pmod{m}.
    \]

    Inými slovami: ak je \( a \) s modulom \( m \) nesúdeliteľné, potom má modulo \( m \) násobkový inverzný prvok.

!!! note "Vysvetlenie vety"
    Táto veta je základná. Hovorí nám, že prvky redukovaného zvyškového systému majú inverzné prvky. Teda práve tie prvky, ktoré sme si vybrali do \( \mathbb{Z}_m^{*} \), sú „dobré“ pre násobenie modulo \( m \).

    Bez tejto vety by sme nevedeli ukázať, že \( \mathbb{Z}_m^{*} \) pri násobení modulo \( m \) tvorí grupu.

??? success "Dôkaz"
    Z predpokladu \( \gcd(a, m) = 1 \) vieme podľa Bézoutovej vety, že existujú celé čísla \( x \) a \( y \) tak, že

    \[
    ax + my = 1.
    \]

    To je veľmi silný vzťah. Hovorí, že číslo \( 1 \) vieme vyjadriť ako lineárnu kombináciu čísel \( a \) a \( m \).

    Teraz číslo \( x \) vydelíme číslom \( m \) so zvyškom. Teda napíšeme

    \[
    x = qm + b,
    \]

    kde \( b \) je zvyšok po delení \( x \) číslom \( m \). Preto platí

    \[
    b \in \{0, 1, 2, \dots, m - 1\}.
    \]

    Dosadíme tento tvar za \( x \) do rovnosti \( ax + my = 1 \):

    \[
    a(qm + b) + my = 1.
    \]

    Roztvorme zátvorku:

    \[
    aqm + ab + my = 1.
    \]

    Vyberieme \( m \) pred zátvorku z členov, ktoré ho obsahujú:

    \[
    ab + m(aq + y) = 1.
    \]

    Teraz prenesme pozornosť na člen \( ab \). Rovnosť hovorí, že rozdiel \( 1 - ab \) je násobkom čísla \( m \). To znamená, že číslo \( m \) delí rozdiel \( ab - 1 \). Teda

    \[
    ab \equiv 1 \pmod{m}.
    \]

    Našli sme teda číslo \( b \), ktoré je inverzným prvkom k \( a \) modulo \( m \).

    Ešte si všimnime, že \( b \) nemôže byť \( 0 \). Keby bolo \( b = 0 \), dostali by sme

    \[
    ab \equiv 0 \pmod{m},
    \]

    čo nemôže byť rovné \( 1 \) modulo \( m \). Preto naozaj platí

    \[
    b \in \{1, 2, \dots, m - 1\}.
    \]

    Tým je veta dokázaná.

## 4. Multiplikatívna grupa modulo \( m \)

!!! info "Veta"
    Pre každé prirodzené číslo \( m \) množina \( \mathbb{Z}_m^{*} \) s operáciou násobenia modulo \( m \) tvorí komutatívnu grupu.

    Zapisujeme to ako

    \[
    (\mathbb{Z}_m^{*}, \cdot)
    \]

    alebo presnejšie ako grupa pri násobení modulo \( m \).

    Komutatívna grupa sa nazýva aj Abelova grupa.

!!! note "Vysvetlenie vety"
    Toto tvrdenie hovorí, že ak vezmeme iba tie zvyšky, ktoré sú s \( m \) nesúdeliteľné, a budeme ich násobiť modulo \( m \), tak:

    - výsledok zostane v tej istej množine,
    - násobenie je asociatívne,
    - existuje neutrálny prvok,
    - každý prvok má inverzný prvok,
    - navyše násobenie je komutatívne.

    To je veľmi silná informácia. Znamená to, že na \( \mathbb{Z}_m^{*} \) môžeme pri násobení modulo \( m \) používať všetky základné vlastnosti grupy.

??? success "Dôkaz"
    Treba overiť vlastnosti grupy jednu po druhej.

    **Asociativita**

    Asociativita násobenia modulo \( m \) vyplýva z asociativity obyčajného násobenia celých čísel. Keď násobíme tri prvky a potom berieme zvyšok modulo \( m \), nezáleží na tom, ako zátvorky rozložíme.

    Teda pre všetky \( a, b, c \) platí

    \[
    (a \cdot b) \cdot c \equiv a \cdot (b \cdot c) \pmod{m}.
    \]

    **Komutatívnosť**

    Násobenie celých čísel je komutatívne, teda

    \[
    ab = ba.
    \]

    Po prechode na zvyšky modulo \( m \) zostáva táto vlastnosť zachovaná:

    \[
    a \cdot b \equiv b \cdot a \pmod{m}.
    \]

    **Neutrálny prvok**

    Neutrálnym prvkom je číslo \( 1 \), pretože pre každý prvok \( a \) z množiny \( \mathbb{Z}_m^{*} \) platí

    \[
    a \cdot 1 \equiv 1 \cdot a \equiv a \pmod{m}.
    \]

    Zároveň číslo \( 1 \) patrí do \( \mathbb{Z}_m^{*} \), lebo \( \gcd(1, m) = 1 \).

    **Inverzný prvok**

    Nech \( a \in \mathbb{Z}_m^{*} \). To znamená, že \( \gcd(a, m) = 1 \).

    Podľa predchádzajúcej vety potom existuje \( b \) také, že

    \[
    ab \equiv 1 \pmod{m}.
    \]

    Teda \( b \) je inverzný prvok k \( a \) modulo \( m \).

    Navyše z rovnosti

    \[
    ab + mt = 1
    \]

    pre nejaké celé číslo \( t \) vidíme, že každý spoločný deliteľ čísel \( b \) a \( m \) by musel deliť aj pravú stranu, teda číslo \( 1 \). Preto

    \[
    \gcd(b, m) = 1,
    \]

    čiže aj \( b \) patrí do \( \mathbb{Z}_m^{*} \).

    Tým je ukázané, že každý prvok má inverzný prvok v tej istej množine.

    Všetky podmienky grupy sú splnené, a preto \( (\mathbb{Z}_m^{*}, \cdot) \) tvorí komutatívnu grupu.

## 5. Príklady inverzných prvkov modulo \( m \)

### 5.1 Príklady modulo \( 8 \)

!!! example "Príklad"
    V množine \( \mathbb{Z}_8^{*} \) patria tie prvky, ktoré sú s \( 8 \) nesúdeliteľné:

    \[
    \mathbb{Z}_8^{*} = \{1, 3, 5, 7\}.
    \]

    Pozrime sa na niektoré inverzné prvky:

    \[
    3 \cdot 3 = 9 \equiv 1 \pmod{8},
    \]

    preto

    \[
    \frac{1}{3} \equiv 3 \pmod{8}.
    \]

    Ďalej

    \[
    5 \cdot 5 = 25 \equiv 1 \pmod{8},
    \]

    preto

    \[
    \frac{1}{5} \equiv 5 \pmod{8}.
    \]

!!! note "Vysvetlenie príkladu"
    To znamená, že prvky \( 3 \) a \( 5 \) sú samy sebe inverzné.

### 5.2 Príklady modulo \( 9 \)

!!! example "Príklad"
    Máme

    \[
    \mathbb{Z}_9^{*} = \{1, 2, 4, 5, 7, 8\}.
    \]

    Niektoré inverzné prvky sú:

    \[
    4 \cdot 7 = 28 \equiv 1 \pmod{9},
    \]

    preto

    \[
    \frac{1}{4} \equiv 7 \pmod{9}.
    \]

    Ďalej

    \[
    5 \cdot 2 = 10 \equiv 1 \pmod{9},
    \]

    preto

    \[
    \frac{1}{5} \equiv 2 \pmod{9}.
    \]

!!! note "Vysvetlenie príkladu"
    Tieto príklady dobre ukazujú, že nie všetky inverzné prvky sú rovnaké ako pôvodné číslo, ale vždy existujú v rámci \( \mathbb{Z}_m^{*} \).

## 6. Eulerova funkcia

### 6.1 Definícia

!!! abstract "Definícia"
    Počet prvkov množiny \( \mathbb{Z}_m^{*} \) sa označuje symbolom

    \[
    \varphi(m)
    \]

    a nazýva sa Eulerova funkcia.

    Teda

    \[
    \lvert \mathbb{Z}_m^{*} \rvert = \varphi(m).
    \]

    Inými slovami: \( \varphi(m) \) je počet čísel z množiny \( \{1, 2, \dots, m - 1\} \), ktoré sú s číslom \( m \) nesúdeliteľné.

### 6.2 Príklady

!!! example "Príklad"
    Pre \( m = 9 \) máme

    \[
    \mathbb{Z}_9^{*} = \{1, 2, 4, 5, 7, 8\},
    \]

    preto

    \[
    \varphi(9) = 6.
    \]

!!! example "Príklad"
    Pre \( m = 12 \) máme

    \[
    \mathbb{Z}_{12}^{*} = \{1, 5, 7, 11\},
    \]

    preto

    \[
    \varphi(12) = 4.
    \]

!!! example "Príklad"
    Pre \( m = 100 \) budeme mať neskôr

    \[
    \varphi(100) = 40.
    \]

    Pre \( m = 1000 \) dostaneme

    \[
    \varphi(1000) = 400.
    \]

    Pre \( m = 99 \) dostaneme

    \[
    \varphi(99) = 60.
    \]

## 7. Eulerova veta

!!! info "Veta"
    Nech \( m \) je prirodzené číslo a nech \( a \) je celé číslo také, že

    \[
    \gcd(a, m) = 1.
    \]

    Potom platí

    \[
    a^{\varphi(m)} \equiv 1 \pmod{m}.
    \]

    To je Eulerova veta.

!!! note "Vysvetlenie vety"
    Eulerova veta je veľmi silný výsledok. Hovorí, že ak je číslo \( a \) nesúdeliteľné s modulom \( m \), potom dostaneme po umocnení na exponent \( \varphi(m) \) vždy zvyšok \( 1 \) modulo \( m \).

    To je užitočné najmä pri výpočte inverzných prvkov. Z Eulerovej vety totiž hneď dostaneme dôležitý dôsledok.

!!! tip "Dôsledok"
    Ak \( \gcd(a, m) = 1 \), potom

    \[
    \frac{1}{a} \equiv a^{\varphi(m) - 1} \pmod{m}.
    \]

!!! note "Vysvetlenie vety"
    Z Eulerovej vety máme

    \[
    a^{\varphi(m)} \equiv 1 \pmod{m}.
    \]

    To môžeme prepísať ako

    \[
    a \cdot a^{\varphi(m) - 1} \equiv 1 \pmod{m}.
    \]

    Teda číslo \( a^{\varphi(m) - 1} \) je práve inverzný prvok k \( a \) modulo \( m \).

    To je presne význam zápisu

    \[
    \frac{1}{a} \equiv a^{\varphi(m) - 1} \pmod{m}.
    \]

!!! note "Vysvetlenie dôkazu"
    Dôkaz využíva to, že ak v redukovanom zvyškovom systéme všetky prvky vynásobíme tým istým číslom \( a \), ktoré je s \( m \) nesúdeliteľné, dostaneme opäť ten istý redukovaný zvyškový systém, len možno v inom poradí.

    To je hlavná myšlienka dôkazu.

??? success "Dôkaz"
    Nech

    \[
    \mathbb{Z}_m^{*} = \{a_1, a_2, \dots, a_{\varphi(m)}\}.
    \]

    To znamená, že \( a_1, a_2, \dots, a_{\varphi(m)} \) sú všetky zvyšky modulo \( m \), ktoré sú s \( m \) nesúdeliteľné.

    Teraz vezmime pevné číslo \( a \) také, že

    \[
    \gcd(a, m) = 1.
    \]

    Pozrime sa na prvky

    \[
    aa_1, aa_2, \dots, aa_{\varphi(m)},
    \]

    pričom všetko chápeme modulo \( m \).

    Najprv ukážeme, že tieto nové prvky sú navzájom rôzne. Predpokladajme, že pre nejaké indexy \( i \) a \( j \) platí

    \[
    aa_i \equiv aa_j \pmod{m}.
    \]

    Keďže \( \gcd(a, m) = 1 \), číslo \( a \) má modulo \( m \) inverzný prvok. Označme ho \( a^{-1} \).

    Vynásobme obe strany kongruencie zľava týmto inverzným prvkom:

    \[
    a^{-1} \cdot (aa_i) \equiv a^{-1} \cdot (aa_j) \pmod{m}.
    \]

    Použijeme asociativitu:

    \[
    (a^{-1}a)a_i \equiv (a^{-1}a)a_j \pmod{m}.
    \]

    Keďže \( a^{-1}a \equiv 1 \pmod{m} \), dostaneme

    \[
    1 \cdot a_i \equiv 1 \cdot a_j \pmod{m},
    \]

    teda

    \[
    a_i \equiv a_j \pmod{m}.
    \]

    Ale prvky \( a_1, a_2, \dots, a_{\varphi(m)} \) boli všetky rôzne. Preto z toho vyplýva, že aj prvky

    \[
    aa_1, aa_2, \dots, aa_{\varphi(m)}
    \]

    sú všetky navzájom rôzne modulo \( m \).

    Ďalej si všimnime, že každý prvok \( aa_i \) je opäť nesúdeliteľný s \( m \), lebo súčin dvoch čísel nesúdeliteľných s \( m \) je opäť nesúdeliteľný s \( m \).

    Máme teda \( \varphi(m) \) rôznych prvkov, ktoré všetky patria do \( \mathbb{Z}_m^{*} \).

    Ale \( \mathbb{Z}_m^{*} \) má práve \( \varphi(m) \) prvkov. Preto množina

    \[
    \{aa_1, aa_2, \dots, aa_{\varphi(m)}\}
    \]

    musí byť tá istá množina ako

    \[
    \{a_1, a_2, \dots, a_{\varphi(m)}\},
    \]

    len v inom poradí.

    Keďže ide o tie isté prvky v inom poradí, ich súčin je modulo \( m \) rovnaký. Teda

    \[
    (aa_1)(aa_2)\cdots(aa_{\varphi(m)}) \equiv a_1a_2\cdots a_{\varphi(m)} \pmod{m}.
    \]

    Na ľavej strane sa číslo \( a \) vyskytuje \( \varphi(m) \)-krát, takže môžeme napísať

    \[
    a^{\varphi(m)} \cdot (a_1a_2\cdots a_{\varphi(m)}) \equiv a_1a_2\cdots a_{\varphi(m)} \pmod{m}.
    \]

    Označme si

    \[
    A = a_1a_2\cdots a_{\varphi(m)}.
    \]

    Potom dostaneme

    \[
    a^{\varphi(m)} \cdot A \equiv A \pmod{m}.
    \]

    Teraz ukážeme, prečo môžeme faktor \( A \) skrátiť. Každý prvok \( a_i \) je nesúdeliteľný s \( m \). Preto aj ich súčin \( A \) je nesúdeliteľný s \( m \). To znamená, že \( A \) má modulo \( m \) inverzný prvok.

    Môžeme teda obe strany kongruencie vynásobiť inverzným prvkom k \( A \) a dostaneme

    \[
    a^{\varphi(m)} \equiv 1 \pmod{m}.
    \]

    Tým je Eulerova veta dokázaná.

## 8. Ako sa počíta Eulerova funkcia

### 8.1 Veta pre dva rôzne prvočíselné delitele

!!! info "Veta"
    Nech

    \[
    m = p_1^{k_1} \cdot p_2^{k_2},
    \]

    kde \( p_1 \) a \( p_2 \) sú rôzne prvočísla.

    Potom platí

    \[
    \varphi(m) = m\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right).
    \]

!!! note "Vysvetlenie dôkazu"
    Chceme spočítať, koľko čísel z množiny

    \[
    \{0, 1, 2, \dots, m - 1\}
    \]

    je s \( m \) nesúdeliteľných.

    Číslo nebude nesúdeliteľné s \( m \) práve vtedy, keď bude deliteľné aspoň jedným z prvočísel \( p_1 \) alebo \( p_2 \).

    Preto spočítame:

    - koľko čísel je deliteľných \( p_1 \),
    - koľko čísel je deliteľných \( p_2 \),
    - a potom opravíme dvojité započítanie tých, ktoré sú deliteľné oboma.

??? success "Dôkaz"
    Počet čísel z \( \{0, 1, \dots, m - 1\} \), ktoré sú deliteľné \( p_1 \), je

    \[
    \frac{m}{p_1}.
    \]

    Počet čísel deliteľných \( p_2 \) je

    \[
    \frac{m}{p_2}.
    \]

    Čísla deliteľné oboma prvočíslami sú deliteľné súčinom \( p_1p_2 \), a tých je

    \[
    \frac{m}{p_1p_2}.
    \]

    Preto počet čísel, ktoré nie sú nesúdeliteľné s \( m \), je

    \[
    \frac{m}{p_1} + \frac{m}{p_2} - \frac{m}{p_1p_2}.
    \]

    Počet čísel nesúdeliteľných s \( m \) teda dostaneme odčítaním od celkového počtu \( m \):

    \[
    \varphi(m) = m - \frac{m}{p_1} - \frac{m}{p_2} + \frac{m}{p_1p_2}.
    \]

    Vytkneme \( m \):

    \[
    \varphi(m) = m\left(1 - \frac{1}{p_1} - \frac{1}{p_2} + \frac{1}{p_1p_2}\right).
    \]

    Tento výraz sa rozkladá na

    \[
    \varphi(m) = m\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right).
    \]

    Tým je dôkaz hotový.

### 8.2 Všeobecný tvar

!!! info "Veta"
    Ak má \( m \) rozklad

    \[
    m = p_1^{k_1} \cdot p_2^{k_2} \cdots p_r^{k_r},
    \]

    kde \( p_1, p_2, \dots, p_r \) sú navzájom rôzne prvočísla, potom platí

    \[
    \varphi(m) = m\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right)\cdots\left(1 - \frac{1}{p_r}\right).
    \]

    To je všeobecný vzorec pre Eulerovu funkciu.

## 9. Výpočty inverzných prvkov pomocou Eulerovej vety

### 9.1 Inverzný prvok čísla \( 11 \) modulo \( 100 \)

!!! example "Príklad"
    Chceme nájsť

    \[
    \frac{1}{11} \pmod{100}.
    \]

    Najprv spočítame Eulerovu funkciu:

    \[
    100 = 2^2 \cdot 5^2,
    \]

    preto

    \[
    \varphi(100) = 100\left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{5}\right) = 100 \cdot \frac{1}{2} \cdot \frac{4}{5} = 40.
    \]

    Podľa dôsledku Eulerovej vety platí

    \[
    \frac{1}{11} \equiv 11^{39} \pmod{100}.
    \]

    Teraz vypočítame potrebné mocniny:

    \[
    11^2 = 121 \equiv 21 \pmod{100},
    \]

    \[
    11^4 \equiv 21^2 = 441 \equiv 41 \pmod{100},
    \]

    \[
    11^8 \equiv 41^2 = 1681 \equiv 81 \pmod{100},
    \]

    \[
    11^{16} \equiv 81^2 = 6561 \equiv 61 \pmod{100},
    \]

    \[
    11^{32} \equiv 61^2 = 3721 \equiv 21 \pmod{100}.
    \]

    Rozložíme exponent

    \[
    39 = 32 + 4 + 2 + 1.
    \]

    Teda

    \[
    11^{39} = 11^{32} \cdot 11^4 \cdot 11^2 \cdot 11.
    \]

    Dosadíme zvyšky:

    \[
    11^{39} \equiv 21 \cdot 41 \cdot 21 \cdot 11 \pmod{100}.
    \]

    Počítajme postupne:

    \[
    21 \cdot 41 = 861 \equiv 61 \pmod{100},
    \]

    \[
    61 \cdot 21 = 1281 \equiv 81 \pmod{100},
    \]

    \[
    81 \cdot 11 = 891 \equiv 91 \pmod{100}.
    \]

    Preto

    \[
    \frac{1}{11} \equiv 91 \pmod{100}.
    \]

!!! note "Vysvetlenie príkladu"
    Kontrola:

    \[
    11 \cdot 91 = 1001 \equiv 1 \pmod{100}.
    \]

### 9.2 Inverzný prvok čísla \( 17 \) modulo \( 100 \)

!!! example "Príklad"
    Hľadáme

    \[
    \frac{1}{17} \pmod{100}.
    \]

    Opäť platí

    \[
    \varphi(100) = 40,
    \]

    teda

    \[
    \frac{1}{17} \equiv 17^{39} \pmod{100}.
    \]

    Vypočítame mocniny:

    \[
    17^2 = 289 \equiv 89 \pmod{100},
    \]

    \[
    17^4 \equiv 89^2 = 7921 \equiv 21 \pmod{100},
    \]

    \[
    17^8 \equiv 21^2 = 441 \equiv 41 \pmod{100},
    \]

    \[
    17^{16} \equiv 41^2 = 1681 \equiv 81 \pmod{100},
    \]

    \[
    17^{32} \equiv 81^2 = 6561 \equiv 61 \pmod{100}.
    \]

    Znova použijeme rozklad

    \[
    39 = 32 + 4 + 2 + 1.
    \]

    Dostaneme

    \[
    17^{39} \equiv 61 \cdot 21 \cdot 89 \cdot 17 \pmod{100}.
    \]

    Postupne:

    \[
    61 \cdot 21 = 1281 \equiv 81 \pmod{100},
    \]

    \[
    81 \cdot 89 = 7209 \equiv 9 \pmod{100},
    \]

    \[
    9 \cdot 17 = 153 \equiv 53 \pmod{100}.
    \]

    Preto

    \[
    \frac{1}{17} \equiv 53 \pmod{100}.
    \]

!!! note "Vysvetlenie príkladu"
    Kontrola:

    \[
    17 \cdot 53 = 901 \equiv 1 \pmod{100}.
    \]

### 9.3 Inverzný prvok čísla \( 19 \) modulo \( 1000 \)

!!! example "Príklad"
    Chceme nájsť

    \[
    \frac{1}{19} \pmod{1000}.
    \]

    Najprv spočítame Eulerovu funkciu:

    \[
    1000 = 2^3 \cdot 5^3,
    \]

    preto

    \[
    \varphi(1000) = 1000\left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{5}\right) = 1000 \cdot \frac{1}{2} \cdot \frac{4}{5} = 400.
    \]

    Podľa dôsledku Eulerovej vety platí

    \[
    \frac{1}{19} \equiv 19^{399} \pmod{1000}.
    \]

    Teraz použijeme opakované umocňovanie:

    \[
    19^2 = 361 \equiv 361 \pmod{1000},
    \]

    \[
    19^4 \equiv 361^2 = 130321 \equiv 321 \pmod{1000},
    \]

    \[
    19^8 \equiv 321^2 = 103041 \equiv 41 \pmod{1000},
    \]

    \[
    19^{16} \equiv 41^2 = 1681 \equiv 681 \pmod{1000},
    \]

    \[
    19^{32} \equiv 681^2 = 463761 \equiv 761 \pmod{1000},
    \]

    \[
    19^{64} \equiv 761^2 = 579121 \equiv 121 \pmod{1000},
    \]

    \[
    19^{128} \equiv 121^2 = 14641 \equiv 641 \pmod{1000},
    \]

    \[
    19^{256} \equiv 641^2 = 410881 \equiv 881 \pmod{1000}.
    \]

    Rozložíme exponent

    \[
    399 = 256 + 128 + 8 + 4 + 2 + 1.
    \]

    Teda

    \[
    19^{399} \equiv 19^{256} \cdot 19^{128} \cdot 19^8 \cdot 19^4 \cdot 19^2 \cdot 19 \pmod{1000},
    \]

    čiže

    \[
    19^{399} \equiv 881 \cdot 641 \cdot 41 \cdot 321 \cdot 361 \cdot 19 \pmod{1000}.
    \]

    Počítajme postupne:

    \[
    881 \cdot 641 = 564721 \equiv 721 \pmod{1000},
    \]

    \[
    721 \cdot 41 = 29561 \equiv 561 \pmod{1000},
    \]

    \[
    561 \cdot 321 = 180081 \equiv 81 \pmod{1000},
    \]

    \[
    81 \cdot 361 = 29241 \equiv 241 \pmod{1000},
    \]

    \[
    241 \cdot 19 = 4579 \equiv 579 \pmod{1000}.
    \]

    Preto

    \[
    \frac{1}{19} \equiv 579 \pmod{1000}.
    \]

!!! note "Vysvetlenie príkladu"
    Kontrola:

    \[
    19 \cdot 579 = 11001 \equiv 1 \pmod{1000}.
    \]

### 9.4 Inverzný prvok čísla \( 7 \) modulo \( 99 \)

!!! example "Príklad"
    Chceme určiť

    \[
    \frac{1}{7} \pmod{99}.
    \]

    Najprv rozložíme číslo \( 99 \):

    \[
    99 = 3^2 \cdot 11.
    \]

    Preto

    \[
    \varphi(99) = 99\left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{11}\right)
    = 99 \cdot \frac{2}{3} \cdot \frac{10}{11}
    = 60.
    \]

    Podľa Eulerovej vety teda

    \[
    \frac{1}{7} \equiv 7^{59} \pmod{99}.
    \]

    Vypočítame mocniny:

    \[
    7^2 = 49 \equiv 49 \pmod{99},
    \]

    \[
    7^4 \equiv 49^2 = 2401 \equiv 25 \pmod{99},
    \]

    \[
    7^8 \equiv 25^2 = 625 \equiv 31 \pmod{99},
    \]

    \[
    7^{16} \equiv 31^2 = 961 \equiv 70 \pmod{99},
    \]

    \[
    7^{32} \equiv 70^2 = 4900 \equiv 49 \pmod{99}.
    \]

    Rozklad exponentu:

    \[
    59 = 32 + 16 + 8 + 2 + 1.
    \]

    Preto

    \[
    7^{59} \equiv 49 \cdot 70 \cdot 31 \cdot 49 \cdot 7 \pmod{99}.
    \]

    Počítajme postupne:

    \[
    49 \cdot 70 = 3430 \equiv 64 \pmod{99},
    \]

    \[
    64 \cdot 31 = 1984 \equiv 4 \pmod{99},
    \]

    \[
    4 \cdot 49 = 196 \equiv 97 \pmod{99},
    \]

    \[
    97 \cdot 7 = 679 \equiv 85 \pmod{99}.
    \]

    Teda

    \[
    \frac{1}{7} \equiv 85 \pmod{99}.
    \]

!!! note "Vysvetlenie príkladu"
    Kontrola:

    \[
    7 \cdot 85 = 595 \equiv 1 \pmod{99}.
    \]

## 10. Záverečné zhrnutie

Pri násobení modulo \( m \) netvorí množina všetkých zvyškov \( \mathbb{Z}_m \) vo všeobecnosti grupu, pretože nie každý prvok má inverzný prvok.

Preto sa zavádza redukovaný zvyškový systém

\[
\mathbb{Z}_m^{*} = \{\, k;\ 1 \leq k < m \text{ a } \gcd(k, m) = 1 \,\}.
\]

Táto množina obsahuje presne tie zvyšky, ktoré sú s \( m \) nesúdeliteľné, a pri násobení modulo \( m \) tvorí komutatívnu grupu.

Počet jej prvkov je Eulerova funkcia \( \varphi(m) \).

Ak je \( \gcd(a, m) = 1 \), potom číslo \( a \) má násobkový inverzný prvok modulo \( m \) a platí Eulerova veta

\[
a^{\varphi(m)} \equiv 1 \pmod{m}.
\]

Z toho vyplýva veľmi užitočný dôsledok

\[
\frac{1}{a} \equiv a^{\varphi(m) - 1} \pmod{m},
\]

ktorý umožňuje počítať inverzné prvky pomocou mocnín modulo \( m \).

Najdôležitejšia myšlienka celej témy je táto: pri násobení modulo \( m \) sú „dobré“ práve tie zvyšky, ktoré sú s \( m \) nesúdeliteľné. Práve tie tvoria grupu a práve na nich funguje Eulerova veta.

## Zhrnutie viet a dôkazov

!!! info "Veta"
    Nech \( m \) je prirodzené číslo a nech \( a \) je celé číslo. Ak

    \[
    \gcd(a, m) = 1,
    \]

    potom existuje také \( b \) z množiny \( \{1, 2, \dots, m - 1\} \), že

    \[
    ab \equiv 1 \pmod{m}.
    \]

    Inými slovami: ak je \( a \) s modulom \( m \) nesúdeliteľné, potom má modulo \( m \) násobkový inverzný prvok.

??? success "Dôkaz"
    Z predpokladu \( \gcd(a, m) = 1 \) vieme podľa Bézoutovej vety, že existujú celé čísla \( x \) a \( y \) tak, že

    \[
    ax + my = 1.
    \]

    To je veľmi silný vzťah. Hovorí, že číslo \( 1 \) vieme vyjadriť ako lineárnu kombináciu čísel \( a \) a \( m \).

    Teraz číslo \( x \) vydelíme číslom \( m \) so zvyškom. Teda napíšeme

    \[
    x = qm + b,
    \]

    kde \( b \) je zvyšok po delení \( x \) číslom \( m \). Preto platí

    \[
    b \in \{0, 1, 2, \dots, m - 1\}.
    \]

    Dosadíme tento tvar za \( x \) do rovnosti \( ax + my = 1 \):

    \[
    a(qm + b) + my = 1.
    \]

    Roztvorme zátvorku:

    \[
    aqm + ab + my = 1.
    \]

    Vyberieme \( m \) pred zátvorku z členov, ktoré ho obsahujú:

    \[
    ab + m(aq + y) = 1.
    \]

    Teraz prenesme pozornosť na člen \( ab \). Rovnosť hovorí, že rozdiel \( 1 - ab \) je násobkom čísla \( m \). To znamená, že číslo \( m \) delí rozdiel \( ab - 1 \). Teda

    \[
    ab \equiv 1 \pmod{m}.
    \]

    Našli sme teda číslo \( b \), ktoré je inverzným prvkom k \( a \) modulo \( m \).

    Ešte si všimnime, že \( b \) nemôže byť \( 0 \). Keby bolo \( b = 0 \), dostali by sme

    \[
    ab \equiv 0 \pmod{m},
    \]

    čo nemôže byť rovné \( 1 \) modulo \( m \). Preto naozaj platí

    \[
    b \in \{1, 2, \dots, m - 1\}.
    \]

    Tým je veta dokázaná.

---

!!! info "Veta"
    Pre každé prirodzené číslo \( m \) množina \( \mathbb{Z}_m^{*} \) s operáciou násobenia modulo \( m \) tvorí komutatívnu grupu.

    Zapisujeme to ako

    \[
    (\mathbb{Z}_m^{*}, \cdot)
    \]

    alebo presnejšie ako grupa pri násobení modulo \( m \).

    Komutatívna grupa sa nazýva aj Abelova grupa.

??? success "Dôkaz"
    Treba overiť vlastnosti grupy jednu po druhej.

    **Asociativita**

    Asociativita násobenia modulo \( m \) vyplýva z asociativity obyčajného násobenia celých čísel. Keď násobíme tri prvky a potom berieme zvyšok modulo \( m \), nezáleží na tom, ako zátvorky rozložíme.

    Teda pre všetky \( a, b, c \) platí

    \[
    (a \cdot b) \cdot c \equiv a \cdot (b \cdot c) \pmod{m}.
    \]

    **Komutatívnosť**

    Násobenie celých čísel je komutatívne, teda

    \[
    ab = ba.
    \]

    Po prechode na zvyšky modulo \( m \) zostáva táto vlastnosť zachovaná:

    \[
    a \cdot b \equiv b \cdot a \pmod{m}.
    \]

    **Neutrálny prvok**

    Neutrálnym prvkom je číslo \( 1 \), pretože pre každý prvok \( a \) z množiny \( \mathbb{Z}_m^{*} \) platí

    \[
    a \cdot 1 \equiv 1 \cdot a \equiv a \pmod{m}.
    \]

    Zároveň číslo \( 1 \) patrí do \( \mathbb{Z}_m^{*} \), lebo \( \gcd(1, m) = 1 \).

    **Inverzný prvok**

    Nech \( a \in \mathbb{Z}_m^{*} \). To znamená, že \( \gcd(a, m) = 1 \).

    Podľa predchádzajúcej vety potom existuje \( b \) také, že

    \[
    ab \equiv 1 \pmod{m}.
    \]

    Teda \( b \) je inverzný prvok k \( a \) modulo \( m \).

    Navyše z rovnosti

    \[
    ab + mt = 1
    \]

    pre nejaké celé číslo \( t \) vidíme, že každý spoločný deliteľ čísel \( b \) a \( m \) by musel deliť aj pravú stranu, teda číslo \( 1 \). Preto

    \[
    \gcd(b, m) = 1,
    \]

    čiže aj \( b \) patrí do \( \mathbb{Z}_m^{*} \).

    Tým je ukázané, že každý prvok má inverzný prvok v tej istej množine.

    Všetky podmienky grupy sú splnené, a preto \( (\mathbb{Z}_m^{*}, \cdot) \) tvorí komutatívnu grupu.

---

!!! info "Veta"
    Nech \( m \) je prirodzené číslo a nech \( a \) je celé číslo také, že

    \[
    \gcd(a, m) = 1.
    \]

    Potom platí

    \[
    a^{\varphi(m)} \equiv 1 \pmod{m}.
    \]

    To je Eulerova veta.

??? success "Dôkaz"
    Nech

    \[
    \mathbb{Z}_m^{*} = \{a_1, a_2, \dots, a_{\varphi(m)}\}.
    \]

    To znamená, že \( a_1, a_2, \dots, a_{\varphi(m)} \) sú všetky zvyšky modulo \( m \), ktoré sú s \( m \) nesúdeliteľné.

    Teraz vezmime pevné číslo \( a \) také, že

    \[
    \gcd(a, m) = 1.
    \]

    Pozrime sa na prvky

    \[
    aa_1, aa_2, \dots, aa_{\varphi(m)},
    \]

    pričom všetko chápeme modulo \( m \).

    Najprv ukážeme, že tieto nové prvky sú navzájom rôzne. Predpokladajme, že pre nejaké indexy \( i \) a \( j \) platí

    \[
    aa_i \equiv aa_j \pmod{m}.
    \]

    Keďže \( \gcd(a, m) = 1 \), číslo \( a \) má modulo \( m \) inverzný prvok. Označme ho \( a^{-1} \).

    Vynásobme obe strany kongruencie zľava týmto inverzným prvkom:

    \[
    a^{-1} \cdot (aa_i) \equiv a^{-1} \cdot (aa_j) \pmod{m}.
    \]

    Použijeme asociativitu:

    \[
    (a^{-1}a)a_i \equiv (a^{-1}a)a_j \pmod{m}.
    \]

    Keďže \( a^{-1}a \equiv 1 \pmod{m} \), dostaneme

    \[
    1 \cdot a_i \equiv 1 \cdot a_j \pmod{m},
    \]

    teda

    \[
    a_i \equiv a_j \pmod{m}.
    \]

    Ale prvky \( a_1, a_2, \dots, a_{\varphi(m)} \) boli všetky rôzne. Preto z toho vyplýva, že aj prvky

    \[
    aa_1, aa_2, \dots, aa_{\varphi(m)}
    \]

    sú všetky navzájom rôzne modulo \( m \).

    Ďalej si všimnime, že každý prvok \( aa_i \) je opäť nesúdeliteľný s \( m \), lebo súčin dvoch čísel nesúdeliteľných s \( m \) je opäť nesúdeliteľný s \( m \).

    Máme teda \( \varphi(m) \) rôznych prvkov, ktoré všetky patria do \( \mathbb{Z}_m^{*} \).

    Ale \( \mathbb{Z}_m^{*} \) má práve \( \varphi(m) \) prvkov. Preto množina

    \[
    \{aa_1, aa_2, \dots, aa_{\varphi(m)}\}
    \]

    musí byť tá istá množina ako

    \[
    \{a_1, a_2, \dots, a_{\varphi(m)}\},
    \]

    len v inom poradí.

    Keďže ide o tie isté prvky v inom poradí, ich súčin je modulo \( m \) rovnaký. Teda

    \[
    (aa_1)(aa_2)\cdots(aa_{\varphi(m)}) \equiv a_1a_2\cdots a_{\varphi(m)} \pmod{m}.
    \]

    Na ľavej strane sa číslo \( a \) vyskytuje \( \varphi(m) \)-krát, takže môžeme napísať

    \[
    a^{\varphi(m)} \cdot (a_1a_2\cdots a_{\varphi(m)}) \equiv a_1a_2\cdots a_{\varphi(m)} \pmod{m}.
    \]

    Označme si

    \[
    A = a_1a_2\cdots a_{\varphi(m)}.
    \]

    Potom dostaneme

    \[
    a^{\varphi(m)} \cdot A \equiv A \pmod{m}.
    \]

    Teraz ukážeme, prečo môžeme faktor \( A \) skrátiť. Každý prvok \( a_i \) je nesúdeliteľný s \( m \). Preto aj ich súčin \( A \) je nesúdeliteľný s \( m \). To znamená, že \( A \) má modulo \( m \) inverzný prvok.

    Môžeme teda obe strany kongruencie vynásobiť inverzným prvkom k \( A \) a dostaneme

    \[
    a^{\varphi(m)} \equiv 1 \pmod{m}.
    \]

    Tým je Eulerova veta dokázaná.

---

!!! info "Veta"
    Nech

    \[
    m = p_1^{k_1} \cdot p_2^{k_2},
    \]

    kde \( p_1 \) a \( p_2 \) sú rôzne prvočísla.

    Potom platí

    \[
    \varphi(m) = m\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right).
    \]

??? success "Dôkaz"
    Počet čísel z \( \{0, 1, \dots, m - 1\} \), ktoré sú deliteľné \( p_1 \), je

    \[
    \frac{m}{p_1}.
    \]

    Počet čísel deliteľných \( p_2 \) je

    \[
    \frac{m}{p_2}.
    \]

    Čísla deliteľné oboma prvočíslami sú deliteľné súčinom \( p_1p_2 \), a tých je

    \[
    \frac{m}{p_1p_2}.
    \]

    Preto počet čísel, ktoré nie sú nesúdeliteľné s \( m \), je

    \[
    \frac{m}{p_1} + \frac{m}{p_2} - \frac{m}{p_1p_2}.
    \]

    Počet čísel nesúdeliteľných s \( m \) teda dostaneme odčítaním od celkového počtu \( m \):

    \[
    \varphi(m) = m - \frac{m}{p_1} - \frac{m}{p_2} + \frac{m}{p_1p_2}.
    \]

    Vytkneme \( m \):

    \[
    \varphi(m) = m\left(1 - \frac{1}{p_1} - \frac{1}{p_2} + \frac{1}{p_1p_2}\right).
    \]

    Tento výraz sa rozkladá na

    \[
    \varphi(m) = m\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right).
    \]

    Tým je dôkaz hotový.