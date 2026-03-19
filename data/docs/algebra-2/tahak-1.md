---
icon: fontawesome/regular/face-angry
---

# Ťahák ;D

## Zoznam viet a dôkazov

---

### 1. Týždeň

---

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

---

### 2. týždeň

---

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

---

### 3. Týždeň

---

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

---

### 4. Týždeň

--- 

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

**Dôkaz smeru ak \( r \mid m \), tak \( a^m = e \)**

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

**Dôkaz smeru ak \( a^m = e \), tak \( r \mid m \)**

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

### 5. Týždeň

---

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