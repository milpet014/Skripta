---
icon: fontawesome/solid/server
---

<button class="md-button md-button--primary" onclick="window.print();">
  Tlačiť
</button>

# Základy IKT infraštruktúry škôl

## Úvod do témy

**IKT infraštruktúra školy** tvorí súbor technických, softvérových a organizačných prvkov, ktoré umožňujú bežné fungovanie vyučovania, administratívy aj digitálnych služieb. Nejde len o počítače a internetové pripojenie, ale o prepojený systém, v ktorom sa spájajú **fyzická infraštruktúra**, **serverová vrstva**, **klientské zariadenia**, **aplikačná architektúra**, **bezpečnostné mechanizmy** a čoraz častejšie aj **cloudové služby**.

Až vzájomná spolupráca týchto prvkov zabezpečuje, že škola dokáže spoľahlivo poskytovať prístup k účtom, súborom, online výučbe, komunikácii, tlači aj ochrane dát.

!!! abstract "Definícia"

    **IKT infraštruktúra školy** je viacvrstvový systém technických, softvérových a organizačných riešení, ktorý zabezpečuje prevádzku digitálnych služieb školy, správu používateľov, dostupnosť údajov a podporu vyučovania aj administratívy.

## Fyzická infraštruktúra školy

**Fyzická infraštruktúra** je základom celej školskej IKT architektúry. Zahŕňa **serverovňu alebo rack**, **fyzické servery**, prípadne **virtualizačný server**, ďalej **sieťové prvky**, **káblovú a bezdrôtovú sieť** a zariadenia, ktoré zabezpečujú stabilitu prevádzky.

Medzi typické prvky fyzickej infraštruktúry patria:

- **core switch**,
- **access switche** na jednotlivých poschodiach,
- **firewall** alebo **router**,
- **Wi-Fi access pointy** s oddelenými sieťami pre učiteľov, žiakov a hostí,
- **metalická kabeláž**,
- **optické prepojenia medzi budovami**.

Súčasťou fyzickej vrstvy môže byť aj **virtualizačný server**, teda fyzický server, na ktorom pomocou špeciálneho softvéru beží viac virtuálnych serverov.

!!! note "Poznámka"

    Fyzická infraštruktúra nepredstavuje len technické vybavenie školy. Je to základná prevádzková vrstva, bez ktorej by nebolo možné zabezpečiť spoľahlivé fungovanie ostatných častí IKT systému.

## Serverovňa ako centrum prevádzky

Zo serverovne sú zabezpečované kľúčové činnosti školy. Patrí sem najmä:

- prihlasovanie žiakov a učiteľov do počítačov,
- ukladanie súborov,
- prevádzka školských systémov,
- internet a Wi-Fi pre celú školu,
- tlačové služby,
- zálohovanie,
- bezpečnostné funkcie.

Význam serverovne je zásadný. Ak prestane fungovať, naruší sa prevádzka veľkej časti školy.

!!! info "Zásada"

    Serverovňa predstavuje prevádzkové centrum školskej IKT infraštruktúry. Jej funkčnosť priamo ovplyvňuje dostupnosť služieb, ktoré škola denne využíva.

### Základné prvky serverovne

V serverovni sa nachádzajú najmä **servery**, **sieťové zariadenia**, **záložné napájanie**, **chladenie** a prvky **fyzickej bezpečnosti**.

#### Servery

**Servery** sú výkonné počítače, ktoré ukladajú dáta, riadia používateľov a poskytujú služby ostatným zariadeniam. V školskom prostredí môže ísť napríklad o:

- **súborový server**,
- **doménový server**,
- **aplikačný server**.

#### Sieťové zariadenia

Sieťové zariadenia zabezpečujú prepájanie a ochranu siete.

- **Switch** prepája počítače a ďalšie zariadenia v jednej lokálnej sieti a umožňuje im vzájomnú komunikáciu.
- **Router** spája lokálnu sieť školy s internetom.
- **Firewall** chráni sieť pred nebezpečnými alebo podozrivými prístupmi a rozhoduje, aká komunikácia bude povolená a aká zablokovaná.

#### UPS

**UPS**, teda záložné napájanie, dodáva elektrinu pri výpadku prúdu. Počas bežnej prevádzky sa nabíja a pri prerušení dodávky elektriny okamžite napája zariadenia z batérie.

Jej význam spočíva v tom, že zariadenia sa nevypnú náhle. Tým sa znižuje riziko poškodenia servera a zároveň vzniká čas na bezpečné ukončenie práce alebo riadené vypnutie systémov.

#### Chladenie

**Chladenie** je nevyhnutné preto, že servery produkujú veľké množstvo tepla. V serverovni sa preto používa **klimatizácia** alebo **ventilácia**. Bez vhodného chladenia rastie riziko prehrievania a porúch.

#### Fyzická bezpečnosť

**Fyzická bezpečnosť serverovne** zahŕňa najmä:

- uzamknuté dvere,
- obmedzený prístup len pre IT správcu,
- prípadne kamerový systém alebo čipové karty.

Serverovňa býva typicky usporiadaná v **rackovej skrini**, obsahuje veľké množstvo káblov, signalizačné kontrolky a býva hlučná v dôsledku činnosti ventilátorov.

??? warning "Dôležité"

    Výpadok serverovne neznamená iba technický problém. Môže spôsobiť nedostupnosť účtov, súborov, internetu, tlače aj bezpečnostných funkcií, a tým výrazne narušiť chod školy.

## Serverová vrstva

**Serverová vrstva** môže byť prevádzkovaná **lokálne**, **v cloude** alebo v **hybridnom modeli**. Jej úlohou je poskytovať centrálne služby, ktoré využívajú používatelia a zariadenia v celej škole.

Typické školské servery zahŕňajú:

- **súborový server**,
- **server identity a domény**,
- **aplikačné servery**,
- **print server**,
- **zálohovací server**.

### Súborový server

**Súborový server** slúži najmä na uchovávanie domovských adresárov žiakov a učiteľov a na správu spoločných dátových úložísk.

### Server identity a domény

**Server identity** alebo **doména** zabezpečuje správu účtov a prístupov. Môže ísť napríklad o:

- **Active Directory**,
- **Azure AD**,
- prostredie **Google Workspace**.

### Aplikačné servery

**Aplikačné servery** prevádzkujú systémy ako:

- **Moodle**,
- **EduPage**,
- **Google Classroom**,

a môžu zároveň obsluhovať aj ďalšie špecializované systémy, napríklad **knižničný systém**.

### Print server

**Print server** spravuje tlačové služby a organizuje komunikáciu medzi používateľmi a tlačiarňami.

### Zálohovací server

**Zálohovací server** uchováva **lokálne aj cloudové zálohy**, ktoré slúžia na obnovu dát pri ich strate alebo poškodení.

## Klientská vrstva

**Klientská vrstva** predstavuje tú časť infraštruktúry, s ktorou používatelia pracujú priamo. Patria sem **učiteľské zariadenia**, **žiacke zariadenia** a **interaktívne prvky používané vo vyučovaní**.

Učitelia pracujú najmä s:

- **notebookmi**,
- **stolnými počítačmi**.

Žiaci používajú:

- zariadenia v **počítačových učebniach**,
- **tablety**,
- **Chromebooky**,
- model **BYOD**, pri ktorom si prinášajú vlastné zariadenia.

Súčasťou klientskej vrstvy sú aj:

- **interaktívne tabule**,
- **projektory**,
- **digitálne hlasovacie systémy**.

## Chromebook

**Chromebook** je notebook so systémom **ChromeOS**, určený predovšetkým na prácu na internete. Je jednoduchý, rýchly a vhodný na školské úlohy, prezentácie, e-maily či prácu s cloudovými dokumentmi.

Typické je preň silné prepojenie s:

- webovým prehliadačom,
- cloudovým úložiskom.

Nie je však určený na hardvérovo náročný softvér.

!!! abstract "Definícia"

    **Chromebook** je klientské zariadenie orientované najmä na webové a cloudové služby, ktoré je vhodné pre školské prostredie tam, kde sa nevyžaduje prevádzka náročných desktopových aplikácií.

## Interaktívne tabule

**Interaktívna tabuľa** je elektronická tabuľa ovládaná dotykom, ktorá rozširuje možnosti tradičnej tabule o multimédiá a interaktivitu. V praktickom ponímaní ide o prepojenie **tabule**, **počítača** a **projektora**.

Učiteľ na nej môže:

- písať,
- kresliť,
- prehrávať videá,
- zobrazovať prezentácie,
- umožniť žiakom aktívne zasahovať do obsahu priamo dotykom.

### Hlavné prínosy

Medzi hlavné prínosy interaktívnych tabúľ patria:

- **dotykové ovládanie**,
- využitie **videí a obrázkov**,
- možnosť **uložiť priebeh hodiny**,
- **prístup na internet**,
- zapájanie žiakov prostredníctvom **interaktívnych cvičení**,
- odstránenie potreby klasickej kriedy.

### Obmedzenia

Na druhej strane ide o technológiu:

- finančne náročnejšiu než bežná tabuľa,
- závislú od elektrickej energie,
- náchylnú na technické poruchy.

Pre efektívne používanie si navyše vyžaduje osvojenie ovládania a určitú prípravu.

### Základné časti interaktívneho systému

Interaktívny systém stojí na troch základných častiach:

1. **Počítač** tvorí riadiace centrum, v ktorom sú uložené programy, prezentácie a internetové služby.
2. **Dataprojektor** premieta obraz z počítača na tabuľu.
3. **Interaktívna tabuľa** slúži ako dotykové rozhranie, cez ktoré používateľ ovláda počítač.

Fungovanie systému je obojsmerné: počítač odošle obraz, projektor ho zobrazí na tabuľu a dotyk na tabuli sa následne prenesie späť do počítača ako ovládací pokyn.

### Príklady riešení

Medzi známe značky interaktívnych riešení patria:

- **SMART Board**,
- **Samsung Flip**,
- **Microsoft Surface Hub**,
- **ViewSonic**,
- **BenQ**,
- **Promethean**,
- **BenQ Board**,
- **HiteVision**,
- **Hushida**,
- **i3TOUCH**.

!!! example "Príklad"

    Interaktívna tabuľa umožňuje učiteľovi viesť hodinu tak, že súčasne zobrazuje prezentáciu, prehráva video, zapisuje poznámky a zapája žiakov do dotykových aktivít priamo na ploche tabule.

## Aplikačná architektúra školy

**Aplikačná architektúra** predstavuje softvérovú vrstvu, ktorá zabezpečuje každodenné fungovanie školy. Zahŕňa najmä:

- **LMS** alebo **školský informačný systém**,
- **e-mailové a kolaboračné nástroje**,
- **didaktický softvér**,
- **bezpečnostné aplikácie**.

## LMS a školský informačný systém

**LMS** je systém určený na správu a realizáciu online výučby. Učiteľ v ňom zverejňuje učivo a úlohy, žiaci sa prostredníctvom neho učia, odovzdávajú zadania a riešia testy.

Výhodou je sústredenie:

- študijných materiálov,
- domácich úloh,
- testov,
- komunikácie medzi učiteľom a žiakom

na jedno online miesto.

Medzi príklady takýchto systémov patria:

- **Moodle**,
- **Google Classroom**,
- **Microsoft Teams pre školy**,
- **EduPage**,
- **Schoology**.

V praxi LMS umožňuje, aby sa žiak učil online, mal materiály dostupné v digitálnej forme, odovzdával úlohy elektronicky a absolvoval aj online testovanie.

### Obmedzenia LMS

S využívaním LMS súvisia aj určité obmedzenia. Systém je závislý od:

- internetového pripojenia,
- dostupnosti zariadenia, ako je počítač, tablet alebo notebook.

Zároveň môže:

- znižovať mieru osobného kontaktu,
- byť ovplyvnený technickými problémami,
- nevyhovovať každému používateľovi z hľadiska učenia v online prostredí.

!!! note "Poznámka"

    LMS nepredstavuje iba technický nástroj, ale aj organizačný rámec, ktorý mení spôsob distribúcie učiva, zadávania úloh a komunikácie medzi učiteľom a žiakom.

## Kolaborácia

**Kolaborácia** znamená spoluprácu viacerých ľudí prostredníctvom digitálnych nástrojov. Jej podstata spočíva v tom, že viacerí používatelia môžu súčasne pracovať na tom istom dokumente alebo projekte, vzájomne komunikovať, zdieľať súbory a koordinovať svoju prácu aj bez spoločnej fyzickej prítomnosti.

Typickými nástrojmi kolaborácie sú:

- **Google Docs**,
- **Google Sheets**,
- **Google Slides**,
- **Microsoft Teams**,
- **Zoom**,
- **Slack**.

Ich význam v školskom prostredí spočíva v podpore:

- skupinovej práce,
- online komunikácie,
- spoločného vytvárania obsahu.

## Didaktický softvér

**Didaktický softvér** je vzdelávací program alebo online nástroj, ktorý podporuje učenie, precvičovanie a testovanie. Patrí sem softvér na matematiku, jazykové aplikácie, vzdelávacie hry a online kvízy.

Medzi konkrétne príklady patria:

- **Duolingo**,
- **Kahoot!**,
- **GeoGebra**,
- **Alfbook**,
- **SmartBooks**,
- **Moodle**.

V porovnaní s tradičným učením prináša didaktický softvér vyššiu mieru interaktivity. Umožňuje využívať počítač, tablet alebo mobil, ponúka interaktívne cvičenia a hry, podporuje učenie vlastným tempom a poskytuje okamžitú spätnú väzbu.

Zároveň však prináša podobné obmedzenia ako iné digitálne nástroje:

- potrebu internetu alebo techniky,
- problém dostupnosti vhodného zariadenia pre všetkých používateľov,
- menej osobného kontaktu,
- riziko technických problémov.

!!! info "Zásada"

    Úloha didaktického softvéru nespočíva v nahradení klasického učenia, ale v jeho doplnení pomocou moderných technológií a interaktívnych prvkov.

## Bezpečnostné aplikácie

Medzi dôležité bezpečnostné aplikácie patria najmä **antivírus** a **web filtering**.

### Antivírus

**Antivírus** je program, ktorý chráni počítač pred vírusmi a škodlivým softvérom. Vyhľadáva hrozby, blokuje ich alebo odstraňuje a chráni dáta aj samotné zariadenie. Prakticky kontroluje súbory a programy na úrovni koncového zariadenia.

### Firewall

**Firewall** sa od antivírusu líši tým, že sa zameriava na **sieťovú komunikáciu**. Chráni sieť, kontroluje internetovú komunikáciu a rozhoduje, čo môže cez sieť prejsť.

### Web filtering

**Web filtering** blokuje nevhodné alebo nebezpečné webové stránky. Rozhoduje o tom, ktoré stránky je možné navštíviť a ktoré budú zablokované. V školách sa používa ako ochrana žiakov pred nevhodným obsahom.

Medzi príklady patria:

- **OpenDNS (Cisco Umbrella)**,
- **FortiGate Web Filter**,
- **Sophos Web Filtering**,
- **ESET Web Control**,
- **Google SafeSearch** alebo **Family Link**.

### Rozdiel medzi firewallom a web filteringom

| Nástroj | Hlavná úloha |
|---|---|
| **Firewall** | Chráni sieťovú komunikáciu ako celok a rozhoduje, aká komunikácia bude povolená alebo zablokovaná. |
| **Web filtering** | Obmedzuje prístup ku konkrétnym webovým stránkam a filtruje nevhodný alebo nebezpečný obsah. |

## Bezpečnostná architektúra školy

**Bezpečnostná architektúra** patrí medzi najdôležitejšie časti školskej IKT infraštruktúry. Zahŕňa:

- **firewall** a systémy **IDS/IPS**,
- **VLAN segmentáciu**,
- **centrálnu autentifikáciu**,
- ochranu osobných údajov podľa **GDPR**,
- **zálohovanie** vrátane **disaster recovery**.

## IDS a IPS

**IDS** (*Intrusion Detection System*) sleduje, či v sieti nedochádza k útoku, a v prípade problému upozorní správcu. Útok sám nezastaví, ale deteguje ho.

**IPS** (*Intrusion Prevention System*) útok nielen sleduje, ale ho aj aktívne zastavuje.

!!! note "Poznámka"

    V zjednodušenom porovnaní platí, že **firewall** určuje, kto môže komunikovať, **IDS** si útok všimne a **IPS** si útok všimne a súčasne ho zablokuje.

## VLAN segmentácia

**VLAN segmentácia** znamená rozdelenie jednej fyzickej siete na viac logicky oddelených sietí. Aj keď sú zariadenia zapojené do toho istého switcha, správajú sa, akoby patrili do odlišných sietí.

Takéto riešenie:

- zvyšuje bezpečnosť,
- zlepšuje kontrolu prístupu,
- znižuje zahltenie siete,
- zjednodušuje správu.

V školskom prostredí možno týmto spôsobom oddeliť napríklad:

- sieť učiteľov,
- sieť žiakov,
- sieť administratívy alebo kancelárií.

Zariadenia sa potom navzájom nevidia, pokiaľ to správca výslovne nepovolí.

## Centrálna autentifikácia

**Centrálna autentifikácia** znamená používanie jedného mena a hesla vo viacerých systémoch a službách. Používateľ sa tak môže tým istým účtom prihlásiť do počítača, e-mailu aj LMS.

Medzi hlavné výhody patria:

- jednoduchšie prihlasovanie,
- vyššia bezpečnosť,
- ľahšia správa používateľských účtov.

## GDPR

**GDPR** predstavuje pravidlá ochrany osobných údajov. Osobnými údajmi sú napríklad:

- meno,
- priezvisko,
- adresa,
- e-mail,
- rodné číslo.

Zmyslom GDPR je určiť, ako sa tieto údaje môžu zbierať a používať, aby nedošlo k ich zneužitiu.

V školskom prostredí to znamená povinnosť:

- údaje chrániť,
- nezdieľať ich bezdôvodne,
- jasne uvádzať účel ich spracúvania.

!!! info "Pravidlo"

    Ochrana osobných údajov v škole nie je len formálnou povinnosťou. Je súčasťou bezpečnej správy digitálneho prostredia a ochrany súkromia žiakov, učiteľov aj ďalších osôb.

## Zálohovanie a disaster recovery

**Zálohovanie** znamená vytváranie kópie dát pre prípad ich straty alebo poškodenia. Keď sa dáta zničia alebo stratia, možno ich obnoviť zo zálohy.

**Disaster recovery** je širší plán obnovy po vážnej udalosti, ako je:

- požiar,
- výpadok servera,
- útok.

Kým zálohovanie zachraňuje dáta, disaster recovery smeruje k obnoveniu fungovania celého systému v čo najkratšom čase.

!!! abstract "Definícia"

    **Disaster recovery** je plán a súbor postupov, ktorých cieľom je po vážnej prevádzkovej udalosti čo najrýchlejšie obnoviť funkčnosť informačného systému.

## Cloudová vrstva

**Cloudová vrstva** zabezpečuje ukladanie dát, poskytovanie služieb a dostupnosť výpočtových prostriedkov prostredníctvom internetu namiesto výlučne lokálnej infraštruktúry.

Programy a dáta nemusia byť uložené na školských počítačoch alebo serveroch, ale na vzdialených serveroch, ku ktorým sa pristupuje cez internet.

V moderných školách sa preto čoraz viac uplatňuje model:

- **Microsoft 365** alebo **Google Workspace for Education**,
- **cloudové LMS**,
- **cloudová identita**,
- **hybridný model** spájajúci lokálne servery s cloudovými službami.

## Cloudové úložisko

**Cloudové úložisko** slúži na ukladanie súborov, databáz a záloh. Typickými príkladmi sú:

- **Google Drive**,
- **OneDrive**,
- **Dropbox**.

Používateľom umožňuje:

- ukladať súbory do cloudu,
- pristupovať k nim z rôznych zariadení,
- zdieľať ich,
- spolupracovať v reálnom čase.

K hlavným funkciám patrí:

- ukladanie dokumentov, obrázkov, videí či archívov,
- automatická synchronizácia medzi zariadeniami,
- nastavovanie prístupových práv,
- spolupráca viacerých používateľov na tom istom obsahu.

Medzi výhody patrí:

- dostupnosť odkiaľkoľvek,
- automatické ukladanie zmien,
- jednoduché zdieľanie,
- bezpečnejšie zálohovanie,
- možnosť využiť základný úložný priestor bezplatne.

## Microsoft 365

**Microsoft 365** je balík cloudových kancelárskych aplikácií a služieb od spoločnosti Microsoft. Umožňuje vytvárať dokumenty, komunikovať a spolupracovať online.

Zahŕňa aplikácie:

- **Word**,
- **Excel**,
- **PowerPoint**,
- **Outlook**,
- **Teams**,
- **OneDrive**.

Používa sa vo firmách, školách aj domácnostiach a podporuje spoluprácu viacerých používateľov v reálnom čase.

## Google Workspace for Education

**Google Workspace for Education** je cloudový balík nástrojov od spoločnosti Google určený pre školy a vzdelávacie inštitúcie.

Obsahuje:

- **Google Docs**,
- **Google Sheets**,
- **Google Slides**,
- **Gmail**,
- **Google Meet**,
- **Google Classroom**,
- **Google Drive**.

Je orientovaný na podporu online výučby, spolupráce a správy školských aktivít.

## Cloud LMS

**Cloud LMS** je online systém na správu vzdelávania, ktorý funguje cez internet a nevyžaduje inštaláciu na školský server. Umožňuje:

- vytvárať a spravovať kurzy,
- zadávať úlohy a testy,
- sledovať pokrok žiakov,
- komunikovať,
- ukladať študijné materiály online.

## Cloud identity a SSO

**Cloud identity** je systém správy digitálnej identity v cloudovom prostredí.

**SSO** (*Single Sign-On*) znamená, že jedno prihlásenie postačuje na prístup k viacerým službám. Používateľ sa najprv prihlási do systému, ten overí jeho identitu a následne mu sprístupní ďalšie služby, napríklad e-mail, LMS a cloudové úložisko, bez potreby ďalšieho zadávania hesla.

!!! note "Poznámka"

    Cloud identity a SSO zjednodušujú používateľskú skúsenosť a zároveň zlepšujú správu prístupov v prostredí, kde škola využíva viacero digitálnych služieb naraz.

## Typické modely školskej IKT architektúry

Podoba IKT architektúry školy závisí od jej veľkosti, rozpočtu, personálnych možností a spôsobu prevádzky.

### Malá základná škola

Malá základná škola s približne **150 až 300 žiakmi** býva charakteristická:

- obmedzeným rozpočtom,
- minimom IT personálu,
- silnou orientáciou na cloudové služby.

Typická architektúra smeruje k modelu **cloud-first**, teda s minimálnym počtom lokálnych serverov. Škola využíva **Google Workspace** alebo **Microsoft 365**, pracuje s **Chromebookmi** alebo **tabletmi**, spolieha sa najmä na **Wi-Fi** a používa jednoduchší firewall, napríklad **MikroTik**, **FortiGate** alebo **UniFi**.

Takýto model prináša nižšie náklady a jednoduchšiu správu, jeho slabšou stránkou je však väčšia závislosť od internetu.

### Väčšia stredná škola

Väčšia stredná škola s približne **600 až 1200 a viac žiakmi** má spravidla:

- vlastnú serverovňu,
- IT správcu alebo tím,
- častejšie hybridný model spájajúci lokálnu infraštruktúru s cloudom.

Typická architektúra obsahuje:

- **virtualizačný server**,
- **Active Directory** alebo **Azure AD**,
- **file server**,
- **cloudový e-mail**,
- **cloudové LMS**,
- pokročilejší **firewall** doplnený o **VLAN segmentáciu**.

Výhodou tohto modelu je vyššia kontrola a lepšia bezpečnosť. Nevýhodou sú vyššie náklady a väčšia zložitosť správy.

### Porovnanie modelov

| Typ školy | Typická charakteristika | Výhody | Nevýhody |
|---|---|---|---|
| **Malá základná škola** | cloud-first model, minimum lokálnych serverov, jednoduchšia správa | nižšie náklady, menšie nároky na správu | vyššia závislosť od internetu |
| **Väčšia stredná škola** | vlastná serverovňa, hybridná architektúra, vyššia miera lokálnej kontroly | vyššia kontrola, lepšia bezpečnosť | vyššie náklady, väčšia zložitosť správy |

## Záver

IKT infraštruktúra školy je **viacvrstvový systém**, v ktorom sa fyzická infraštruktúra, servery, klientské zariadenia, aplikácie, bezpečnostné opatrenia a cloudové služby navzájom dopĺňajú.

Jednotlivé vrstvy plnia odlišné, ale vzájomne prepojené úlohy:

- **fyzická vrstva** zabezpečuje technický základ,
- **serverová vrstva** poskytuje služby a správu identity,
- **klientská vrstva** sprostredkúva reálnu prácu používateľov,
- **aplikačná architektúra** podporuje výučbu a administratívu,
- **bezpečnostná architektúra** chráni sieť aj údaje,
- **cloudová vrstva** rozširuje dostupnosť, flexibilitu a možnosti spolupráce.

Konkrétna podoba riešenia závisí od:

- veľkosti školy,
- rozpočtu,
- personálnych možností,
- miery orientácie na cloud alebo hybridnú prevádzku.

!!! tip "Zhrnutie"

    Školská IKT infraštruktúra nie je tvorená jedným zariadením alebo jednou službou, ale prepojeným systémom viacerých vrstiev. Jej cieľom je zabezpečiť spoľahlivú prevádzku vyučovania, administratívy, komunikácie, dátových služieb a bezpečnosti. Úspešné riešenie vždy vychádza z potrieb konkrétnej školy a z možností jej technického aj personálneho zabezpečenia.

<a href=https://cloud.milpet.eu/s/Jp3pJsnpFr825fd target="_blank">
    <button class="md-button md-button--primary">
    Oficiálna prezentácia [2026]
    </button>
<a>