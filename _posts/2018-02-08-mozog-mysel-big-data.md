---
title: "Mozog, myseľ, big data, EEG, exponenciálne technológie, sloboda a budúcnosť"
date: 2018-02-08 19:00
comments: true
categories: blog
tags: slovak
image: /posts/2018-02-08-mozog-mysel-big-data.jpg
---

Naozaj si trúfam napísať blog, v ktorom chcem prepojiť tieto témy? Áno a tento blog je dlhý. Takto sa mi v hlave prepojilo rozmýšľanie na zdanlivo nesúvisiace témy ako sloboda, EEG a big data. A myslím, že takýto pohľad nenájdete nikde inde.

<!--more-->

Najprv nejaké pozadie. Vo svojej prednáške na Bitcoin meetup v Piešťanoch som hovoril, že "demokracia nie je to čo bývala". V Londýne som ľuďom pustil [túto prednášku](https://youtu.be/qyl1tqnZBUc) od šéfa firmy Cambridge Analytica, ktorá pomohla Trumpovi vyhrať voľby. Naozaj odporúčam. Hovorí o tom ako sa dá používať Big data, profilovanie a cielená reklama na ovplyvňovanie ľudí.

Ovplyvňovanie ľudí nie je však len doménou politikov, [robí to aj zábavný priemysel](https://www.youtube.com/watch?v=qYTT-0A8QIE). Keď som videl meranie EEG, teploty tela a podobných ukazovateľov tela na to, aby vyladili ako ľudia reagujú na film, spomenul som si, že ten hardvér, ktorý majú [mám doma aj ja, aj keď ho používam inak](https://juraj.bednar.io/talk/2016/02/10/biohacking-neurofeedback-meditacia-eeg-a-hacking-mozgu/) - [na neurofeedback](https://github.com/jooray/OpenBCI_GUI_Neurofeedback).

O big data a ovplyvňovaní ľudí som hovoril [v tomto rozhovore](https://tyinternety.cz/technologie/se-zneuzivaji-big-data-toho-ven/). O nebezpečí sledovania a o tom, že ľudia nechápu úplne čo sa deje hovorím často. Ale poďme sa pozrieť konkrétne na to ako sa to robí, čo to znamená a ako to už u mňa býva zvykom - ako tieto technológie môžeme použiť na dobré veci.

Tak to poďme všetko prepojiť.

### Umelá inteligencia je už tu

A už nás ovláda - v mnohých oblastiach nášho života. Ale poďme sa najprv pozrieť odkiaľ berie dáta. Existujú desiatky firiem (viď prednáška od Cambridge Analytica), ktoré zbierajú naše osobné údaje - nie len demografické a hard data, ale naše správanie, na základe ktorého vytvárajú náš osobnostný profil. Nie, adblocker a anti-tracker úplne nepomôže, deje sa to viac na backende.

Európska únia nám chce pomôcť tak, že prijala reguláciu GDPR, vďaka ktorej by sme mali mať právo byť zabudnutí. Problém je však v tom, že nevieme, kto o nás zbiera údaje - a väčšinou ani nepôsobia v EÚ. Komu pošleme list, aby zabudol informácie, ktoré o nás niekto odvodzuje?

Osobne nemám rád výskumy behaviorálnych ekonómov, kde vznikajú modely typu "postavíme človeka pred jednoduché rozhodnutie, zabliká červená kontrolka a z toho odvodím, že ľudia pod stresom sa správajú takto". Pretože ľudia sú zložitejší.

Problém s big data je, že big data modely pracujú s obrovským množstvom dát a odvodzujú často z priamych informácií, nie zo zjednodušených modelov. Big data systém vie ako zareagujete v konkrétnej situácii, pretože vás do tejto situácie dostal a videl ako reagujete. S tisíckami takýchto pozorovaní dokáže urobiť to, čo žiadny behaviorálny ekonóm alebo psychológ nikdy nedokáže - modely Big data nie sú až tak zjednodušujúce.

Paul Rosenberg to vo svojej knihe [Breaking Dawn](https://www.amazon.co.uk/Breaking-Dawn-Paul-Rosenberg-ebook/dp/B01BTHF1ME/ref=sr_1_1?ie=UTF8&qid=1518087251&sr=8-1&keywords=breaking+dawn+paul+rosenberg) popísal veľmi presne a takto (preklad môj): "Big Data bol úplne nový spôsob ako robiť analytiku. Big Data nikdy nesledoval fakty. Namiesto toho skúmal tisícky paralelných tokov dát a z nich kalkuloval odvodené informácie. Bol to opak čítanie, porovnávania a vyvodzovania záverov; bolo to ako čerpať z intuície. A Big Data takmer nikdy neurobilo chybu. S dostatočným množstvom dát, z ktorých čerpá, Big Data bol boh intuície".

Poďme k umelej inteligencii. Ľudia často vnímajú počítače ako logické stroje, ktoré vyvodzujú závery z faktov, počítajú nejakým známym postupom a podobne. A keď porovnávame počítače a nás, robíme často rovnakú chybu, porovnávame rôzne vrstvy. Napríklad keď niekto povie, že "ľudský mozog je výkonnejší ako počítač", správna odpoveď je - "ako v čom". Skúste do sto milisekúnd v hlave vypočítať diferenciálnu rovnicu. Do sto milisekúnd ju ani nedostanete do vedomia. Počítač to hravo zvládne. Na druhej strane neuróny v mozgu robia obrovské množstvo "výpočtov", ale tie sú na úplne inej úrovni, nemáme k nim priamy vedomý prístup.

Umelá inteligencia (konekcionistická, čo je teraz tá kúl časť, ktorá je v exponenciálnom rozvoji) funguje v mnohom podobne ako náš mozog. Dokáže rozpoznávať vzory. Napríklad machine learning modely sú lepšie v rozpoznávaní rádiologických nálezov, prípadne identifikácií glaukómu ako ľudia. Dokážu oveľa lepšie šoférovať ako človek. **Oveľa lepšie**. Keď sa ale opýtate samoriadiaceho auta, prečo niečo urobil, nevie odpovedať. Správna odpoveď je "riadil sa intuíciou". Intuícia machine learning algoritmu môže byť takmer dokonalá, aj keď vieme, že [sa takmer vždy dá oklamať, keď chceme](https://blog.openai.com/adversarial-example-research/).

Takže: človek síce vie "logicky" uvažovať na nejakej úrovni rýchlejšie, ale machine learning je viac doménou "strojovej intuície" ako logického uvažovania.

A presne preto je lepší ako behaviorálny ekonóm - má také množstvo dát, že ekonóm na univerzite nedokáže uplatiť toľko študentov, aby stlačili tlačítko keď zasvieti červené svetielko, pretože zdroj dát pre big data je naše každodenné správanie - každý klik, každá interakcia so svetom.

Na rozdiel od behaviorálneho ekonóma ale nenapíše o svojich pozorovaniach vedeckú štúdiu, pretože netuší a ani nerieši prečo sa správame ako sa správame. Stačí, keď to vie predpovedať.

## Cielené reklamy

Ak vieme vybudovať niekoho osobnostný profil a vieme ako reaguje na podnety (napríklad keď vidím tvár politika v televízii, zvýši sa mi hladina stresu a vznikne emócia hnevu:), stačí už len jedna vec: Vytvoriť správne podnety, aby sme dosiahli reakciu, ktorú potrebujeme a zacieliť ich na tých ľudí, na ktorých bude mať reakcia želaný efekt.

A na to existuje cielená reklama. To, že ja vidím inú reklamu ako moja suseda je feature, pretože ju zaujímajú granule pre jej psa a mňa zaujíma najkvalitnejšia sauna a thajská masáž (tipy na najlepšiu saunu v Bratislave prijímam e-mailom:). Takže z istého pohľadu je to samozrejme žiadúce - je to efektívne použitie kapitálu a ja chcem, aby sa ku mne dostali produkty a služby, ktoré mi zlepšia život.

Čo ak je však klientom politická strana a reklamou príbeh, ktorý potrebujem počuť, aby som ju išiel voliť? Napríklad som ITčkar, vidím nefunkčné IT systémy a uvidím tvár šikovného podnikateľa v IT, ktorý mi sľúbi, že tento problém vyrieši. Alebo som robotník v Továrni, som unavený a niekto mi sľúbi, že zakáže nočné smeny a nedotkne sa to mojej výplaty. Je v podstate úplne jedno, aký je to príbeh, podstatné je len to, že sa dostavím k voľbám a hodím správny lístok do urny.

Cielená reklama však vytvára okolo nás umelú realitu. Vidíme to, na čo správne zareagujeme. Ľudia sa často boja virtuálnej reality, ale neuvedomujú si, že veľká časť reality je už teraz virtuálna. Na mobiloch a počítačoch trávime veľa času, vytvárame si svoje prostredie. Niekto dokonca pozerá old-school televíziu a nechápe, že to profilovanie funguje aj tam (pozrite si to video Cambridge Analytica).

Keď niekto vie akí ľudia pozerajú daný program, vedia si kúpiť správnu reklamu, so správnym príbehom. Keď firmy vedia zmerať odpoveď tela a emócie na daný program, producenti vedia naše telo predpripraviť tak, aby reklama mala dostatočný efekt.

Vyvolávanie strachu a poskytnutie riešenia môže znieť ako klišé. Keď musím ukázať vodu po holení do 100ml a vyzuť sa na letisku, už ma to ani nevzrušuje, je to proste súčasť reality. Vyvolanie strachu a poskytnutie riešenia vrámci "bezpečnostného divadla" (security theatre) je štandardná politická cesta ako získať priazeň voličov alebo zákazníkov. Uvedomujem si to v mojom podnikaní, rozmýšľam ako predávať bezpečnostné produkty bez toho, aby som každého strašil hroznými zlými hackermi.

Teraz si vezmite, že technológia na to, aby sme zistili, či nejaký podnet v určitom type ľudí vyvolá reakciu strachu a poskytnuté riešenie tento strach ukľudní [je tu, je lacná a dostupná](http://openbci.com/). 

## Paralelná Polis

Keď sa v [pražskej Paralelní Polis](https://www.paralelnipolis.cz/) [rozhodli ľudia, že si dajú implantovať NFC čip do dlane](https://www.paralelnipolis.cz/program/transhumanismus/), mal som z toho zmiešané pocity. Čipovanie ľudí, brrr, toho sa všetci bojíme. Na druhej strane sa mi páčilo, že poznám niekoľko cyborgov. Aj keď iniciátorov tejto aktivity už táto téma až tak nebaví a posunuli sa ďalej, stále je to pre mňa dôležitá téma.

NFC čip je technológia a dá sa použiť na dobré aj zlé veci. Niekto ňou otvára dvere (metaforicky aj doslova), niekto ňou chce ovládať ľudí.

Ja osobne ako úlohu Paralelnej Polis aj v Bratislave vnímam to, aby sme dokázali tieto zdanlivo nesúvisiace témy ako je súkromie, ovládanie, sloboda, slobodná vôľa a podobne uchopiť a pracovať s nimi. Politici to samozrejme neurobia, lebo netušia o čom točím. 

Je o dosť iné filozofovať o čipoch, čítaní mozgových vĺn a podobne a mať priamu osobnú skúsenosť - so všetkými týmito technológiami. Osobne si myslím, že osobná skúsenosť je dôležitá. O psychedelikách tu filozofujú ľudia, ktorí ich neskúsili, ale sú "odborníci". Bezpečnosť tu posudzujú ľudia, ktorých jediná skúsenosť s bezpečnosťou je ich osobný bodyguard. Toto sú podľa môjho názoru všetko témy, na ktoré nestačí rýchlokurz geniality zo špičkovej slovenskej univerzity.

Preto je našou úlohou v Paralelnej Polis pracovať s týmito technológiami a priniesť skúsenosť, nie teóriu do širšej spoločnosti. Veľa ľudí vníma Paralelnú Polis ako miesto, kde sa bavíme o kryptomenách. Ale tak ani pražský priestor nevznikol - kryptomeny sú len niečo, s čím sme chceli mať osobnú skúsenosť a vytvorili sme jediné miesto, kde sa táto osobná skúsenosť dala získať. Ale zároveň sa tam experimentuje s čipmi, so šifrovaním, obranou súkromia, mozgom, hackovaním tela a všetkými podobnými témami, ktoré spolu súvisia viac, ako by sme mohli čakať.

Úlohou Paralelnej Polis je skúmať technológie, snažiť sa prísť na to kam ich používanie vedie a či ich vieme využiť v náš prospech.

A myslím si, že táto úloha je v súčasnej spoločnosti tak dôležitá, že okrem založenia [bratislavskej Paralelnej Polis](https://paralelnapolis.sk/) potrebujeme takéto priestory po celom svete a preto [sme sa rozhodli tento koncept decentralizovať](https://www.e15.cz/kryptomeny/propagatori-bitcoinu-expanduji-paralelni-polis-zacne-fungovat-v-zahranici-1342148) a [open-sourcnúť](https://github.com/ParalelniPolis/ParalelniPolis-decentralized)

## Kam tieto technológie vedú?

Ak ich budú používať štáty, tak [veľmi pravdepodobne do pekla, tak ako v Číne](https://mobile.nytimes.com/2018/02/03/opinion/sunday/china-surveillance-state-uighurs.html). Veľmi rýchlo zabúdame na to, čo dokáže s technológiami urobiť čo i len trochu neslobodný štát, napríklad UK. Problém, ktorý často nevnímajú ani ľudia, ktorí toto chápu je ten, že to, že máme relatívne slobodnú spoločnosť nemusí trvať naveky. Veci nejdú len k lepšiemu. Ja sa na technológie pozerám tak, že si položím otázku - čo by s týmto urobil Kim Jong Un? A čo by som chcel aby v takom prípade mali v rukách ľudia?

Technológie ako také sú neutrálne. Zbraň môže zachrániť desiatky životov aj niekomu zničiť život. Nožík, elektrický prúd, parný stroj, ale aj šifrovanie či odpočúvanie sú len technológie a závisí od toho, na čo ich použijeme. Takže ak sa nechceme pozerať len na tú temnú stránku technológií, poďme sa pozrieť, v koho rukách na čo slúžia.

V tomto je pekný príklad napríklad krypto - v rukách centrálnych bánk sú peniaze krásny spôsob na obrovské transfery bohatstva. Ale ak majú ľudia v rukách krypto, dokážu sa voči tomuto obrániť (a samozrejme dochádza k inému typu transferu bohatstva). V rukách teroristov môže byť Bitcoin naozaj nebezpečný, aj keď možno z tých zlých use-caseov nejde ani tak o drogy (menej ako 1% celého obchodu s drogami je založeného na kryptomenách), vraždy (ešte sme nepočuli o tom, že by sa to stalo) a terorizmus, ale skôr o vydieranie (ransomware je pomerne bežný). Je to technológia, ktorá sa dá použiť na krásne veci, napríklad crowdfundovanie záchrany psíka z útulku (to som si nevymyslel, stalo sa:).

Big Data a skenovanie mozgu sa dá použiť na skvelé veci. Vďaka Big Data začíname viac rozumieť svojim génom, svojmu prostrediu, prediktívne modely na naše zdravie a odporúčania na zmeny stravovania nám umožnia žiť dlhšie a hlavne kvalitnejšie. Dokážeme produkovať nové poznatky, vytvárať, šetriť ľudskú energiu, optimalizovať a zlepšovať celý svet.

Poďme sa teraz pozrieť ako sa dajú tieto technológie použiť na obranu.

## Obranné vs. útočné zbrane

O dosť podstatnejšie ako to, aké silné zbrane má vojsko, ktoré chce dobiť územie je aký je pomer medzi útočnými a obrannými zbraňami. Často sú to podobné technológie. Ak lietadlo stojí milióny eur a strieľa rakety ale dá sa zostreliť raketou, ktorá stojí státisíce, majú obranné zbrane prevahu. Počas histórie sa tieto pomery medzi silou obranných a útočných zbraní menili.

V tejto časti by som chcel povedať o tom, ako nám dokážu exponenciálne technológie - big data, umelá inteligencia, EEG a podobne pomôcť.

A na záver sa pozrieme na dynamiku a na to, kde sa nachádzame a kam to celé smeruje. Ak ste mali doteraz depresiu a paranoju, v tejto časti vám dúfam zdvihnem náladu.

## Biofeedback

S kamarátmi sme sa kedysi rozprávali o appke, ktorá nám pripomína, že máme piť vodu. Ktosi povedal, že appka je predsa blbosť, však moje telo mi vie povedať, keď som smädný. To je pravda, ale otázka je, či počúvame. Pre niekoho môže byť práve takáto appka podstatná a užitočná.

"Počúvanie svojho tela" je veľmi dôležitý hack a paradoxne v ňom tkvie podľa mňa dosť podstatná časť tých obranných zbraní. Lenže niektorí sa to musíme najprv naučiť (ako ja) a samozrejme to aplikovať vtedy, keď treba.

### Telo vs. myseľ

Na to, aby sme počúvanie tela dokázali pochopiť musím spomenúť niečo, čomu veľa ľudí podvedome verí. Že telo a myseľ je možné oddeliť, že máme mozog, ktorý produkuje myseľ a potom máme zvyšok tela, ktorý je tu na to, aby mozog prežil. Ja osobne som takémuto niečomu dlho veril.

V prvom rade je to naša snaha "centralizovať". Nervová sústava funguje ako celok, súčasťou našej "mysle"  je napríklad aj srdce a žalúdok. Veľmi priamo, nie ezotericky. Ak chcete zistiť, či je niekto v strese, najefektívnejší priamy spôsob je merať mu variabilitu tepu srdca (Heart Rate Variability - HRV). Áno, stav mysle sa priamo prejavuje na tom ako funguje srdce. 

Ak poznáme tento údaj, vieme ho používať na vnímanie reakcií imunitného systému na jedlo, prípadne identifikovanie stresových situácií.

Emócie sa prejavujú na tele a telesné vnemy sa priamo premieňajú na emócie. Ľudia často delia myseľ na rôzne úrovne - podvedomie, nevedomie, vedomie. Alebo na "jašterí mozog", "mozog cicavcov" a "ľudský mozog". Treba si ale uvedomiť, že všetky tieto časti fungujú prepojene a sú súčasťou mysle, nedajú sa priamo oddeliť. Ak sa bojíte pavúkov, informácia o tom, že ten 20cm pavúk pred vami nie je jedovatý vám veľmi nepomôže. "Jašterí mozog" vyhráva. Na druhej strane sa všetky tieto časti dopĺňajú. A samozrejme mozog sa snaží energiu páliť čo najoptimálnejšie, ak si umývame zuby, nepremýšľame nad tým vedome, pretože by nás to stálo zbytočne veľa energie.

### Biofeedback na HRV

Biofeedback je technológia, kde vezmeme merania, napríklad spomínané HRV a premeníme ho na okamžitú informáciu, ktorú dokážeme vnímať. HRV priamo nevnímame a tak nám môže pomôcť, keď hodnotu vidíme. Ak chceme, aby tomu rozumeli všetky časti nášho mozgu, lepšia ako číselná hodnota je "červená" alebo "zelená" gulička.

Pomocou tejto technológie dokážeme "vnímať stres" a učiť telo reagovať na naň. Je to doslova aplikovanie rady "počúvajte svoje srdce".

Prečo to funguje? Je to vytvorenie nového informačného prepojenia - hodnota, ktorú je ťažké vnímať sa nám premení na informáciu, ktorej rozumie väčšia časť našej mysle.

Ak sa chcete naučiť žonglovať, najťažšie to bude so zavretými očami. Aj keď viete, čo robíte - ako hýbete rukami - a dokážete predpokladať ako lietajú loptičky, s otvorenými očami to ide ešte jednoduchšie - najlepšie pred zrkadlom. Zrakové informácie ktoré vnímate nestíhate spracúvať vedome, taký rýchly mozog nie je - a ak by ste to dokázali, boli by ste po takomto výkone veľmi unavení.

Vizuálna spätná väzba umožňuje okamžitú korekciu, ktorá prebieha priamo v tele. Vidím, že loptička ide trochu viac doľava ako som si myslel, tak pohnem rukou doľava. Na to nemusím rozmýšľať, práve naopak, musím to naučiť svalovú pamäť. Je to tréning, ktorý zahŕňa oveľa väčšiu časť našej mysle a tela ako tú, o ktorej si myslíme, že tvorí naše ja.

### Neurofeedback

Na videu s EEG sme videli použitie EEG helmy na to, aby producenti filmov a reklám videli reakcie a mohli svoj produkt vyladiť tak, aby vyvolával tie správne emócie. EEG vníma slabé elektrické signály na lebke a dá sa jednoduchým a dostupným spôsobom odmerať. Vytvorenie korelácií rôznych typov mozgových vĺn s jednotlivými emóciami je úloha pre machine learning. Merania mozgových vĺn dokážeme premeniť na okamžitú informáciu o emóciách. Aj toto je jedna z techník ako zistiť, čo na ľudí najviac funguje. O tom, či táto technológia je dobrá alebo zlá môžeme polemizovať, ale faktom je, že existuje a určite sa bude používať - a my nad tým nemáme žiadnu kontrolu.

Tak si nasaďme helmy a poďme sa spoznať a zlepšiť. Chceme podporiť svoju kreativitu, čiastočne inteligenciu alebo zlepšiť pozornosť? Odmerajme si mozgové vlny a premeňme ich na spätnú väzbu - obraz alebo zvuk, jednoduchý. A potom bude tréning mozgu niečo ako žonglovanie s otvorenými očami. Mozog nemá priamo informácie o tom v akom stave sa nachádza, v mozgu nemáme dokonca ani receptory na bolesť.

Toto všetko môžeme použiť na to, aby sme sa lepšie spoznali: EEG môže fungovať aj ako detektor lží - ak si celý život niečo nahovárame, ale naša myseľ tomu neverí, je to jedna z ciest ako to odhaliť. A môžeme to použiť na to, aby sme sa zlepšili, napríklad v pozornosti. Ja som si na to [naprogramoval jednoduchý alfa-neurofeedback softvér, ktorý premieňa amplitúdu alfa-vĺn na rôzne silný zvukový signál](https://github.com/jooray/OpenBCI_GUI_Neurofeedback).

Platí to isté čo pri HRV biofeedbacku - mozog dokáže pochopiť takto vytvorený signál, netreba robiť nič "vedome", aj keď vedomé vnímanie signálu môže samozrejme pomôcť. Dokážeme lepšie prepojiť (zintegrovať) našu hlavu a tak byť pozornejší a viac spokojní sami so sebou.

## Ako to všetko spolu súvisí?

Vnímanie a chápanie svojho tela a svojich pocitov, motivácií, aktuálneho stavu tela a vnímanie ako vznikajú rozhodnutia asi neberieme ako súčasť cesty za slobodou. Je to skôr niečo, o čom rozprávajú ľudia, ktorí sa venujú *mindfulness meditácii*. Ale ak si uvedomíme, tak práve mindfulness (vedomé prežívanie) je jedným z nástrojov, pomocou ktorého si môžeme uvedomiť to ovplyvňovanie.

Ak niekto zneužíva to, že keď sa naštveme, zjeme veľa sladkého takým spôsobom, že má v reštaurácii na stole obrovské dezertné menu a pustenú telku s tvárou nejakého veľmi neobľúbeného politika, môže to fungovať. Až kým neprekukneme, čo sa deje. Netreba k tomu samozrejme konšpiračnú teóriu, možno to robia nevedome, ale ten koláč si aj tak nedám.

Problém s týmto prístupom je len ten, že na takúto logickú úvahu treba energiu. Ak je 8 hodín večer a mám za sebou tri prezentácie, jeden board míting a chápavý rozhovor s niekým kto sa ma pýta moju obľúbenú otázku "keby nebolo štátu, kto by staval cesty?", to posledné čo môj mozog chce robiť je filozofovať o prepojení sachardiovej bomby z dezertného lístka a tváre Donalda Trumpa. Predtým než zavolám čašníčku si ale spomeniem, že pri takýchto rozhodnutiach sa mám zastaviť a objednať si mätový čaj bez cukru. Je to návyk, nestojí ma to už žiadnu energiu, je to tak prirodzené ako umývanie si zubov.

A práve tu nám tieto technológie dokážu pomôcť - identifikovať a zviditeľniť naše nevedomé procesy (napríklad stravovacie rozhodnutia), natrénovať našu myseľ tak, aby sa správala tak ako chceme a chápať viac ako funguje náš mozog. Samozrejme, môžeme si čítať knižky, ale mám pocit, že aj počúvanie pískania našich alfa vĺn je cesta, podobne zaujímavá ako mindfulness meditácia, čo je iba staršia technológia, za to veľmi dobre zdokumentovaná a extrémne lacná. Nie je podstatné, čo sa pomocou tohto prístupu vedome naučíme - verte mi, ak by som sa mohol naučiť všetko, čo ma naučí meditácia jednoduchým prečítaním si knižky, už by som ju čítal piatykrát namiesto sedenia na zadku a pozorovanie svojho mozgu.

To, čo sa naučíme nie sú poznatky, ktoré sa dajú odovzdať, ale práve skúsenosť s tým ako fungujeme. Ako vznikajú tie zbrklé rozhodnutia, čo nás dokáže ovplyvniť. Ktorý človek v nás vyvoláva aké emócie.

Dôležité je rozvíjať aj kritické myslenie, ale keď to zažijete, uvedomíte si koľko rozhodnutí robíme (ne/pod)vedome. 

A pri tomto objavovaní nám môže pomôcť aj umelá inteligencia, big data, "odpočúvacie senzory", dokonca "nudging" známy z reklamného priemyslu. Technológie, ktoré v zlých rukách môžu byť najhoršími útočnými zbraňami nás môžu vďaka svojej dostupnosti od tých istých hrozieb zachrániť.

## Záver

S technológiami je najlepšie vybudovať si osobnú skúsenosť. Hľadajme, v čom nás ohrozujú a v čom nám pomáhajú. Snažme sa zabezpečiť, aby naša obrana bola "lacnejšia" a efektívnejšia ako útok na nás. Vnímajme, čo sa okolo nás deje. Buďme si vedomí toho, ako nás okolie chce ovplyvniť, čo sa okolo nás deje. Prepojme svoju hlavu a svoje časti mozgu, vnímajme sa. Takto zabezpečíme, že sa technológie neobrátia proti nám. 

A najdôležitejšie - robme to spolu, [v Paralelnej
Polis](https://paralelnapolis.sk/).