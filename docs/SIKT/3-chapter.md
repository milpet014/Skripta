---
icon: fontawesome/solid/network-wired
---

<button class="md-button md-button--primary" onclick="window.print();">
  Tlačiť
</button>

# Sieťová infraštruktúra školy

## Úvod do témy

Sieťová infraštruktúra školy je základom fungovania moderného školského prostredia. Umožňuje komunikáciu medzi počítačmi, pripojenie na internet, používanie školských systémov, cloudových služieb, online komunikácie a digitálnych výučbových nástrojov.

Bez funkčnej siete by v škole nefungoval internet, online vyučovacie platformy, školské informačné systémy, zdieľané priečinky ani bežná komunikácia medzi zariadeniami. Sieť preto nie je iba „kábel v stene“, ale dôležitá technická infraštruktúra, od ktorej závisí každodenná prevádzka školy.

!!! abstract "Sieťová infraštruktúra"
    **Sieťová infraštruktúra** je súbor zariadení, spojení a služieb, ktoré umožňujú komunikáciu medzi počítačmi a ďalšími zariadeniami v škole.
    Patria sem najmä **router**, **switch**, **access pointy**, **káble**, **Wi-Fi zariadenia** a **pripojenie na internet**.

Jednoducho povedané, sieťová infraštruktúra vytvára cestu, po ktorej putujú dáta. Keď používateľ otvorí webovú stránku, prihlási sa do Teams alebo pracuje so školským systémom, jeho zariadenie komunikuje cez školskú sieť.

!!! note "Poznámka"
    Školskú sieť si môžeme predstaviť ako dopravnú sieť. Dáta sú ako autá, káble a Wi-Fi sú cesty, switch je križovatka v budove a router je brána, ktorou sa vychádza na „diaľnicu“ internetu.

## 1. Základné prvky školskej siete

Každá školská sieť sa skladá z viacerých základných prvkov. Najdôležitejšie sú **router**, **switch** a **access point**. Tieto zariadenia spolu zabezpečujú prístup na internet, komunikáciu vo vnútri školy a bezdrôtové pripojenie.

| Prvok siete | Hlavná úloha |
|---|---|
| **Router** | Spája školskú sieť s internetom. |
| **Switch** | Prepája zariadenia vo vnútornej školskej sieti. |
| **Access point** | Vytvára Wi-Fi sieť a umožňuje bezdrôtové pripojenie. |
| **Káble** | Fyzicky prepájajú zariadenia v káblovej sieti. |
| **Wi-Fi** | Umožňuje bezdrôtové pripojenie notebookov, mobilov a tabletov. |

Pri návrhu siete treba myslieť na počet používateľov, výkon zariadení, rozmiestnenie učební, kvalitu pokrytia Wi-Fi signálom a bezpečnosť. Sieť, ktorá postačuje pre malú kanceláriu, nemusí zvládnuť školu s desiatkami alebo stovkami zariadení.

??? warning "Dôležité"
    Pri návrhu školskej siete nestačí kúpiť „nejaký router a Wi-Fi“. Treba počítať s počtom používateľov, typom zariadení, rozložením budovy, bezpečnosťou a možnosťou budúceho rozšírenia. Inak sa zo siete stane digitálna verzia školskej chodby cez prestávku — všetci chcú prejsť naraz a nikto sa nikam nedostane.

## 2. Router

Router je zariadenie, ktoré spája školskú sieť s internetom. Zabezpečuje smerovanie dát medzi vnútornou sieťou školy a vonkajším internetom. Často plní aj bezpečnostnú úlohu, napríklad pomocou firewallu.

!!! abstract "Router"
    **Router** je sieťové zariadenie, ktoré prepája školskú sieť s internetom a smeruje dáta medzi rôznymi sieťami.
    Jednoducho povedané, router je **brána do internetu**.

Fungovanie routera možno opísať jednoducho. Dáta zo školského počítača smerujú najprv do routera. Router rozhodne, kam ich má poslať, a odošle ich do internetu. Keď príde odpoveď, router ju pošle späť správnemu zariadeniu v škole.

!!! example "Príklad fungovania routera"
    Žiak otvorí webovú stránku. Jeho počítač odošle požiadavku cez školskú sieť do routera. Router ju pošle do internetu. Odpoveď zo servera sa vráti späť do routera a ten ju doručí žiakovmu počítaču.

Router môže v škole zabezpečovať:

- pripojenie školy na internet,
- smerovanie komunikácie,
- základnú ochranu siete,
- firewallové pravidlá,
- oddelenie častí siete,
- správu prístupu medzi školskou sieťou a internetom.

## 3. Switch

Switch je zariadenie, ktoré prepája zariadenia v lokálnej sieti. Používa sa najmä v káblovej sieti, napríklad v počítačových učebniach, kabinetoch alebo serverovni.

!!! abstract "Switch"
    **Switch** je sieťové zariadenie, ktoré prepája počítače a ďalšie zariadenia v lokálnej sieti.
    Umožňuje, aby zariadenia v škole komunikovali medzi sebou.

Ak je v učebni dvadsať počítačov, všetky môžu byť pripojené do switcha. Switch zabezpečí, aby sa dáta dostali zo správneho zariadenia na správne miesto.

!!! example "Príklad použitia switcha"
    V počítačovej učebni je 20 počítačov. Každý počítač je pripojený káblom do switcha. Vďaka tomu môžu počítače komunikovať v lokálnej sieti a zároveň sa cez ďalšie sieťové zariadenia dostať na internet.

### 3.1 Rozdiel medzi routerom a switchom

Router a switch majú rozdielne úlohy. Router prepája školskú sieť s internetom, zatiaľ čo switch prepája zariadenia vo vnútri školy.

| Zariadenie | Úloha |
|---|---|
| **Router** | Spája školskú sieť s internetom. |
| **Switch** | Prepája zariadenia vo vnútornej lokálnej sieti. |

!!! note "Poznámka"
    Zjednodušene: **router rieši cestu von zo školy**, zatiaľ čo **switch rieši komunikáciu vo vnútri školy**.

## 4. Access point a Wi-Fi

Access point je zariadenie, ktoré vytvára Wi-Fi sieť. Umožňuje bezdrôtové pripojenie notebookov, mobilov, tabletov a ďalších zariadení.

!!! abstract "Access point"
    **Access point**, skrátene **AP**, je zariadenie, ktoré poskytuje Wi-Fi signál a umožňuje bezdrôtové pripojenie zariadení do siete.

Access point nevytvára internet sám od seba. Poskytuje iba bezdrôtový spôsob pripojenia k sieti. Internet je dostupný až vtedy, keď je školská sieť pripojená cez router k poskytovateľovi internetu.

??? warning "Dôležité"
    **Wi-Fi nie je internet.**
    Wi-Fi je iba spôsob pripojenia k sieti. Internet je služba, ku ktorej sa zariadenie cez túto sieť dostáva. Preto môže byť zariadenie pripojené na Wi-Fi, ale internet napriek tomu nemusí fungovať.

Access point umožňuje:

- pripojenie mobilných telefónov,
- pripojenie notebookov,
- pripojenie tabletov,
- bezdrôtovú komunikáciu v škole,
- prístup k školským a internetovým službám bez sieťového kábla.

## 5. LAN – lokálna sieť

LAN je lokálna sieť, ktorá spája zariadenia v rámci menšieho priestoru, napríklad školy, budovy, učebne alebo kancelárie. V školskom prostredí ide často o káblovú sieť.

!!! abstract "LAN"
    **LAN**, teda **Local Area Network**, je lokálna sieť. V škole označuje sieť v budove alebo v areáli školy.
    Často ide o káblovú sieť, ktorá je rýchla a stabilná.

LAN sa používa najmä tam, kde je dôležitá stabilita a výkon. Typickým príkladom sú počítačové učebne, servery, tlačiarne alebo administratívne pracoviská.

### 5.1 Vlastnosti LAN

LAN má tieto vlastnosti:

- je rýchla,
- je stabilná,
- často používa káblové pripojenie,
- je vhodná pre učebne a pevné pracoviská,
- umožňuje spoľahlivú komunikáciu medzi zariadeniami.

!!! note "Poznámka"
    Káblová sieť je menej pohodlná ako Wi-Fi, ale býva stabilnejšia. Preto sa v učebniach často uprednostňuje kábel, najmä ak sa pracuje s väčším počtom počítačov naraz.

## 6. Wi-Fi – bezdrôtová sieť

Wi-Fi je bezdrôtová sieť, ktorá umožňuje pripojenie zariadení bez sieťového kábla. Je pohodlná a flexibilná, ale zvyčajne menej stabilná ako káblové pripojenie.

!!! abstract "Wi-Fi"
    **Wi-Fi** je bezdrôtová sieť. Umožňuje pripojenie zariadení pomocou rádiového signálu bez použitia sieťového kábla.

### 6.1 Výhody Wi-Fi

Wi-Fi má viacero výhod:

- umožňuje mobilitu,
- nevyžaduje sieťový kábel,
- je pohodlná pre notebooky, tablety a mobily,
- umožňuje jednoduché pripojenie používateľov.

### 6.2 Nevýhody Wi-Fi

Wi-Fi má aj obmedzenia:

- môže byť rušená inými signálmi,
- môže mať nižšiu stabilitu ako kábel,
- má obmedzenú kapacitu,
- výkon závisí od vzdialenosti a prekážok,
- pri veľkom počte zariadení môže byť pomalšia.

!!! abstract "Pokrytie"
    **Pokrytie**, po anglicky **coverage**, znamená, kde všade je dostupný dostatočne silný Wi-Fi signál.

!!! abstract "Kapacita"
    **Kapacita** znamená, koľko zariadení dokáže Wi-Fi sieť zvládnuť pri rozumnej kvalite pripojenia.

??? warning "Dôležité"
    Silný Wi-Fi signál ešte automaticky neznamená dobrú sieť. Okrem pokrytia je dôležitá aj kapacita. Inak sa môže stať, že zariadenie ukazuje plný signál, ale internet ide rýchlosťou unaveného slimáka po telesnej.

## 7. Segmentácia siete a VLAN

Segmentácia siete znamená rozdelenie siete na menšie časti. V škole je to dôležité najmä kvôli bezpečnosti. Iné oprávnenia a prístupy majú mať žiaci, učitelia a administratíva.

!!! abstract "Segmentácia siete"
    **Segmentácia siete** znamená rozdelenie siete na menšie logické časti. Pomáha zvýšiť bezpečnosť a lepšie riadiť prístup používateľov.

!!! abstract "VLAN"
    **VLAN**, teda **Virtual Local Area Network**, je virtuálna lokálna sieť. Umožňuje logicky rozdeliť jednu fyzickú sieť na viacero oddelených častí.

VLAN umožňuje, aby jedna fyzická sieť bola logicky rozdelená. Napríklad káble, switche a zariadenia môžu byť súčasťou jednej infraštruktúry, ale sieťovo môžu byť oddelení žiaci, učitelia a administratíva.

### 7.1 Príklad VLAN v škole

| VLAN | Určenie |
|---|---|
| **VLAN pre žiakov** | zariadenia žiakov a učebňové počítače |
| **VLAN pre učiteľov** | notebooky a pracovné zariadenia učiteľov |
| **VLAN pre administratívu** | zariadenia pracujúce s citlivými údajmi |
| **VLAN pre hostí** | návštevníci alebo dočasné pripojenie |
| **VLAN pre servery** | školské servery a dôležité služby |

Výhodou segmentácie je bezpečnosť. Žiak by sa nemal dostať k citlivým dátam administratívy alebo k serverom, ku ktorým nemá mať prístup.

!!! example "Príklad významu VLAN"
    Ak je žiacka sieť oddelená od administratívnej siete, žiak pripojený v učebni sa nedostane priamo k zariadeniam, ktoré pracujú s citlivými údajmi školy.

## 8. Internet, ISP a IP adresa

Internet škole poskytuje poskytovateľ internetového pripojenia. Router následne zabezpečuje, aby sa internet dostal do školskej siete a k jednotlivým zariadeniam.

!!! abstract "ISP"
    **ISP**, teda **Internet Service Provider**, je poskytovateľ internetového pripojenia.

Router prijíma internetové pripojenie od poskytovateľa a rozdeľuje ho do školskej siete. Zariadenia v škole potom cez router komunikujú s internetom.

### 8.1 IP adresa

IP adresa je jedinečný identifikátor zariadenia v sieti. Pomáha zariadeniam navzájom sa nájsť a komunikovať.

!!! abstract "IP adresa"
    **IP adresa** je jedinečná adresa zariadenia v sieti.
    Podobne ako dom potrebuje poštovú adresu, zariadenie v sieti potrebuje IP adresu, aby mohlo prijímať a odosielať dáta.

IPv4 adresa sa skladá zo štyroch čísel oddelených bodkami. Každé číslo má hodnotu od 0 do 255.

!!! example "Príklad IP adresy"
    Príklad IP adresy je:
    `192.168.1.1`

!!! note "Poznámka"
    IP adresa umožňuje, aby sieť vedela, kam má dáta doručiť. Bez adries by zariadenia nevedeli, kto komu posiela informácie.

## 9. Filtrovanie obsahu

Filtrovanie obsahu slúži na blokovanie nevhodných alebo nebezpečných webových stránok a služieb. V škole je dôležité najmä preto, že sieť používajú žiaci a škola má povinnosť vytvárať bezpečné digitálne prostredie.

!!! abstract "Filtrovanie obsahu"
    **Filtrovanie obsahu** znamená obmedzovanie alebo blokovanie prístupu k nevhodným, rizikovým alebo nežiaducim stránkam a službám.

Na filtrovanie obsahu sa môžu používať rôzne technológie.

| Nástroj | Úloha |
|---|---|
| **DNS filter** | Blokuje webové stránky podľa názvu domény. |
| **Firewall** | Kontroluje sieťovú komunikáciu a povoľuje alebo blokuje ju podľa pravidiel. |
| **Proxy server** | Sprostredkuje komunikáciu medzi používateľom a internetom. |

!!! abstract "DNS filter"
    **DNS filter** blokuje prístup k webom podľa ich názvu. Ak je stránka zakázaná, používateľ sa k nej nedostane.

!!! abstract "Firewall"
    **Firewall** je bezpečnostný prvok, ktorý kontroluje sieťovú komunikáciu a rozhoduje, čo je povolené a čo má byť zablokované.

!!! abstract "Proxy server"
    **Proxy server** sprostredkuje komunikáciu medzi zariadením používateľa a internetom. Môže slúžiť aj na filtrovanie, kontrolu alebo záznam komunikácie.

Cieľom filtrovania nie je používateľov zbytočne obmedzovať, ale zabezpečiť bezpečný internet pre žiakov a chrániť školskú sieť.

## 10. Monitoring siete

Monitoring siete znamená sledovanie stavu siete a zariadení. Pomáha správcovi rýchlo zistiť, či zariadenia fungujú, či sieť nie je preťažená a kde vznikol problém.

!!! abstract "Monitoring siete"
    **Monitoring siete** je sledovanie fungovania siete, zariadení, rýchlosti, dostupnosti a výpadkov.

Pri monitoringu siete sa sleduje najmä:

- či zariadenia fungujú,
- či je dostupný internet,
- či sú dostupné servery,
- rýchlosť siete,
- výpadky,
- preťaženie,
- stav dôležitých sieťových prvkov.

Cieľom monitoringu je rýchlo zistiť problém a reagovať skôr, než sa problém prejaví vo väčšej časti školy.

!!! note "Poznámka"
    Monitoring je pre správcu siete podobný ako kontrolky v aute. Keď sa niečo pokazí, správca by sa to mal dozvedieť čo najskôr, nie až vtedy, keď pred kabinetom stojí rad učiteľov s vetou: „Nejde internet.“

## 11. Ping

Ping je základný nástroj na testovanie sieťového spojenia. Ukazuje, či zariadenie odpovedá v sieti.

!!! abstract "Ping"
    **Ping** je jednoduchý nástroj na testovanie spojenia so zariadením v sieti.
    Pošle požiadavku a čaká na odpoveď.

Ak odpoveď príde, znamená to, že zariadenie je dostupné. Ak odpoveď nepríde, môže byť problém v zariadení, kábli, sieti, nastavení alebo medziľahlom sieťovom prvku.

!!! example "Príklad použitia pingu"
    Ak správca chce zistiť, či je dostupný školský server, môže použiť ping na jeho IP adresu. Ak server odpovie, základné sieťové spojenie funguje.

Ping je najjednoduchší test siete, ale nehovorí úplne všetko. Zariadenie môže odpovedať na ping, no konkrétna služba na ňom nemusí fungovať.

??? warning "Dôležité"
    Ak ping nefunguje, ešte to automaticky neznamená, že „nejde internet“. Problém môže byť v kábli, zariadení, nastavení, DNS, firewalli alebo v konkrétnej službe.

## 12. Výpadky siete

Výpadok siete znamená, že komunikácia nefunguje správne alebo nefunguje vôbec. Môže ísť o výpadok internetu, časti lokálnej siete, Wi-Fi, servera alebo konkrétneho zariadenia.

Výpadky siete môžu byť spôsobené viacerými príčinami:

- poškodeným alebo odpojeným káblom,
- nefunkčným zariadením,
- výpadkom internetu od poskytovateľa,
- zlou konfiguráciou,
- problémom so switchom,
- problémom s routerom,
- problémom s Wi-Fi,
- chybou v nastaveniach IP adresy.

!!! note "Poznámka"
    Problém nemusí byť vždy v internete. Ak používateľ povie, že „nejde internet“, v skutočnosti môže ísť o problém s Wi-Fi, káblom, DNS, IP adresou alebo konkrétnou službou.

## 13. Riešenie problémov v sieti

Pri riešení sieťových problémov je dôležité postupovať systematicky. Namiesto náhodného menenia nastavení je lepšie skontrolovať jednotlivé možnosti krok za krokom.

!!! question "Postup riešenia problému"
    1. Skontroluj fyzické pripojenie.
    2. Skontroluj kábel.
    3. Skontroluj, či je zariadenie zapnuté.
    4. Skontroluj pripojenie k sieti.
    5. Použi ping.
    6. Skontroluj nastavenia IP adresy.
    7. Skontroluj router, switch alebo access point.
    8. Over, či problém nie je u poskytovateľa internetu.

Najprv sa kontrolujú jednoduché a fyzické veci. Až potom má zmysel riešiť zložitejšie nastavenia. Častou chybou je začať meniť konfiguráciu, hoci problémom je iba vytiahnutý kábel.

!!! example "Príklad systematického postupu"
    Ak v učebni nefunguje internet na jednom počítači, najprv skontrolujeme kábel a sieťové pripojenie daného počítača. Ak nefunguje celá učebňa, skontrolujeme switch alebo pripojenie učebne. Ak nefunguje celá škola, problém môže byť v routeri alebo u poskytovateľa internetu.

??? warning "Dôležité"
    Pri riešení problémov vždy postupuj od najjednoduchšieho k zložitejšiemu. Najprv kábel, potom zariadenie, potom ping a až potom konfigurácia. Je zbytočné prepisovať nastavenia siete, ak je problém v tom, že niekto zakopol o kábel.

## 14. Bezpečnosť siete

Bezpečnosť siete znamená ochranu školskej siete, zariadení, používateľov a dát. Škola pracuje s citlivými údajmi, preto musí byť sieť chránená pred neoprávneným prístupom a zneužitím.

Na ochranu siete sa používajú najmä:

- silné heslá,
- firewall,
- aktualizácie,
- segmentácia siete,
- oddelenie používateľských skupín,
- filtrovanie obsahu,
- monitoring,
- správne nastavenie prístupových práv.

!!! info "Zásada bezpečnej siete"
    Sieť má byť navrhnutá tak, aby používateľ mal prístup iba tam, kam skutočne potrebuje. Žiacka sieť, učiteľská sieť a administratívna sieť by nemali byť bezdôvodne spojené do jednej spoločnej siete.

### 14.1 Silné heslá

Silné heslá chránia prístup k Wi-Fi, správcovským rozhraniam a sieťovým službám. Slabé alebo zdieľané heslá zvyšujú riziko neoprávneného prístupu.

### 14.2 Firewall

Firewall kontroluje komunikáciu a pomáha blokovať nežiaduce alebo nebezpečné spojenia. V škole je dôležitý najmä na hranici medzi školskou sieťou a internetom.

### 14.3 Aktualizácie

Aktualizácie opravujú chyby a bezpečnostné zraniteľnosti. Neaktualizované zariadenia môžu predstavovať riziko pre celú sieť.

### 14.4 Segmentácia

Segmentácia siete obmedzuje pohyb používateľov a zariadení medzi rôznymi časťami siete. Ak nastane problém v jednej časti siete, segmentácia môže zabrániť jeho rozšíreniu.

??? warning "Dôležité"
    Školská sieť neslúži iba na prístup na internet. Prenášajú sa cez ňu aj údaje žiakov, učiteľov a školy. Preto musí byť navrhnutá a spravovaná bezpečne.

## 15. Zhrnutie

!!! tip "Zhrnutie"
    Sieťová infraštruktúra školy umožňuje komunikáciu medzi zariadeniami a prístup k internetu.
    Základné prvky siete sú **router**, **switch** a **access point**.
    **Router** spája školskú sieť s internetom.
    **Switch** prepája zariadenia vo vnútri lokálnej siete.
    **Access point** poskytuje Wi-Fi pripojenie.
    **LAN** je rýchla a stabilná lokálna sieť, často káblová.
    **Wi-Fi** je pohodlná bezdrôtová sieť, ale môže byť menej stabilná a má obmedzenú kapacitu.
    **VLAN** pomáha rozdeliť sieť na bezpečnejšie časti.
    **Filtrovanie obsahu** pomáha chrániť žiakov pred nevhodným obsahom.
    **Monitoring** umožňuje rýchlo odhaliť problémy.
    Pri riešení problémov treba postupovať krok za krokom.
    Školská sieť musí byť stabilná, bezpečná a dobre spravovaná.

## 16. Otázky na opakovanie

1. Čo je sieťová infraštruktúra školy?
2. Aké zariadenia patria medzi základné prvky školskej siete?
3. Na čo slúži router?
4. Aký je rozdiel medzi routerom a switchom?
5. Na čo slúži access point?
6. Prečo Wi-Fi nie je to isté ako internet?
7. Čo je LAN?
8. Aké sú výhody káblovej siete?
9. Aké sú výhody a nevýhody Wi-Fi?
10. Čo znamená pokrytie Wi-Fi siete?
11. Čo znamená kapacita Wi-Fi siete?
12. Čo je segmentácia siete?
13. Na čo slúži VLAN?
14. Kto je ISP?
15. Čo je IP adresa?
16. Na čo slúži filtrovanie obsahu?
17. Aký je rozdiel medzi DNS filtrom, firewallom a proxy serverom?
18. Čo je monitoring siete?
19. Na čo slúži ping?
20. Aký postup treba použiť pri riešení sieťového problému?
21. Prečo je bezpečnosť siete v škole dôležitá?

## 17. Diskusná otázka

!!! question "Diskusia"
    Predstavte si, že máte navrhnúť sieť pre novú školu. Ktoré časti siete by ste riešili ako prvé: internetové pripojenie, káblovú sieť, Wi-Fi, bezpečnosť, VLAN alebo monitoring? Svoje rozhodnutie zdôvodnite.

## 18. Slovníček kľúčových pojmov

| Pojem | Vysvetlenie |
|---|---|
| **Sieťová infraštruktúra** | Súbor zariadení, spojení a služieb, ktoré umožňujú komunikáciu v sieti. |
| **Router** | Zariadenie, ktoré spája školskú sieť s internetom. |
| **Switch** | Zariadenie, ktoré prepája zariadenia v lokálnej sieti. |
| **Access point** | Zariadenie, ktoré poskytuje Wi-Fi signál. |
| **Wi-Fi** | Bezdrôtová sieť umožňujúca pripojenie zariadení bez kábla. |
| **LAN** | Lokálna sieť v budove alebo menšom priestore. |
| **VLAN** | Virtuálna lokálna sieť, ktorá logicky oddeľuje časti siete. |
| **ISP** | Poskytovateľ internetového pripojenia. |
| **IP adresa** | Jedinečná adresa zariadenia v sieti. |
| **DNS filter** | Nástroj na blokovanie webových stránok podľa názvu domény. |
| **Firewall** | Bezpečnostný prvok, ktorý kontroluje a filtruje sieťovú komunikáciu. |
| **Proxy server** | Server sprostredkujúci komunikáciu medzi používateľom a internetom. |
| **Monitoring siete** | Sledovanie stavu siete, zariadení, rýchlosti a výpadkov. |
| **Ping** | Nástroj na testovanie dostupnosti zariadenia v sieti. |
| **Pokrytie** | Oblasť, kde je dostupný dostatočný Wi-Fi signál. |
| **Kapacita** | Počet zariadení, ktoré sieť zvládne obslúžiť pri rozumnej kvalite. |
| **Segmentácia siete** | Rozdelenie siete na menšie časti kvôli bezpečnosti a prehľadnosti. |