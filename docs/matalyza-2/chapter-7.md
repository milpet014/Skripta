---
icon: fontawesome/solid/7
---

# Úvod do určitého integrálu

Pri neurčitom integrále sme k danej funkcii $f$ hľadali primitívnu funkciu $F$, teda funkciu, ktorej deriváciou dostaneme pôvodnú funkciu:

$$
F'(x)=f(x).
$$

Výsledkom neurčitého integrálu bola celá rodina funkcií:

$$
\int f(x)\,dx=F(x)+C.
$$

Pri určitom integrále začneme inou otázkou:

!!! tip "Geometrická motivácia"

    **Ako určiť obsah útvaru ohraničeného grafom funkcie, osou $x$ a dvoma zvislými priamkami?**

Obsah obdĺžnika vieme vypočítať ako súčin jeho šírky a výšky. Ak je však horná hranica útvaru zakrivená, jediný obdĺžnik jeho obsah spravidla nevystihne presne.

Základná myšlienka spočíva v tom, že útvar rozdelíme na úzke zvislé pásy. Každý pás približne nahradíme obdĺžnikom a obsahy všetkých obdĺžnikov sčítame. Potom skúmame, čo sa s týmito súčtami deje, keď sú pásy čoraz užšie.

Takto sa postupne dostaneme od konečného súčtu k určitému integrálu. Geometrický obsah je pritom prvou motiváciou; určitý integrál má širší význam a môžeme ho zaviesť aj pre funkcie, ktoré nadobúdajú záporné hodnoty.

## 1. Funkcia na uzavretom intervale

Nech $a,b\in\mathbb R$, pričom $a<b$, a nech je funkcia $f$ definovaná na celom uzavretom intervale

$$
[a,b].
$$

Zápis $[a,b]$ znamená to isté ako $\langle a,b\rangle$: do intervalu patria aj krajné body $a$ a $b$.

!!! info "Ohraničená funkcia"

    Predpokladajme, že funkcia $f$ je na tomto intervale **ohraničená**. To znamená, že existuje číslo $M\geq0$ také, že

    $$
    |f(x)|\leq M \qquad \text{pre každé }x\in[a,b].
    $$

    Inými slovami, všetky hodnoty funkcie ležia medzi číslami $-M$ a $M$:

    $$
    -M\leq f(x)\leq M.
    $$

    Ohraničenosť hovorí, že funkčné hodnoty na uvažovanom intervale neunikajú do ľubovoľne veľkých kladných ani záporných čísel.

!!! warning "Ohraničenosť a spojitosť"

    **Ohraničenosť však neznamená spojitosť.** Funkcia môže byť ohraničená a zároveň môže mať skoky alebo iné nespojitosti. Rovnako samotná ohraničenosť ešte nezaručuje existenciu Riemannovho určitého integrálu.

Na úvodné geometrické vysvetlenie si môžeme predstaviť spojitú nezápornú funkciu:

$$
f(x)\geq0 \qquad \text{pre všetky }x\in[a,b].
$$

Jej graf leží na osi $x$ alebo nad ňou. Zaujíma nás obsah oblasti medzi grafom $y=f(x)$, osou $x$ a priamkami $x=a$, $x=b$.

## 2. Delenie intervalu

Aby sme mohli oblasť približne nahradiť obdĺžnikmi, musíme najprv rozdeliť interval $[a,b]$ na menšie časti.

!!! info "Delenie intervalu"

    **Definícia.** Delením $D$ intervalu $[a,b]$ nazývame konečnú usporiadanú sústavu bodov

    $$
    D=\\{x_0,x_1,\ldots,x_p\\},
    $$

    pre ktoré platí

    $$
    \boxed{ a=x_0<x_1<x_2<\cdots<x_{p-1}<x_p=b. }
    $$

    Číslo $p$ je kladné celé číslo.

Body $x_0,x_1,\ldots,x_p$ nazývame **deliace body**.

Význam jednotlivých podmienok je nasledujúci:

- Rovnosť $x_0=a$ zaručuje, že delenie začína v ľavom krajnom bode pôvodného intervalu.
- Rovnosť $x_p=b$ zaručuje, že delenie končí v pravom krajnom bode.
- Ostré nerovnosti zabezpečujú, že body sú zoradené zľava doprava a žiadne dva susedné body nesplývajú.
- Konečný počet bodov umožňuje vytvoriť obyčajný konečný súčet.

Deliace body vytvárajú čiastočné intervaly

$$
[x_0,x_1],\quad [x_1,x_2],\quad \ldots,\quad [x_{p-1},x_p].
$$

!!! warning "Počet bodov a počet intervalov"

    **Deliacich bodov je $p+1$, ale čiastočných intervalov je iba $p$.** Každý čiastočný interval totiž leží medzi dvoma susednými deliacimi bodmi.

!!! example "Štyri čiastočné intervaly"

    Napríklad pri $p=4$ máme päť deliacich bodov

    $$
    x_0,\ x_1,\ x_2,\ x_3,\ x_4
    $$

    a štyri čiastočné intervaly

    $$
    [x_0,x_1],\quad [x_1,x_2],\quad [x_2,x_3],\quad [x_3,x_4].
    $$

Susedné uzavreté intervaly majú spoločný krajný bod. To neprekáža: spoločný bod nemá žiadnu kladnú dĺžku.

![Delenie intervali](https://cloud.milpet.eu/s/9CLHDAy5CCKCC2j/download)

Na obrázku 1 je podstatné rozlíšiť deliace body od úsekov medzi nimi. Body určujú hranice častí; jednotlivé úseky budú neskôr základňami obdĺžnikov.

## 3. Dĺžky čiastočných intervalov

!!! info "Dĺžka čiastočného intervalu"

    Dĺžku $i$-teho čiastočného intervalu označujeme

    $$
    \boxed{ \Delta x_i=x_i-x_{i-1}, \qquad i=1,\ldots,p. }
    $$

Symbol $\Delta$ je veľké grécke písmeno delta. V tomto zápise vyjadruje rozdiel dvoch hodnôt, teda zmenu súradnice $x$.

Index $i$ určuje, o ktorý čiastočný interval ide. Napríklad

$$
\Delta x_1=x_1-x_0,
$$

$$
\Delta x_2=x_2-x_1,
$$

$$
\Delta x_p=x_p-x_{p-1}.
$$

Keďže deliace body sú zoradené pomocou ostrých nerovností, máme

$$
\Delta x_i>0.
$$

Každý čiastočný interval má teda kladnú dĺžku.

!!! tip "Rovnomernosť nie je podmienkou delenia"

    **Delenie nemusí byť rovnomerné.** Niektoré čiastočné intervaly môžu byť širšie a iné užšie. Definícia delenia vyžaduje iba správne poradie bodov a zachovanie krajných bodov $a,b$.

!!! success "Rovnomerné delenie"

    Ak sú všetky čiastočné intervaly rovnako dlhé, hovoríme o rovnomernom delení. Vtedy

    $$
    \Delta x_i=\frac{b-a}{p} \qquad \text{pre každé }i
    $$

    a deliace body možno zapísať ako

    $$
    x_i=a+i\frac{b-a}{p}.
    $$

### Súčet dĺžok všetkých častí

!!! success "Súčet dĺžok čiastočných intervalov"

    Keď sčítame dĺžky všetkých čiastočných intervalov, musíme dostať dĺžku celého intervalu:

    $$
    \boxed{ \sum_{i=1}^{p}\Delta x_i=b-a. }
    $$

Túto vlastnosť môžeme priamo odvodiť:

$$
\sum_{i=1}^{p}\Delta x_i = (x_1-x_0)+(x_2-x_1)+\cdots+(x_p-x_{p-1}).
$$

V súčte sa každý vnútorný deliaci bod objaví raz s kladným a raz so záporným znamienkom. Napríklad $x_1$ sa objaví ako $+x_1$ v prvej zátvorke a ako $-x_1$ v druhej zátvorke.

Po vyrušení vnútorných členov zostane

$$
\sum_{i=1}^{p}\Delta x_i=x_p-x_0.
$$

Keďže $x_p=b$ a $x_0=a$,

$$
\sum_{i=1}^{p}\Delta x_i=b-a.
$$

Takýto súčet, v ktorom sa postupne vyrušia vnútorné členy, sa nazýva **teleskopický súčet**.

Geometricky táto rovnosť vyjadruje jednoduchú skutočnosť: delením sme pôvodný interval iba rozčlenili, nezmenili sme jeho celkovú dĺžku.

## 4. Výber bodov v čiastočných intervaloch

Samotné delenie nám určuje šírky budúcich obdĺžnikov. Ešte však potrebujeme určiť ich výšky.

!!! info "Výber bodov v čiastočných intervaloch"

    V každom čiastočnom intervale zvolíme jeden bod

    $$
    \boxed{ \xi_i\in[x_{i-1},x_i], \qquad i=1,\ldots,p. }
    $$

Symbol $\xi$ je grécke písmeno **ksí**. Bod $\xi_i$ predstavuje zvolený bod v $i$-tom čiastočnom intervale.

Rozlišujeme teda dve skupiny bodov:

- **Deliace body $x_i$** určujú hranice čiastočných intervalov.
- **Zvolené body $\xi_i$** určujú, v ktorých miestach vyhodnotíme funkciu.

Bod $\xi_i$ môže byť ľavým krajným bodom, pravým krajným bodom, stredom alebo ľubovoľným iným bodom príslušného intervalu.

!!! example "Ľavé, pravé a stredové body"

    Napríklad môžeme zvoliť

    $$
    \xi_i=x_{i-1}
    $$

    pre ľavé krajné body,

    $$
    \xi_i=x_i
    $$

    pre pravé krajné body alebo

    $$
    \xi_i=\frac{x_{i-1}+x_i}{2}
    $$

    pre stredy intervalov.

!!! tip "Voľba bodov je ľubovoľná"

    **Nie je potrebné, aby boli body vo všetkých intervaloch vybrané rovnakým pravidlom.** V jednom intervale môžeme zvoliť stred, v druhom pravý krajný bod a v treťom iný vnútorný bod.

Výberom $\xi_i$ získame funkčnú hodnotu

$$
f(\xi_i).
$$

Pri nezápornej funkcii bude táto hodnota výškou obdĺžnika nad intervalom $[x_{i-1},x_i]$.

## 5. Od jedného obdĺžnika k integrálnemu súčtu

!!! success "Príspevok jedného obdĺžnika"

    Nad $i$-tym čiastočným intervalom vytvoríme obdĺžnik so šírkou

    $$
    \Delta x_i
    $$

    a pri nezápornej funkcii s výškou

    $$
    f(\xi_i).
    $$

    Jeho obsah je

    $$
    f(\xi_i)\Delta x_i.
    $$

    Tento súčin spája dve rôzne informácie:

    $$
    \underbrace{f(\xi_i)}_{\text{výška}} \cdot \underbrace{\Delta x_i}_{\text{šírka}}.
    $$

Hodnota funkcie sa vnútri čiastočného intervalu môže meniť. My však celý pás približne nahrádzame obdĺžnikom s jedinou konštantnou výškou, ktorú sme určili v bode $\xi_i$.

Sčítaním príspevkov zo všetkých čiastočných intervalov dostávame

$$
f(\xi_1)\Delta x_1 + f(\xi_2)\Delta x_2 +\cdots+ f(\xi_p)\Delta x_p.
$$

Pomocou sumačného symbolu tento výraz zapíšeme ako

$$
\boxed{ S_f(D,\xi) = \sum_{i=1}^{p}f(\xi_i)\Delta x_i. }
$$

Tu $\xi$ označuje celú voľbu bodov

$$
\xi=(\xi_1,\ldots,\xi_p).
$$

!!! info "Integrálny alebo Riemannov súčet"

    **Definícia.** Číslo

    $$
    S_f(D,\xi)=\sum_{i=1}^{p}f(\xi_i)\Delta x_i
    $$

    nazývame **integrálnym súčtom**, prípadne **Riemannovým súčtom**, funkcie $f$ pre delenie $D$ a zvolenú sústavu bodov $\xi$.

Zápis $S_f(D,\xi)$ zdôrazňuje, že výsledok závisí od troch vecí:

1. od funkcie $f$,
2. od delenia intervalu $D$,
3. od voľby bodov $\xi_i$.

Niekedy sa používa skrátený zápis $S_f(D)$. Aj vtedy však treba pamätať na to, že hodnota súčtu vo všeobecnosti závisí aj od zvolených bodov.

![Reinmanov sucet](https://cloud.milpet.eu/s/6LCyNGmwKcFWMnE/download)

Na obrázku 2 predstavuje každý obdĺžnik približnú náhradu jednej časti oblasti pod grafom. Súčet obsahov všetkých obdĺžnikov je práve integrálny súčet.

!!! warning "Integrálny súčet nie je automaticky odhadom zdola ani zhora"

    Obdĺžniky nemusia ležať celé pod grafom ani celé nad grafom. Pri ľubovoľnej voľbe bodov $\xi_i$ môžu v jednej časti presahovať nad graf a v inej časti nechávať medzeru pod grafom.

    Preto integrálny súčet vo všeobecnosti nie je automaticky dolným ani horným odhadom obsahu.

## 6. Prečo rôzne voľby bodov dávajú rôzne súčty

!!! example "Tri voľby bodov pri rovnakom delení"

    Uvažujme funkciu

    $$
    f(x)=x
    $$

    na intervale

    $$
    [0,2].
    $$

    Zvoľme delenie

    $$
    D=\\{0,1,2\\}.
    $$

    Máme dva čiastočné intervaly:

    $$
    [0,1], \qquad [1,2].
    $$

    Oba majú dĺžku $1$:

    $$
    \Delta x_1=1, \qquad \Delta x_2=1.
    $$

    Ak vyberieme ľavé krajné body,

    $$
    \xi_1=0, \qquad \xi_2=1,
    $$

    dostaneme

    $$
    S_f(D,\xi)=f(0)\cdot1+f(1)\cdot1.
    $$

    Keďže $f(x)=x$,

    $$
    S_f(D,\xi)=0+1=1.
    $$

    Ak vyberieme pravé krajné body,

    $$
    \xi_1=1, \qquad \xi_2=2,
    $$

    dostaneme

    $$
    S_f(D,\xi)=f(1)\cdot1+f(2)\cdot1=1+2=3.
    $$

    Pri výbere stredov

    $$
    \xi_1=\frac12, \qquad \xi_2=\frac32
    $$

    dostávame

    $$
    S_f(D,\xi) = \frac12\cdot1+\frac32\cdot1 =2.
    $$

    Funkcia aj delenie zostali rovnaké. Zmenili sme iba body, v ktorých sme určili výšky obdĺžnikov, a získali sme tri rôzne výsledky:

    $$
    1,\qquad 3,\qquad 2.
    $$

    Skutočný obsah oblasti pod grafom $f(x)=x$ na intervale $[0,2]$ je obsah pravouhlého trojuholníka:

    $$
    P=\frac{2\cdot2}{2}=2.
    $$

    V tomto príklade dal výber stredov presný výsledok. **Nie je to však všeobecná vlastnosť stredových súčtov.** Pri inej funkcii môže aj tento výber dávať iba približnú hodnotu.

!!! tip "Integrálny súčet a jeho limita"

    Z príkladu vyplýva dôležité rozlíšenie:

    **Integrálny súčet je číslo získané z konkrétneho konečného delenia. Určitý integrál bude spoločná limitná hodnota týchto súčtov pri dostatočnom zjemňovaní delenia, ak taká hodnota existuje.**

## 7. Zjemňovanie delenia a jeho norma

Ak chceme pomocou obdĺžnikov lepšie vystihnúť zakrivený graf, prirodzene sa snažíme používať užšie čiastočné intervaly.

Delenie môžeme zjemniť tak, že doň pridáme ďalšie deliace body. Existujúce intervaly tým rozdelíme na menšie časti.

!!! warning "Veľký počet častí nestačí"

    Samotný rast počtu intervalov však nestačí.

    Predstavme si napríklad interval $[0,1]$. Jeho ľavú polovicu môžeme rozdeliť na tisíce drobných častí, ale pravú polovicu $[\frac12,1]$ ponechať ako jediný interval. Počet častí bude veľký, no stále zostane jeden široký pás, na ktorom môže byť obdĺžniková náhrada nepresná.

Preto potrebujeme sledovať **najdlhší čiastočný interval**.

!!! info "Norma delenia"

    **Definícia.** Normou delenia $D$ nazývame číslo

    $$
    \boxed{ \\|D\\| = \max_{1\leq i\leq p}\Delta x_i. }
    $$

    Norma delenia je teda dĺžka jeho najdlhšej časti.

!!! success "Norma delenia sa blíži k nule"

    Podmienka

    $$
    \\|D\\|\to0
    $$

    znamená, že dĺžka najdlhšej časti sa blíži k nule. Tým automaticky zabezpečujeme, že všetky čiastočné intervaly sú dostatočne úzke.

Pri rovnomernom delení máme

$$
\\|D\\|=\frac{b-a}{p},
$$

takže z $p\to\infty$ vyplýva $\\|D\\|\to0$. Pri nerovnomernom delení však samotná podmienka $p\to\infty$ takýto záver nezaručuje.

## 8. Prechod od integrálneho súčtu k určitému integrálu

Pri jemnejšom delení získavame viac obdĺžnikov s menšími šírkami. Ak sa všetky takto vytvorené integrálne súčty blížia k jednému a tomu istému číslu bez ohľadu na voľbu bodov $\xi_i$, toto číslo nazveme určitým integrálom.

!!! info "Riemannovská integrovateľnosť"

    **Definícia.** Nech je funkcia $f$ ohraničená na intervale $[a,b]$. Hovoríme, že $f$ je na tomto intervale **Riemannovsky integrovateľná**, ak existuje číslo $I\in\mathbb R$ také, že pre každé $\varepsilon>0$ existuje $\delta>0$, pre ktoré platí:

    pre každé delenie $D$ s normou

    $$
    \\|D\\|<\delta
    $$

    a pre každú voľbu bodov

    $$
    \xi_i\in[x_{i-1},x_i]
    $$

    je splnené

    $$
    \boxed{ \left| \sum_{i=1}^{p}f(\xi_i)\Delta x_i-I \right| <\varepsilon. }
    $$

!!! success "Určitý Riemannov integrál"

    Číslo $I$ nazývame **určitým Riemannovým integrálom funkcie $f$ od $a$ po $b$** a označujeme

    $$
    \boxed{ I=\int_a^b f(x)\,dx. }
    $$

### Čo definícia hovorí bežným jazykom

Číslo $\varepsilon$ predstavuje ľubovoľne malú požadovanú toleranciu chyby. Môžeme si napríklad želať, aby sa integrálny súčet líšil od $I$ o menej než $0{,}01$, ale definícia musí fungovať aj pre oveľa menšiu toleranciu.

Číslo $\delta$ určuje, aké úzke musia byť čiastočné intervaly. Keď bude aj ten najdlhší kratší než $\delta$, každý integrálny súčet musí spĺňať požadovanú presnosť.

!!! warning "Požiadavka platí pre každý prípustný súčet"

    Najdôležitejšie je slovo **každý**:

    - nestačí jedno vhodné jemné delenie,
    - nestačí jedna špeciálna voľba bodov,
    - nestačí, že vybraná postupnosť súčtov náhodou dáva očakávaný výsledok.

    Pri dostatočne malej norme delenia musia byť blízko k $I$ všetky prípustné integrálne súčty.

    Hodnota $\delta$ môže závisieť od požadovanej presnosti $\varepsilon$ a od danej funkcie a intervalu. Nesmie však byť vybraná osobitne pre každú následnú voľbu bodov $\xi_i$.

### Význam integračného zápisu

!!! info "Význam jednotlivých symbolov"

    V zápise

    $$
    \int_a^b f(x)\,dx
    $$

    má každá časť svoju úlohu:

    - $a$ je dolná integračná hranica,
    - $b$ je horná integračná hranica,
    - $f(x)$ je integrovaná funkcia, čiže integrand,
    - $x$ je integračná premenná,
    - $dx$ označuje, že integrujeme vzhľadom na premennú $x$.

Zápis pripomína integrálny súčet:

$$
\sum_{i=1}^{p}f(\xi_i)\Delta x_i \quad\longrightarrow\quad \int_a^b f(x)\,dx.
$$

!!! tip "Intuícia a presná definícia"

    Túto súvislosť môžeme intuitívne chápať ako prechod od súčtu konečne mnohých príspevkov k limitnému procesu. V presnej definícii však s $dx$ nepracujeme ako s obyčajným kladným číslom „nekonečne malej šírky“; rozhodujúca je limita integrálnych súčtov.

## 9. Prečo je spojitosť dôležitá

Platí základná veta:

!!! success "Veta o integrovateľnosti spojitej funkcie"

    **Každá funkcia spojitá na uzavretom ohraničenom intervale $[a,b]$ je na tomto intervale Riemannovsky integrovateľná.**

Predpokladom je spojitosť na celom intervale vrátane príslušnej jednostrannej spojitosti v krajných bodoch. Záverom je existencia čísla

$$
\int_a^b f(x)\,dx.
$$

Spojitá funkcia na uzavretom ohraničenom intervale je automaticky ohraničená. Navyše je na ňom **rovnomerne spojitá**: pre zvolenú toleranciu vo funkčných hodnotách môžeme nájsť jednu dostatočne malú vzdialenosť argumentov, ktorá funguje všade na intervale.

To je pre obdĺžnikovú aproximáciu zásadné. Keď sú všetky čiastočné intervaly dostatočne úzke, hodnoty funkcie sa v každom z nich líšia iba málo. Výber iného bodu $\xi_i$ potom zmení výšku príslušného obdĺžnika iba málo.

Ak by na každom čiastočnom intervale rozdiel dvoch možných výšok nepresiahol číslo $\eta$, rozdiel príslušných príspevkov by nepresiahol

$$
\eta\Delta x_i.
$$

Po sčítaní cez všetky intervaly dostaneme odhad

$$
\sum_{i=1}^{p}\eta\Delta x_i = \eta\sum_{i=1}^{p}\Delta x_i = \eta(b-a).
$$

Tým vidíme, prečo nestačí hovoriť iba „každý obdĺžnik sa zmení málo“. Potrebujeme kontrolovať aj súčet všetkých zmien. Rovnosť

$$
\sum_{i=1}^{p}\Delta x_i=b-a
$$

nám zaručuje, že sa celkový odhad riadi pevnou dĺžkou intervalu.

Toto je hlavná myšlienka, ktorá stojí za nezávislosťou výsledku od voľby bodov pri spojitej funkcii. Úplný dôkaz existencie integrálu možno vystavať pomocou horných a dolných súčtov.

!!! warning "Postačujúca podmienka a kladnosť funkcie"

    **Spojitosť je postačujúca, nie nevyhnutná podmienka.** Zaručuje integrovateľnosť, ale neznamená to, že každá nespojitá funkcia je neintegrovateľná. Napríklad ohraničená funkcia s konečne mnohými skokmi môže byť Riemannovsky integrovateľná.

    Rovnako **kladnosť nie je podmienkou existencie integrálu**. Potrebujeme ju iba vtedy, keď chceme výsledok priamo stotožniť s geometrickým obsahom oblasti pod grafom.

## 10. Geometrický význam určitého integrálu

!!! success "Integrál ako obsah oblasti"

    Ak je funkcia $f$ spojitá a nezáporná na $[a,b]$, potom

    $$
    \boxed{ \int_a^b f(x)\,dx }
    $$

    vyjadruje obsah oblasti ohraničenej grafom $y=f(x)$, osou $x$ a priamkami $x=a$, $x=b$.

!!! info "Oblasť pod grafom nezápornej funkcie"

    Presnejšie ide o oblasť

    $$
    \\{(x,y)\in\mathbb R^2: a\leq x\leq b,\ 0\leq y\leq f(x)\\}.
    $$

    Podmienka $a\leq x\leq b$ určuje jej vodorovný rozsah. Podmienka $0\leq y\leq f(x)$ hovorí, že pri každom takom $x$ berieme body od osi $x$ až po graf funkcie.

[plocha-pod-krivkou](https://cloud.milpet.eu/s/Fy4HxNmBy2fmEP7/download)

Obrázok 2 znázorňuje konečné obdĺžnikové priblíženie. Obrázok 3 znázorňuje oblasť, ktorej presný obsah určujeme limitným procesom.

### Čo sa zmení pri záporných hodnotách funkcie

Ak je v niektorom zvolenom bode

$$
f(\xi_i)<0,
$$

potom aj príspevok

$$
f(\xi_i)\Delta x_i
$$

je záporný, pretože $\Delta x_i>0$.

!!! warning "Geometrická výška a znamienko príspevku"

    Geometrická výška obdĺžnika však nemôže byť záporná. Obdĺžnik medzi grafom a osou $x$ má v takom prípade výšku $|f(\xi_i)|$, zatiaľ čo integrálny súčet používa hodnotu $f(\xi_i)$ so znamienkom.

!!! success "Orientovaný obsah"

    Preto určitý integrál vo všeobecnosti vyjadruje **orientovaný obsah**:

    $$
    \boxed{\begin{aligned}
    \int_a^b f(x)\,dx ={}& \text{obsah častí nad osou }x\\
     &-\text{obsah častí pod osou }x.
    \end{aligned}}
    $$

!!! success "Celkový geometrický obsah"

    Ak chceme celkový geometrický obsah medzi grafom spojitej funkcie a osou $x$, záporné časti musíme započítať kladne:

    $$
    \boxed{ P=\int_a^b |f(x)|\,dx. }
    $$

!!! example "Vyrušenie dvoch rovnako veľkých obsahov"

    Napríklad pri funkcii $f(x)=x$ na intervale $[-1,1]$ sú pod a nad osou dva rovnako veľké trojuholníky. V určitom integrále sa ich príspevky vyrušia:

    $$
    \int_{-1}^{1}x\,dx=0.
    $$

    Celkový geometrický obsah však nulový nie je. Každý trojuholník má obsah $\frac12$, takže spolu majú obsah $1$.

!!! warning "Nulový integrál neznamená nulovú funkciu"

    **Nulová hodnota určitého integrálu teda neznamená, že funkcia musí byť všade nulová.** Môže znamenať aj vzájomné vyrušenie kladných a záporných príspevkov.

## 11. Rozdiel medzi integrálnym súčtom, určitým a neurčitým integrálom

Tieto tri pojmy spolu súvisia, ale označujú rôzne veci.

| Pojem | Zápis | Význam |
| ----------------- | ----------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| Integrálny súčet | $\displaystyle \sum_{i=1}^{p}f(\xi_i)\Delta x_i$ | Číslo určené konkrétnym delením a voľbou bodov |
| Určitý integrál | $\displaystyle \int_a^b f(x)\,dx$ | Číslo, ku ktorému sa pri integrovateľnej funkcii blížia všetky integrálne súčty pri $\lVert D\rVert\to0$ |
| Neurčitý integrál | $\displaystyle \int f(x)\,dx=F(x)+C$ | Rodina primitívnych funkcií |

!!! warning "Za určitý integrál nepripisujeme integračnú konštantu"

    Za určitý integrál s pevnými hranicami nepripisujeme $+C$. Jeho hodnotou je jedno konkrétne číslo.

!!! success "Výpočet pomocou primitívnej funkcie"

    Neskôr sa ukáže, že pri spojitej funkcii $f$ môžeme určitý integrál vypočítať pomocou jej primitívnej funkcie $F$:

    $$
    \int_a^b f(x)\,dx=F(b)-F(a).
    $$

!!! info "Vzorec na výpočet a definícia integrálu"

    Tento vzťah spája oba druhy integrálu. **Nie je však východiskovou definíciou Riemannovho integrálu**: ten sme zaviedli pomocou integrálnych súčtov. Vzorec s primitívnou funkciou predstavuje následnú vetu, ktorá nám umožní určitý integrál efektívne počítať.

Celá konštrukcia stojí na postupnosti myšlienok: rozdelíme interval, v každej časti vyberieme bod, vytvoríme príspevok $f(\xi_i)\Delta x_i$, príspevky sčítame a skúmame ich spoločnú limitu pri zmenšovaní najväčšej šírky.

!!! tip "Spoločná limitná hodnota"

    **Najdôležitejšie je pochopiť, že určitý integrál nezávisí od jedného konkrétneho obrázka obdĺžnikov. Ak existuje, je spoločným výsledkom všetkých dostatočne jemných obdĺžnikových priblížení.**
