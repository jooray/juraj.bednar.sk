---
title: "Transfery rizika a blockchainoví konzultanti"
date: 2018-03-07 19:00
comments: true
categories: blog
tags:
 - cryptocurrency
 - slovak
image: /posts/2018-03-07-transfery-rizika-a-blockchainovi-konzultanti.jpg
---

Možno vás prekvapím, ale už dávnejšie som prišiel na to, že nemám rád blockchain. A to aj napriek tomu, že si myslím, že vynájdenie blockchainu spolu s proof of work na dosiahnutie konsenzu je tak podstatná inovácia, že mení svet a bude mať podľa mňa podobný dopad ako vynájdenie a rozšírenie Internetu. Prečo?

<!--more-->

## Nie je blockchain ako blockchain

Prvýkrát som si rozdiel medzi blockchainmi uvedomil keď "konzultant" (=predajca) z IBM na jednej prednáške začal ukazovať privátne použitie blockchainu - use-case v rámci firmy na spracovanie objednávok. Moja prednáška na rovnakej akcii bola na tému zbytočnosti privátnych blockchainov (a efektívnosti existujúcich riešení, ktoré sú vyladené časom). IBM blockchain používal v rámci spoločnosti, na niekoľkých "nodoch" (serveroch) v centralizovanej architektúre jednoduchého väčšinového konsenzu. V praxi sa jednalo o pomalú (kvôli čakaniu na bloky), distribuovanú databázu, ktorej neustále rástli nároky na miesto (keďže do blockchainu sa dá iba pridávať). Neškálovateľný shit, s ktorým nefungujú žiadne existujúce nástroje, s ktorými fungujú databázy.

Prednášajúci rozprával aké bolo skvelé, že sa použil blockchain, lebo v tradičnej databáze by im takýto projekt trval oveľa dlhšie. Môj predpoklad prečo to tak je - IBM má toľko interných pravidiel ako sa robia klasické databázové systémy, že ich splnenie by trvalo príliš dlho, ak by to vôbec umožnilo úspešné dokončenie projektu. Pri veľkých systémoch, ktoré fungujú, je okrem toho základné pravidlo - nechytať sa toho, čo funguje a preto vykopírovanie časti dát na blockchain a práca s nimi mimo hlavnú databázu dáva zmysel. Interní ľudia v IBM, ktorí vedia robiť databázové systémy sú drahí a predpokladám, že firme sa oplatí viac, keď konzultujú za čo najvyššiu cenu manday rate u zákazníka, ako keby robili interný systém na evidenciu objednávok. IBM by to predpokladám v prípade, keby použila "tradičné technológie", postavila na svojom middleware, svojej databáze (aj keď samozrejme vedia používať open-source, je lepšie, keď na internom systéme svieti logo firmy na každom kroku), čo opticky nafúkne internú cenu.

Na druhej strane je tu nová technológia, na ktorej robili interní ľudia, zároveň sa o nej robia konferencie a je kúl. Volá sa blockchain. V tomto prípade interne vyvinutý privátny blockchain (Hyperledger). Zákazníci ju (zatiaľ) nechcú používať, lebo ju ešte okrem vývojárov na testovacej sieti nikto nepoužil. Projekt je open-source, takže interné náklady na licencie, akokoľvek fiktívne a papierové sú nízke - do supernízkej ceny trojmesačného projektu neboli započítaní ani vývojári projektu, ani čas programátorov, ktorí sa túto technológiu museli naučiť na to, aby vôbec mohli daný systém vytvoriť.

Prečo je teda blockchain na takýto projekt super efektívny? Pretože ho ešte kódili ľudia, ktorí danú technológiu vyvinuli (predpokladám, že ak niečo nefungovalo, tak to sami opravili v "upstream" projekte Hyperledger), pretože sa neutopili pod váhou vlastných procesov a cieľom bolo vyprodukovať príbeh o úspešnom nasadení blockchainu.

Nie, spracovanie objednávok a faktúr v rámci firmy naozaj nie je technicky efektívnejšie robiť na blockchaine. A už vôbec nie prevádzkovať.

## Kryptomeny sú revolúcia

Schválne nepíšem evolúcia, ale revolúcia. Kryptomeny nie sú "lepší fiat", je to niečo úplne nové a naozaj verím, že to zmení svet. Dôležité koncepty okrem decentralizácie sú "trustless" a "permissionless" fungovanie. Trustless znamená, že nemusím nikomu extra veriť na to, aby som mohol túto inováciu používať. A permissionless znamená, že sa do siete môžem pripojiť bez toho, aby mi to niekto musel dovoliť - stačí, keď dodržím protokol.

To, že kryptomeny technologicky používajú blockchain na to, aby dosiahli niečo, čo doteraz nebolo možné je inovácia. Evidenciu objednávok a úhrad bolo možné postaviť na centralizovanej databáze, Bitcoin nie.

Bitcoin a ostatné kryptomeny vytvorili decentralizované, necenzúrovateľné, poctivé peniaze, ktoré sa stali súčasťou protokolových vrstiev Internetu. Nie je to API na PayPal, je to systém prenášania hodnoty, ktorý je na rovnakej úrovni ako doménový systém Internetu alebo protokol HTTP.

Prečo to nie je len "lepší fiat"? Dôvodov je viac - okrem necenzúrovateľnosti, súkromia, decentralizácie to má niekoľko zásadných výhod, ktoré doteraz neboli možné. Skúšame nové spôsoby financovania projektov cez ICO - k ICO a skin in the game ešte nižšie. Pre mňa najzaujímavejšia vlastnosť je možnosť urobiť fork. Čo to v praxi znamená? Ak som nespokojný s politikou európskej centrálnej banky a som proti záchrane bánk tlačením peňazí, môžem svoj nesúhlas prejaviť jedine tým, že o tom napíšem článok (s nulovým efektom) alebo ideálne tak, že niečo urobím (napríklad prejdem na inú menu, aspoň čo sa týka úspor). Dôležité je to, čo urobím, nie to, čo hovorím a krypto mi umožní urobiť jednu vec navyše. Ak by som nesúhlasil s tým, že Bitcoin má obmedzenie na veľkosť bloku 1MB, môžem sa rozhodnúť urobiť "hard fork" a vytvoriť nový Bitcoin (toto sa stalo - táto alternatívna verzia sa volá Bitcoin Cash). Ja osobne preferujem starý Bitcoin, ale na rozdiel od eura sa stalo kvalitatívne niečo iné. Každý, kto mal Bitcoin mal zrazu aj Bitcoin cash a mohol na trhu - tým, čo robí, nie tým, čo hovorí - signalizovať svoju preferenciu. Boli ľudia, ktorí si nechali Bitcoin aj Bitcoin cash (prevažne preto, že ani nepochopili, čo je to fork - bola to príliš nová vec). Boli ľudia, ktorí predali Bitcoin cash a kúpili si viac Bitcoinov. A boli ľudia, ktorí urobili opak - Bitcoin s obmedzenou veľkosťou bloku na 1MB predali za Bitcoin cash, ktorý mal toto obmedzenie vyššie. Všetci mali celý čas skin in the game - ak sa nevedia rozhodnúť, nechajú si obe. Ak majú nejakú preferenciu, niečo si vyberú a to zároveň signalizuje trhovými cenami čo ľudia preferujú (ľudia si tak cca na 90% vybrali Bitcoin, ale 10% kapitálu ktorý má iný názor funguje paralelne a je spokojný so svojou voľbou). Pri eure sa takéto rozhodnutie urobiť nedá, máme paralelne len jednu možnosť, tú, o ktorej rozhodli úradníci v EÚ a ECB.

Toto je podľa mňa ultimátna decentralizácia a decentralizácia má inherentnú "skin in the game". Ak máme viacero paralelných možností a je reálna možnosť, že niektorá z nich umrie a nebude úspešná, celý systém sa zlepšuje. Každá chyba v systéme eliminuje "nesprávne" riešenia a teda ostávajú stále lepšie. Vďaka tomuto efektu sme tu - evolúcia je presne tento model. Ak úradník v ECB rozhodne zle, príde kríza alebo hyperinflácia a ľudia začnú znova motyky používať namiesto okopávania záhradky na sebaobranu alebo útok. 

## Prečo nemám rád "blockchain"?

Pretože sa začali objavovať "blockchain konzultanti". Ich úlohou je predať vám svoj drahý čas (ponuka je malá, je to nová technológia, ktorej málokto rozumie), s nulovým skin in the game. Za vetu "prosím na tento projekt použite MySQL alebo MongoDB a nestrácajte čas blockchainom" vám nemôžu vyfaktúrovať človekomesiace konzultácií.

Blockchainového konzultanta - ak ide s dobou a nepoužíva vizitky - spoznáte podľa toho, že hovorí o tom ako blockchain garantuje bezpečnosť dát bez toho, aby chápal, čo blockchain vlastne zabezpečuje. Chce dávať na blockchain zdravotné dáta, kataster a s jeho pomocou zlepšiť štátnu správu (je veľmi pravdepodobné, že odovzdaný report nebude v štátnej správe nikto čítať a úradník zaplatí faktúru a report odloží do šuflíka, len preto, aby celá hierarchia riadenia úradu mohla povedať, že ide s dobou a rozmýšľa o blockchaine).

Blockchainový konzultant nemá rád kryptomeny, lebo nevie, kto by staval cesty, keby ich ľudia začali používať namiesto štátnych peňazí. Blockchainový konzultant by rád pomohol úradníkom napísať regulácie, aby sme všetci vedeli, ako tento skvelý databázový softvér môžeme používať. Blockchainový konzultant nechápe rozdiel medzi multisigom (viacero ľudí musí podpísať "transakciu") a šifrovaním.

Blockchainovému konzultantovi viac záleží na jeho reputácii (čo si o ňom myslia iní) ako na tom, akú hodnotu má jeho krypto portfólio.

Ak vám niekto ponúka blockchain bez toho, aby absolútne neodlúčiteľná časť projektu boli kryptomeny, utekajte a hlavne im nedajte žiadne peniaze. Je to IT ekvivalent multi-levelového predajcu tabliet do umývačky riadu. 

Blockchainový konzultant dostane zaplatené bez ohľadu na to, či to, čo tvrdí dáva zmysel. Ak ale používate kryptomeny, stačí sa pozrieť na výsledovku. Koľko percent obratu ide cez krypto? Máte percentá z transakcií? Získali ste nový network? Ak používate kryptomeny v biznis modeli, využívate volatilitu vo svoj prospech? Koľko ste zarobili prvý štvrťrok, koľko o rok, koľko o 5 rokov?

Objednávkový systém na blockchaine vám pomôže odhaliť guľu na nohe, ktorú ste si na ňu sami nainštalovali. Ak vám blockchain pomáha v takejto situácii: Ak ste majiteľ firmy, zamyslite sa nad tým, ako firma funguje. Ak ste zamestnanec, strácate čas s nezmyslami - kryptomeny sú skutočná revolúcia a ak vás blockchain baví, nestrácajte čas robením databázových systémov. Nestrácajte čas na členstvo v klube fanúšikov databázového systému, o 5 rokov bude kúl niečo iné, kedysi boli kúl: Turbo Pascal, SOA, Nokia telefóny, CGI skripty, SIM toolkit "aplikácie", Java Applety, mikroslužby a Ruby. A samozrejme "cloud" - niektorí starší blockchain konzultanti sú zároveň bývalí cloud experti. Všetci vedeli, že budúcnosť je cloud, akurát nevedeli prečo. Cloud samozrejme teraz používame všetci, akurát to nie je remote desktop pripojenie na počítač a používame ho tam, kde dáva zmysel.

Teraz je teda kúl blockchain, chatboty a machine learning. Zajtra to bude niečo iné. Čo s nami ostane je Internet a kryptomeny (a machine learning). Vzhľadom na to, že sú to exponenciálne technológie, tak je veľmi tažké predpovedať, v akej podobe, obzvlášť u machine learningu a kryptomien.

Ak pracujete na tom, že pomáhate firmám obchádzať ich vlastné interné procesy, aby boli efektívnejší alebo sa tvárite, že blockchain je efektívna databáza (nie je), mám pre vás nevyžiadanú radu: To, prečo je blockchain super je to, že na ňom sú postavené kryptomeny. Ak blockchainová aplikácia nepotrebuje decentralizované kryptomeny, veľmi pravdepodobne nemá byť blockchainová.

## Skin in the game (ísť s kožou na trh)

Kryptomeny umožňujú pridať skin in the game a odlíšiť blockchainového konzultanta od človeka, ktorý robí s kryptomenami. Ak niekto vytvorí nové použitie kryptomeny, pomôže rozšíriť network a vybuduje napríklad užitočný produkt alebo službu na kryptomenách, zvyšuje hodnotu danej kryptomeny (okrem toho, že jeho služba pravdepodobne zarába na nejakom inom biznis modeli).

Blockchainový konzultant má veľmi malú skin in the game - výsledky jeho práce sa stratia v obrovskej výsledovke firmy, jeho report skončí v šuflíku a bude spomenutý vo výročnej správe (hneď vedľa ekologického programu na recykláciu papiera - namiesto toho, aby sa elektronické dokumenty nezálohovali na neefektívny celulózový nosič). Jeho report si pravdepodobne nikto neprečíta.

Ja osobne tiež firmám radím čo robiť - primárne s kryptomenami. Zameriavam sa na služby, ktoré neboli doteraz možné (na rozdiel od presúvania dát z relačnej databázy do blockchainu). A ideálne na také, ktoré firmám prinášajú percentá z kryptomenových transakcií, nie nejaký abstraktný benefit. Ale moja najväčšia skin in the game je v tom, že ak sa klient rozhodne niečo z toho implementovať, tak okrem toho, že mu s tým rád pomôžem (a nechám si za to zaplatiť), zvyšuje to hodnotu mojich krypto tokenov (ktorých mám žiaľ v rámci mojich obmedzených možností stále primálo). A zároveň buduje aplikácie na novom základnom internetovom protokole, ktorý neprenáša informácie, ale umožňuje obchod (výmenu tovarov a služieb). Web má dosť nízku hodnotu, ak je na webe len jedna stránka. Ak je na webe každý - od vodárenskej spoločnosti cez banku až po klub chovateľov pudlov, je hodnota webu vyššia. Akurát vo webe nemôžem mať podiel - v kryptomene podiel môžem mať.

V rámci hesla "nehovorte, čo si myslíte, ale ukážte mi, čo máte v portfóliu" - hesla, ktorého sa desí každý novinár, ktorý sa živí predpovedaním budúcnosti - je toto skin in the game. Vždy keď novinár alebo ekonóm alebo blockchainový konzultant tvrdí, že Bitcoin je bublina, opýtam sa ho, či má otvorenú short pozíciu. Ak nerozumie, ako sa otvára short pozícia, ponúknem stávku - čo bude mať o dostatočne dlhý čas (vybraný protistranou) vyššiu hodnotu - Bitcoiny v hodnote 100 euro alebo 100 euro. Zatiaľ sa nikto z nich nechcel staviť. 

Z pohľadu skin in the game sú oveľa cennejší špekulanti ako analytici a novinári, čo sa týka predpovedania osudu technológií. Novinár je platený od normostrany, analytik robí promo svojej značky, špekulant pri nesprávnej predpovedi skrachuje.

Pri skin in the game majú kryptomeny aj čiastočne negatívny efekt a ten sa týka konkrétne ICO. Teda, negatívny ako negatívny - ak ľudia nevedia, čo sa deje. Zažil som zaujímavý rozhovor s mojimi partnermi v Hacktrophy. Bavili sme sa o technologických inováciách a jeden z nich povedal, že niečo už existuje - videl to na Kickstarteri. Druhý povedal, že to, že niečo na Kickstarteri neznamená, že to existuje. Existuje iba transfer rizika s vidinou nižšej ceny. Za normálnych okolností riskuje podnikateľ (alebo ešte lepšie kapitalista) - investuje svoje úspory do toho, že vyrobí produkt, o ktorom verí, že si ho ľudia kúpia. Pri crowdfundingu nových produktov sa deje presný opak - klienti riskujú svoje úspory s tým, že stavia na to, že podnikateľ dodá produkt, ktorý chcú (a za riziko majú nižšiu cenu - alebo vyššiu pravdepodobnosť, že sa to podarí, pretože bez tohto transferu rizika by možno produkt nevznikol). Pri crowdfundingu je teda kapitalista ten, čo prispeje peniaze (a ten zároveň znáša aj riziko) a podnikateľ len dodáva objednaný produkt - je to remeselník, nie niekto, kto riskuje.

Presne toto isté sa deje aj pri predaji tokenov (cez ICO). Niekto má nápad a predáva podiel v ešte neexistujúcej novej krypto sieti. Ľudia to podporia - buď preto, že chcú, aby daný produkt vznikol alebo ako špekuláciu, predpokladajú, že ak vývojársky tím začne nejaké časti dodávať, riziko klesá a hodnota nového krypto produktu stúpa a teda v prostredí s nižším rizikom token predajú za vyššiu hodnotu ako ho kúpili. ICO nie je až tak "investovanie do nových produktov" ako investovanie do rizika s možným (ale neistým) výnosom. Podstatné je, že pri takomto transferi rizika sú kapitalisti (podnikatelia?) tí, ktorí tieto tokeny majú a držia ich, nie tí, ktorí daný produkt robia. Tvorcovia projektu dostanú krypto tokeny - bitcoin, ether, ...  - ktoré už majú hodnotu s nižším rizikom. V prípade zlyhania projektu majú autori produktu alebo služby stále čo jesť a stále môžu míňať peniaze, akurát tokeny - ktoré držia investori - budú mať nízku hodnotu.

ICO je už do veľkej miery implementované "DAO" (decentralizovaná autonómna organizácia), pretože kapitál a vývojový tím sú do veľkej miery oddelené entity. Akurát kapitalisti majú riziko, ale ešte by mohli mať aj väčšiu kontrolu.

Som veľmi rád, že tu takáto možnosť je, že je možné financovať internetové protokoly, decentralizované služby a podobne cez predaj rizika koncovým užívateľom s vidinou zisku. Len je potrebné si uvedomiť, kto je v tomto prípade kapitalista (ten čo je vystavený riziku).

Blockchainový konzultant ani autor bežného ICO (predávajúci nové tokeny reprezentujúce riziko za Bitcoin alebo Ether) nie je podnikateľ. Väčšina z nich nevytvorí veľkú hodnotu. Aj napriek tomu som rád, že majú slobodu to robiť. Nekritizujem ich za to, že to robia, kapitál si nájde cestičky na pokrytie dier na trhu. Píšem to len preto, aby bolo jasné, kto má v ktorom prípade "skin in the game". A zároveň chápem, že nemať skin in the game a transferovať ho na druhých je úplne ľudské a pochopiteľné. Aj napriek tomu je dobré pozrieť sa na druhú stranu (ak s mojou kožou ide na trh niekto iný) a zároveň na systemické efekty - decentralizované prostredie sa bez skin in the game nedokáže zlepšovať. Každopádne ak ste sa našli v tomto texte (napr. ako blockchainový konzultant) a práca vás baví, neznamená to, že vás prestanem mať rád. Nemoralizujem, každý svoje šťastie a naplnenie v živote hľadá inak.

Ale... zabudnime na "blockchain" (obzvlášť privátny blockchain), venujme sa kryptomenám.

P.S.: [Skin in the game je nová knižka Nassima Nicholasa Taleba](https://www.amazon.co.uk/Skin-Game-Hidden-Asymmetries-Daily/dp/0241247470/ref=sr_1_1?ie=UTF8&qid=1520445923&sr=8-1&keywords=skin+in+the+game+nassim+taleb). Nevenuje sa blockchainu, ale odporúčam prečítať si ju.