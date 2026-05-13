---
icon: fontawesome/brands/linux
---

<button class="md-button md-button--primary" onclick="window.print();">
  Tlačiť
</button>

# Správa operačných systémov a zariadení v školskom prostredí

## Úvod do témy

Správa operačných systémov a zariadení patrí medzi základné oblasti školského IT. Škola zvyčajne nepoužíva iba jeden počítač, ale väčšie množstvo zariadení, používateľských účtov, sieťových služieb, cloudových nástrojov a bezpečnostných pravidiel. Cieľom správy je zabezpečiť, aby školské zariadenia fungovali spoľahlivo, jednotne, bezpečne a aby sa dali rýchlo obnoviť po probléme.

!!! abstract "Základné pojmy"
    **Správa alebo administrácia** je súbor činností, ktorými sa zabezpečuje správne fungovanie zariadení, operačných systémov, používateľských účtov, aplikácií, siete a bezpečnostných pravidiel.

    **Operačný systém** je základný softvér zariadenia. Riadi hardvér a poskytuje prostredie na spúšťanie aplikácií. Príkladom je Windows, ChromeOS alebo Linux.

    **Koncové zariadenie**, označované aj ako **endpoint**, je zariadenie používané koncovým používateľom. Môže ísť o počítač, notebook, tablet alebo Chromebook.

    **IT prostredie školy** zahŕňa zariadenia, sieť, servery, cloudové služby, používateľské účty, dáta a bezpečnostné opatrenia.

Pri správe školského IT si správca kladie viacero praktických otázok. Ako zabezpečiť rovnaké nastavenia v učebniach? Ako obmedziť žiakov tak, aby nemohli meniť dôležité systémové nastavenia? Ako rýchlo obnoviť počítač po poškodení systému alebo bezpečnostnom incidente? Ako chrániť osobné údaje žiakov a zamestnancov školy?

??? warning "Dôležité"
    V školskom prostredí nejde iba o technické fungovanie počítačov. Správa zariadení vždy súvisí aj s bezpečnosťou, ochranou údajov, právami používateľov, zálohovaním a prevádzkou vyučovania. Ak správca podcení jednu oblasť, problém sa môže prejaviť v celej škole.

## 1. IT prostredie školy

Školské IT prostredie tvorí súbor technických a softvérových prvkov, ktoré spolu zabezpečujú bežnú prevádzku školy. Patria sem zariadenia používané v učebniach, notebooky učiteľov, zariadenia žiakov, servery, sieťové prvky, cloudové služby a systémy na správu identít.

Medzi základné časti školského IT prostredia patria **klientske zariadenia**, **servery**, **sieťová infraštruktúra**, **služby identity** a **cloudové služby**.

!!! abstract "Klientske zariadenia"
    **Klientske zariadenia** sú zariadenia, s ktorými pracujú používatelia. V škole ide najmä o učebňové počítače, notebooky učiteľov, tablety, Chromebooky alebo vlastné zariadenia žiakov.

!!! abstract "Server"
    **Server** je počítač alebo systém, ktorý poskytuje služby iným zariadeniam v sieti. V školskom prostredí môže ísť napríklad o súborový server, doménový radič alebo server poskytujúci školskú aplikáciu.

!!! abstract "Sieťová infraštruktúra"
    **Sieťová infraštruktúra** zahŕňa zariadenia, ktoré zabezpečujú komunikáciu v škole a prístup na internet. Patria sem najmä prepínače, smerovače a Wi-Fi prístupové body.

!!! abstract "Služby identity"
    **Služby identity** spravujú používateľské účty, prihlásenie používateľov a ich prístup k službám. Príkladom je Active Directory, Microsoft Entra ID alebo Google účty.

!!! abstract "Cloudové služby"
    **Cloudové služby** sú služby prevádzkované u poskytovateľa a dostupné cez internet. V školách ide najmä o Microsoft 365 alebo Google Workspace.

### 1.1 Lokálne, cloudové a hybridné prostredie

Školské IT môže byť prevádzkované lokálne, v cloude alebo ako kombinácia oboch prístupov. Každý model má svoje výhody aj obmedzenia.

| Model prostredia | Charakteristika | Príklad |
|---|---|---|
| **Lokálne prostredie** | Služby bežia priamo v škole, napríklad v serverovni. | Lokálny súborový server alebo doménový radič. |
| **Cloudové prostredie** | Služby bežia mimo školy u poskytovateľa a sú dostupné cez internet. | Microsoft 365 alebo Google Workspace. |
| **Hybridné prostredie** | Kombinuje lokálne služby a cloudové služby. | Lokálna doména v škole a cloudové účty v Microsoft 365. |

!!! note "Poznámka"
    V praxi je v školách veľmi časté hybridné prostredie. Škola môže mať lokálnu doménu, učebňové počítače a súborový server, no zároveň používať cloudové služby, ako sú Teams, OneDrive alebo e-mail.

## 2. Operačné systémy v školách

V školskom prostredí sa najčastejšie stretávame s operačnými systémami **Windows**, **ChromeOS** a v menšej miere aj **Linux**. Výber operačného systému závisí od potrieb školy, používaného softvéru, spôsobu správy zariadení a finančných alebo technických možností.

!!! abstract "Spravovateľnosť"
    **Spravovateľnosť** znamená, ako jednoducho dokáže správca centrálne nastavovať, aktualizovať, obmedzovať a kontrolovať väčšie množstvo zariadení naraz.

### 2.1 Windows

Windows je tradičný desktopový operačný systém. V školách sa používa najmä preto, že podporuje široké množstvo aplikácií, hardvéru a periférií. Je vhodný najmä tam, kde škola potrebuje používať špecifické výučbové programy, lokálne aplikácie, tlačiarne, interaktívne tabule alebo doménovú správu.

Medzi jeho silné stránky patrí kompatibilita softvéru, centrálna správa cez Active Directory a Group Policy, integrácia s Microsoft 365 a široká podpora hardvéru.

### 2.2 ChromeOS

ChromeOS je operačný systém určený najmä pre Chromebooky. Je orientovaný na webové aplikácie a cloudové služby. Používateľ sa typicky prihlasuje školským Google účtom a dáta ukladá do cloudu, napríklad na Google Disk.

Výhodou ChromeOS je jednoduchá centrálna správa cez Google Admin konzolu, rýchla obnova zariadenia a menšie riziko problémov s lokálne inštalovanými aplikáciami. Nevýhodou môže byť závislosť od internetu a skutočnosť, že niektoré špecifické Windows programy nemusia byť dostupné.

### 2.3 Linux

Linux je open-source operačný systém. V školách sa často používa najmä vo výučbe programovania, sieťovania alebo administrácie. Je vhodný aj pre servery a automatizáciu.

V bežných učebniach býva menej rozšírený, najmä kvôli kompatibilite niektorých komerčných programov a zvyklostiam používateľov. Môže však veľmi dobre slúžiť napríklad ako školský webový, databázový alebo proxy server.

## 3. Prečo školy často volia Windows

Windows sa v školách presadil najmä vďaka praktickej použiteľnosti. Podporuje veľké množstvo výučbového softvéru, administratívnych programov, tlačiarní, interaktívnych tabúľ a ďalších zariadení.

Dôležitým dôvodom je aj možnosť doménovej správy. Vďaka nej môže škola centrálne spravovať používateľské účty, počítače, pravidlá bezpečnosti, sieťové disky, tlačiarne a nastavenia prostredia.

!!! note "Poznámka"
    Windows sa dnes nemusí spravovať iba klasickou lokálnou doménou. Čoraz častejšie sa používa aj moderná cloudová správa cez Microsoft Entra ID a Microsoft Intune. V školách však stále často existuje aj tradičná Active Directory doména.

Hlavné dôvody používania Windows v školách sú:

- vysoká kompatibilita s aplikáciami,
- možnosť centrálnej doménovej správy,
- integrácia s Microsoft 365,
- podpora veľkého množstva hardvéru,
- známe používateľské prostredie pre učiteľov a žiakov.

## 4. Active Directory

Active Directory je adresárová služba od spoločnosti Microsoft. Slúži ako centrálna databáza objektov v sieti. Týmito objektmi môžu byť používatelia, počítače, skupiny alebo organizačné jednotky.

Pomocou Active Directory môže škola centrálne riadiť prihlasovanie používateľov, prístup k zdrojom, oprávnenia a skupinové politiky.

!!! abstract "Active Directory"
    **Active Directory**, skrátene **AD**, je adresárová služba, ktorá spravuje objekty v doméne. Umožňuje centrálne riadiť používateľské účty, počítače, skupiny, prihlasovanie a oprávnenia.

### 4.1 Základné pojmy Active Directory

!!! abstract "Doména"
    **Doména** je logická organizácia v sieti, v ktorej sú účty a počítače spravované centrálne. Príkladom môže byť názov typu `skola.local`.

!!! abstract "Doménový radič"
    **Doménový radič**, po anglicky **Domain Controller**, je server, ktorý uchováva databázu Active Directory a overuje prihlasovanie používateľov.

!!! abstract "Objekt"
    **Objekt** je záznam v Active Directory. Objektom môže byť používateľ, počítač, skupina alebo iná spravovaná položka.

!!! abstract "Organizačná jednotka"
    **Organizačná jednotka**, skrátene **OU**, je štruktúra podobná priečinku. Slúži na organizáciu objektov a cielenie politík. Príkladom môže byť OU pre žiakov, učiteľov alebo učebne.

!!! abstract "Bezpečnostná skupina"
    **Bezpečnostná skupina** je skupina používateľov, ktorej sa priraďujú oprávnenia. Vďaka skupinám nie je potrebné nastavovať práva každému používateľovi samostatne.

!!! abstract "Autentifikácia"
    **Autentifikácia** je overenie identity používateľa. Zjednodušene odpovedá na otázku: „Som naozaj ten, za koho sa vydávam?“ V doménovom prostredí sa typicky používa mechanizmus Kerberos.

!!! abstract "Autorizácia"
    **Autorizácia** je rozhodnutie, čo používateľ smie robiť. Určuje napríklad prístup k súborom, tlačiarňam, aplikáciám alebo zdieľaným priečinkom.

!!! example "Príklad prihlásenia v doméne"
    Žiak sa prihlási školským účtom do počítača v učebni. Doménový radič overí jeho meno a heslo. Tým prebehne autentifikácia. Následne systém podľa skupín a oprávnení rozhodne, ku ktorým priečinkom, tlačiarňam a službám má žiak prístup. Tým prebehne autorizácia.

## 5. Doménové prostredie v praxi

Doménové prostredie umožňuje škole spravovať počítače a používateľov centrálne. Namiesto toho, aby správca nastavoval každý počítač samostatne, môže pravidlá, účty a oprávnenia riadiť z jedného miesta.

V doménovom prostredí je možné zaviesť jednotné prihlasovanie, centrálne pripojiť sieťové disky, spravovať tlačiarne podľa učební alebo tried a nastavovať jednotné bezpečnostné pravidlá.

!!! abstract "Sieťový disk a zdieľanie"
    **Sieťový disk** alebo **zdieľanie** je priečinok uložený na serveri, ku ktorému používatelia pristupujú cez sieť. Prístup sa často nastavuje podľa skupín.

!!! abstract "Profil používateľa"
    **Profil používateľa** obsahuje používateľské nastavenia a dáta, napríklad pracovnú plochu, dokumenty alebo nastavenia aplikácií. V doménovom prostredí môže existovať roaming profil, no dnes sa častejšie používajú riešenia ako OneDrive alebo presmerovanie priečinkov.

Doménové prostredie škole umožňuje:

- používať rovnaké konto na prihlásenie do počítača aj školských služieb,
- centrálne pripájať domovské priečinky žiakov,
- vytvárať zdieľané priečinky pre triedy alebo predmety,
- priraďovať tlačiarne podľa učebne alebo používateľskej skupiny,
- nastavovať pravidlá hesiel a zamykania obrazovky,
- obmedzovať prístup k vybraným systémovým nastaveniam.

## 6. Skupinová politika

Skupinová politika, skrátene GPO, je mechanizmus na hromadné nastavovanie konfigurácie Windows počítačov a používateľov v doménovom prostredí.

!!! abstract "Skupinová politika"
    **Skupinová politika**, po anglicky **Group Policy** alebo **GPO**, umožňuje správcovi centrálne nastavovať pravidlá pre používateľov a počítače. Politika sa vytvorí v doméne a priradí sa napríklad k organizačnej jednotke.

### 6.1 Ako GPO funguje

GPO sa vytvorí v doméne a pripojí sa k určitej organizačnej jednotke. Môže ísť napríklad o organizačnú jednotku s počítačmi v učebniach. Počítače alebo používatelia si následne tieto politiky pravidelne načítajú a aplikujú ich.

!!! example "Príklad použitia GPO"
    Škola má organizačnú jednotku `Ucebne`, v ktorej sú všetky počítače v počítačových učebniach. Správca na túto organizačnú jednotku pripojí politiku, ktorá zakáže prístup do Ovládacieho panela, nastaví jednotnú tapetu a automaticky pripojí sieťový disk.

### 6.2 Čo možno nastavovať cez GPO

Pomocou skupinových politík možno nastavovať rôzne oblasti systému:

| Oblasť | Príklady nastavení |
|---|---|
| **Obmedzenia** | zákaz spúšťania niektorých aplikácií, zákaz prístupu do Ovládacieho panela |
| **Bezpečnosť** | dĺžka hesla, zamykanie obrazovky, zakázanie USB úložísk |
| **Používateľské prostredie** | jednotná tapeta, mapovanie diskov, nastavenie tlačiarní |
| **Aktualizácie** | pravidlá Windows Update, plánovanie reštartov |
| **Softvér** | v niektorých scenároch automatická inštalácia aplikácií |

??? warning "Dôležité"
    GPO je veľmi silný nástroj. Ak sa použije nesprávne, môže spôsobiť problém naraz na veľkom množstve počítačov. Preto je dôležité mať dobrú štruktúru organizačných jednotiek a nové politiky najprv testovať.

## 7. Používateľské účty v škole

V škole existujú rôzne skupiny používateľov. Každá skupina má iné potreby a iné oprávnenia. Preto je dôležité rozlišovať medzi žiakmi, učiteľmi, administratívnymi pracovníkmi a správcami.

### 7.1 Žiacke účty

Žiacke účty majú byť prísne obmedzené. Žiaci by nemali mať administrátorské práva, nemali by môcť meniť dôležité nastavenia systému a často sa u nich používa aj filtrovanie webu.

### 7.2 Učiteľské účty

Učitelia potrebujú viac oprávnení ako žiaci. Môžu potrebovať prístup k tlačiarňam, zdieľaným priečinkom, výučbovým aplikáciám alebo školským službám. Ani učiteľské účty by však bežne nemali mať plné administrátorské práva.

### 7.3 Administratíva

Administratívni pracovníci pracujú s citlivými údajmi, napríklad s osobnými, mzdovými alebo organizačnými údajmi. Pri týchto účtoch je dôležitá bezpečnosť, audit a správne nastavenie prístupových práv.

### 7.4 Správcovské účty

Správcovské účty sa používajú na administráciu systémov. Nemali by sa používať na bežnú prácu, napríklad na e-mail alebo prehliadanie webu. Správca by mal mať oddelený bežný účet a samostatný administrátorský účet.

!!! abstract "Životný cyklus účtu"
    **Životný cyklus účtu** opisuje celý proces práce s používateľským účtom. Zahŕňa vytvorenie účtu, zmeny počas používania, napríklad zmenu triedy alebo oprávnení, a ukončenie účtu pri odchode žiaka alebo zamestnanca. Účet sa následne deaktivuje alebo archivuje.

## 8. Riadenie oprávnení

Riadenie oprávnení rozhoduje o tom, kto má prístup ku ktorým systémom, priečinkom, aplikáciám alebo zariadeniam. V školskom prostredí je dôležité, aby používatelia mali iba také oprávnenia, ktoré skutočne potrebujú.

!!! info "Princíp najmenších oprávnení"
    **Princíp najmenších oprávnení**, po anglicky **Least Privilege**, znamená, že používateľ má dostať iba také práva, ktoré potrebuje na svoju prácu. Nemá mať zbytočne vyššie oprávnenia.

!!! abstract "RBAC"
    **RBAC**, teda **riadenie prístupu podľa rolí**, znamená, že oprávnenia sa nepriraďujú jednotlivo každému používateľovi, ale rolám alebo skupinám. Používateľ potom získa práva podľa toho, do akej roly patrí.

!!! info "Oddelenie účtov"
    Správca by mal používať bežný účet na každodennú prácu a samostatný administrátorský účet iba na správu systémov. Znižuje sa tým riziko zneužitia správcovských práv.

??? warning "Dôležité"
    Ak má žiak administrátorské práva, môže meniť systémové nastavenia, vypínať antivírus, inštalovať nežiaduce programy, meniť nastavenia siete alebo obchádzať školské obmedzenia. To je presne ten moment, keď sa z učebne stáva IT escape room, ale bez zábavnej ceny na konci.

## 9. Microsoft Entra ID

Microsoft Entra ID je cloudová služba na správu identít v prostredí Microsoftu. Predtým bola známa ako Azure Active Directory. Používa sa na správu používateľov, prihlasovania a prístupov ku cloudovým službám.

!!! abstract "Microsoft Entra ID"
    **Microsoft Entra ID** je cloudová služba pre správu identít a prístupov. Umožňuje používateľom pristupovať k službám Microsoft 365 a ďalším aplikáciám pomocou cloudovej identity.

### 9.1 Cloudová identita

Cloudová identita znamená, že používateľský účet existuje v cloude. Nie je nutne viazaný na lokálny server školy. Používateľ sa pomocou takéhoto účtu môže prihlasovať napríklad do Teams, OneDrive alebo Outlooku.

### 9.2 Jednotné prihlasovanie

!!! abstract "SSO"
    **SSO**, teda **Single Sign-On**, znamená jednotné prihlasovanie. Používateľ sa prihlási raz a následne má prístup k viacerým službám bez opakovaného zadávania hesla.

### 9.3 Viacfaktorové overovanie

!!! abstract "MFA"
    **MFA**, teda **viacfaktorové overovanie**, znamená, že okrem hesla je potrebný ešte ďalší faktor. Môže ísť o mobilnú aplikáciu, SMS alebo bezpečnostný kľúč. MFA znižuje riziko zneužitia hesla.

### 9.4 Podmienený prístup

Podmienený prístup umožňuje vytvárať pravidlá, ktoré určujú, za akých podmienok bude prístup povolený. Príkladom môže byť pravidlo, že mimo školy sa vyžaduje MFA, alebo že prístup je povolený iba zo školských zariadení.

!!! note "Poznámka"
    Entra ID je základom modernej cloudovej správy prístupov v prostredí Microsoft 365. Umožňuje prepájať identitu používateľa s e-mailom, Teams, OneDrive a ďalšími službami.

## 10. Hybridné riešenie

Hybridné prostredie kombinuje lokálnu infraštruktúru školy a cloudové služby. Škola môže mať napríklad lokálnu Active Directory doménu, súborový server a učebňové počítače, no zároveň používať Microsoft 365, Entra ID, Teams a OneDrive.

!!! abstract "Hybridné prostredie"
    **Hybridné prostredie** znamená, že časť služieb beží lokálne v škole a časť služieb je prevádzkovaná v cloude.

### 10.1 Synchronizácia identít

Synchronizácia identít znamená, že účty z lokálnej Active Directory sa prenášajú alebo synchronizujú do Microsoft Entra ID. Vďaka tomu môže používateľ používať jeden účet pre lokálne aj cloudové služby.

### 10.2 Hybridné pripojenie zariadenia

Hybridné pripojenie zariadenia znamená, že zariadenie je známe v lokálnej doméne aj v Entra ID. To umožňuje kombinovať klasickú doménovú správu s cloudovými funkciami.

!!! example "Príklad hybridného prostredia"
    Žiak sa prihlási do počítača v učebni pomocou doménového účtu. Rovnaký účet mu zároveň umožní prístup do Teams a OneDrive. Lokálna časť rieši prihlásenie do počítača a školské zdieľania, cloudová časť rieši Microsoft 365 služby.

## 11. Microsoft Intune

Microsoft Intune je služba na modernú správu zariadení. Používa sa najmä v cloudovom prostredí a umožňuje spravovať počítače, notebooky, tablety a ďalšie zariadenia pomocou politík a konfiguračných profilov.

!!! abstract "Microsoft Intune"
    **Microsoft Intune** je cloudové riešenie na správu zariadení a koncových bodov. Umožňuje nastavovať zariadenia, kontrolovať ich stav, nasadzovať politiky a vykonávať vzdialené akcie.

!!! abstract "MDM"
    **MDM**, teda **Mobile Device Management**, znamená centrálne riadenie zariadení pomocou profilov a politík. Hoci názov obsahuje slovo „mobile“, dnes sa MDM netýka iba mobilov, ale aj notebookov a počítačov.

### 11.1 Profily a politiky v Intune

Konfiguračný profil je balík nastavení, ktorý sa nasadí na zariadenie. Môže obsahovať nastavenia Wi-Fi, VPN, bezpečnostné pravidlá alebo obmedzenia používateľa.

### 11.2 Compliance

!!! abstract "Compliance"
    **Compliance**, teda súlad, znamená kontrolu, či zariadenie spĺňa pravidlá školy. Môže ísť napríklad o požiadavku na šifrovanie, PIN, aktualizácie alebo zapnutú ochranu systému.

Ak zariadenie pravidlá nespĺňa, môže byť obmedzený alebo zablokovaný prístup k školským službám.

### 11.3 Vzdialené akcie

Intune umožňuje vykonávať vzdialené akcie. Správca môže zariadenie uzamknúť, resetovať alebo vymazať. To je dôležité najmä pri strate alebo krádeži školského notebooku.

!!! note "Poznámka"
    V školskom prostredí je Intune veľmi užitočný najmä pre notebooky učiteľov alebo žiacke zariadenia, ktoré sa používajú aj mimo školy.

## 12. Politiky a profily

Politiky určujú, ako sa majú zariadenia a účty správať. V klasickom Windows prostredí sa veľa nastavení rieši cez GPO, zatiaľ čo v modernej správe sa používajú profily v Intune alebo inom MDM riešení.

Politiky a profily môžu nastavovať najmä aktualizácie, aplikácie, bezpečnosť a sieťové nastavenia.

| Oblasť | Čo sa nastavuje |
|---|---|
| **Aktualizácie** | kedy sa inštalujú, kedy sa zariadenie reštartuje, ako sa plánujú mimo vyučovania |
| **Aplikácie** | povolené a zakázané aplikácie, automatická inštalácia povinných aplikácií |
| **Bezpečnosť** | šifrovanie, antivírus, firewall, blokovanie rizikových funkcií |
| **Sieť** | Wi-Fi profily, VPN, proxy, DNS pravidlá |

!!! note "Poznámka"
    Rozdiel medzi GPO a MDM profilmi je najmä v spôsobe správy. GPO patrí ku klasickému doménovému Windows prostrediu. MDM profily patria k modernej správe zariadení, často cez cloud.

## 13. Kiosk režim

Kiosk režim je špeciálny režim zariadenia, v ktorom je používateľ obmedzený iba na konkrétnu aplikáciu alebo úzky výber aplikácií. Používateľ nemá bežný prístup k systému, nastaveniam ani iným programom.

!!! abstract "Kiosk režim"
    **Kiosk režim** je kontrolovaný režim používania zariadenia. Zariadenie je určené na jeden konkrétny účel a používateľ nemôže voľne meniť jeho nastavenia.

### 13.1 Príklady použitia v škole

Kiosk režim sa môže v škole použiť napríklad pri testovaní, informačných paneloch alebo knižničnom katalógu.

!!! example "Príklady kiosk režimu"
    Pri testovaní môže zariadenie spustiť iba testovaciu aplikáciu alebo webovú stránku.

    Na chodbe môže byť zariadenie nastavené ako informačný panel.

    V knižnici môže zariadenie slúžiť iba na vyhľadávanie v knižničnom katalógu.

Výhodou kiosk režimu je, že minimalizuje riziko, že používateľ zmení nastavenia, spustí nevhodnú aplikáciu alebo sa dostane mimo určeného prostredia.

## 14. Bezpečnosť vo Windows

Bezpečnosť v školskom IT prostredí musí byť vrstvená. Nestačí spoliehať sa iba na jeden nástroj. Škola potrebuje aktualizácie, antivírusovú ochranu, firewall, šifrovanie a zálohovanie.

!!! info "Vrstvená bezpečnosť"
    **Vrstvená bezpečnosť** znamená, že ochrana systému sa skladá z viacerých vrstiev. Ak jedna vrstva zlyhá, ďalšie vrstvy môžu stále znížiť riziko alebo obmedziť škody.

### 14.1 Aktualizácie

Aktualizácie opravujú chyby a bezpečnostné zraniteľnosti. V škole je dôležité plánovať ich tak, aby nenarúšali vyučovanie, napríklad mimo vyučovacích hodín.

### 14.2 Antivírusová ochrana

Antivírusová ochrana deteguje a blokuje škodlivý kód. Pomáha chrániť zariadenia pred malvérom a ďalšími hrozbami.

### 14.3 Firewall

Firewall filtruje sieťovú komunikáciu. Určuje, ktorá komunikácia je povolená smerom do zariadenia a zo zariadenia von.

### 14.4 Šifrovanie disku

Šifrovanie disku, napríklad pomocou BitLockeru, chráni dáta v prípade straty alebo krádeže zariadenia. Ak niekto ukradne notebook, bez kľúča nedokáže dáta jednoducho prečítať.

### 14.5 Zálohovanie

Zálohovanie je posledná záchrana pri strate dát, poškodení systému alebo ransomvéri. Záloha však pomáha iba vtedy, ak sa dá reálne obnoviť.

!!! abstract "Phishing"
    **Phishing** je pokus vylákať heslo alebo citlivé údaje pomocou podvodného e-mailu alebo webovej stránky.

!!! abstract "Ransomvér"
    **Ransomvér** je škodlivý program, ktorý zašifruje dáta a žiada výkupné za ich obnovenie.

??? warning "Dôležité"
    Bezpečnosť v škole nie je jednorazové nastavenie. Je to priebežný proces, ktorý zahŕňa aktualizácie, kontrolu účtov, školenie používateľov, zálohy a pravidelnú kontrolu pravidiel.

## 15. ChromeOS a Chromebooky

ChromeOS je systém postavený okolo webu a cloudu. Používatelia sa prihlasujú školským Google účtom, dáta sa ukladajú najmä do cloudu a zariadenia sa centrálne spravujú cez Google Admin konzolu.

Výhodou ChromeOS je jednoduchá správa, rýchle resetovanie zariadenia a menšie riziko problémov spôsobených lokálnymi inštaláciami aplikácií.

Nevýhodou môže byť závislosť od internetu a od webových aplikácií. Ak škola potrebuje špecifické Windows programy, ChromeOS nemusí byť vhodným riešením pre všetky učebne.

!!! note "Poznámka"
    ChromeOS je vhodný najmä tam, kde škola používa cloudové služby a webové aplikácie. Pri špecifickom odbornom softvéri je potrebné vopred overiť kompatibilitu.

## 16. Google Admin konzola

Google Admin konzola je webové rozhranie na správu Google prostredia. Umožňuje spravovať používateľov, organizačné jednotky, politiky, Chromebooky a nastavenia obsahu.

!!! abstract "Google Admin konzola"
    **Google Admin konzola** je centrálne webové rozhranie, pomocou ktorého správca nastavuje používateľov, zariadenia a pravidlá v Google prostredí.

Pomocou Google Admin konzoly možno spravovať:

- používateľov, napríklad žiakov a učiteľov,
- organizačné jednotky, napríklad triedy alebo ročníky,
- politiky pre ChromeOS,
- povolené alebo zakázané rozšírenia,
- Chromebooky a ich registráciu,
- obmedzenia zariadení,
- filtrovanie obsahu podľa nastavení školy alebo doplnkových riešení.

!!! note "Poznámka"
    Organizačné jednotky a politiky v Google prostredí majú podobnú myšlienku ako OU a GPO v Active Directory. V oboch prípadoch ide o centrálne nastavenia pre skupiny používateľov alebo zariadení.

## 17. Linux v školskom prostredí

Linux je open-source operačný systém. V tejto téme sa spomína najmä ako doplnkový systém, ktorý má význam vo výučbe a pri serverových riešeniach.

V školách sa Linux využíva najmä na programovanie, sieťovanie, administráciu, servery a automatizáciu. Môže byť vhodný napríklad pre webový server, databázový server alebo proxy server.

V bežných učebniach býva menej rozšírený, pretože niektoré komerčné aplikácie sú naviazané na Windows alebo iné platformy.

!!! example "Príklad použitia Linuxu v škole"
    Škola môže mať počítačové učebne s Windows zariadeniami, ale školský webový alebo databázový server môže bežať na Linuxe.

## 18. GDPR a ochrana osobných údajov

GDPR je európske nariadenie o ochrane osobných údajov. V škole sa osobné údaje týkajú žiakov aj zamestnancov. Môže ísť napríklad o meno, rodné číslo, známky, dochádzku alebo pracovné údaje.

Správa IT v škole preto musí brať do úvahy ochranu osobných údajov. Nestačí iba nastaviť techniku tak, aby fungovala. Je potrebné riešiť aj to, kto má prístup k údajom, ako sú údaje chránené a či je možné spätne zistiť, kto k nim pristupoval.

!!! abstract "GDPR"
    **GDPR** je európske nariadenie o ochrane osobných údajov. V školskom prostredí je dôležité najmä pri práci s údajmi žiakov a zamestnancov.

### 18.1 Zásady ochrany údajov v IT praxi

| Zásada | Význam v školskom IT |
|---|---|
| **Minimalizácia** | Škola má zbierať a uchovávať iba potrebné údaje. |
| **Prístupové práva** | Používatelia majú mať prístup iba k údajom, ktoré potrebujú. |
| **Auditovateľnosť** | Má byť možné zistiť, kto a kedy pristupoval k citlivým údajom. |
| **Bezpečnosť spracúvania** | Údaje treba chrániť šifrovaním, aktualizáciami, MFA a správou účtov. |

!!! example "Príklad bezpečnostného incidentu"
    Ak dôjde ku kompromitácii účtu učiteľa, útočník môže získať prístup k dátam v cloude. Preto je dôležité používať MFA, správne oprávnenia a školenie používateľov.

??? warning "Dôležité"
    Ochrana osobných údajov nie je iba právna téma. V praxi sa premieta do nastavenia účtov, oprávnení, hesiel, MFA, logovania, zálohovania a školenia používateľov.

## 19. Zálohovanie a obnova

Záloha je kópia dát určená na obnovu v prípade straty, poškodenia alebo útoku. V škole je zálohovanie dôležité najmä pri súborových serveroch, administratívnych dátach, školských dokumentoch a cloudových službách.

!!! abstract "Záloha"
    **Záloha** je kópia dát, ktorá slúži na obnovu po strate, poškodení alebo bezpečnostnom incidente.

### 19.1 Typy záloh

| Typ zálohy | Charakteristika |
|---|---|
| **Lokálna záloha** | Záloha uložená v škole, napríklad na NAS alebo serveri. |
| **Cloudová záloha** | Záloha uložená v cloude alebo u externého poskytovateľa. |
| **Cloud-to-cloud záloha** | Záloha cloudových služieb, napríklad Microsoft 365 alebo Google Workspace, pomocou doplnkového riešenia. |

### 19.2 Test obnovy

Nestačí mať zálohu. Škola musí vedieť, či sa zo zálohy dá reálne obnoviť systém alebo dáta. Preto je dôležité pravidelne testovať obnovu.

!!! abstract "Disaster recovery"
    **Disaster recovery**, teda obnova po havárii, je plán obnovy služieb po veľkom incidente. Môže ísť napríklad o požiar, ransomware alebo zlyhanie servera.

??? warning "Dôležité"
    Záloha, ktorú nikto nikdy netestoval, je skôr optimistické želanie než plán obnovy. V škole treba vedieť nielen to, že záloha existuje, ale aj to, ako rýchlo a spoľahlivo sa dá použiť.

## 20. Zhrnutie

!!! tip "Zhrnutie"
    Správa školského IT sa zameriava na jednotnosť, bezpečnosť a udržateľnosť. Škola potrebuje zariadenia, ktoré sa dajú spravovať centrálne, rýchlo obnoviť a bezpečne používať.

    Windows prostredie sa často spravuje pomocou Active Directory a Group Policy, prípadne modernou kombináciou Microsoft Entra ID a Intune.

    ChromeOS sa spravuje cez Google Admin konzolu a je vhodný najmä pre Chromebooky a cloudovo orientované prostredie.

    Linux má význam najmä vo výučbe, pri serveroch a automatizácii.

    Bezpečnosť, zálohovanie a ochrana osobných údajov sú neoddeliteľnou súčasťou správy zariadení v škole.

## 21. Otázky na opakovanie

1. Čo znamená správa operačných systémov a zariadení v školskom prostredí?
2. Aký je rozdiel medzi lokálnym, cloudovým a hybridným prostredím?
3. Prečo školy často používajú Windows?
4. Čo je Active Directory a na čo slúži?
5. Aký je rozdiel medzi autentifikáciou a autorizáciou?
6. Čo je organizačná jednotka a prečo je dôležitá?
7. Na čo slúži skupinová politika?
8. Prečo by žiaci nemali mať administrátorské práva?
9. Čo znamená princíp najmenších oprávnení?
10. Na čo slúži Microsoft Entra ID?
11. Čo je MFA a prečo je dôležité?
12. Aký je rozdiel medzi GPO a MDM profilmi?
13. Na čo slúži kiosk režim?
14. Aké vrstvy ochrany patria medzi základné bezpečnostné opatrenia vo Windows?
15. Aké výhody a nevýhody má ChromeOS?
16. Na čo slúži Google Admin konzola?
17. Kde sa v škole môže používať Linux?
18. Ako GDPR súvisí so správou školského IT?
19. Prečo nestačí zálohu iba vytvoriť?
20. Čo znamená disaster recovery?

## 22. Diskusná otázka

!!! question "Diskusia"
    Ktoré prvky správy IT by bolo podľa vás najdôležitejšie zaviesť v škole ako prvé, keby ste boli správcom? Zamerali by ste sa najskôr na účty, bezpečnosť, zálohovanie, jednotné nastavenia počítačov alebo cloudové služby?

## 23. Slovníček kľúčových pojmov

| Pojem | Vysvetlenie |
|---|---|
| **OS** | Operačný systém. Základný softvér zariadenia, ktorý riadi hardvér a umožňuje spúšťať aplikácie. |
| **Endpoint** | Koncové zariadenie používané používateľom, napríklad PC, notebook alebo Chromebook. |
| **Doména** | Logická spravovaná jednotka v sieti s centrálnymi účtami a politikami. |
| **Active Directory** | Adresárová služba Microsoftu na správu účtov, zariadení a oprávnení. |
| **OU** | Organizačná jednotka v Active Directory. Slúži na organizáciu objektov a cielenie politík. |
| **GPO** | Skupinová politika. Mechanizmus hromadných nastavení pre používateľov a počítače v doméne. |
| **RBAC** | Riadenie prístupu podľa rolí. Práva sa priraďujú rolám, nie jednotlivcom. |
| **Entra ID** | Cloudová správa identity od Microsoftu pre prístup k službám, SSO a MFA. |
| **MFA** | Viacfaktorové overovanie. Okrem hesla vyžaduje ďalší faktor. |
| **MDM** | Centrálna správa zariadení pomocou profilov a politík. |
| **Intune** | Microsoft riešenie pre správu zariadení a koncových bodov v cloude. |
| **Kiosk režim** | Režim obmedzený na jednu aplikáciu alebo úzky výber aplikácií. |
| **GDPR** | Európske pravidlá ochrany osobných údajov. V škole sú dôležité pre údaje žiakov a zamestnancov. |
| **Phishing** | Podvodná snaha vylákať heslo alebo citlivé údaje. |
| **Ransomvér** | Škodlivý program, ktorý zašifruje dáta a žiada výkupné. |
| **Záloha** | Kópia dát určená na obnovu pri strate alebo poškodení. |
| **Disaster recovery** | Plán obnovy služieb po veľkom incidente alebo havárii. |

<a href=https://cloud.milpet.eu/s/ZS9iCK6i5nJPL5d target="_blank">
    <button class="md-button md-button--primary">
    Oficiálna prezentácia [2026]
    </button>
<a>