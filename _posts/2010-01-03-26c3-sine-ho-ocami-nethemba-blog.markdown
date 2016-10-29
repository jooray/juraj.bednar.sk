---
title: "26c3 Sine-ho očami - Nethemba blog"
date: 2010-01-03 15:16
comments: true
external-url:
categories:
---
Koncom minulého roka sa konal v Berlíne 26. ročník konferencie CCC (Chaos Communication Congress) s názvom "Here is Dragons".  
  
Prednášky sa opäť týkali primárne počítačovej bezpečnosti, technológií GSM, VoIP, RFID, reverzného inžinerstva rôznych kryptografických funkcií a čipov. Niektoré z nich však mali aj veľmi odlišnú tematiku ako záhady stratených kozmonautov alebo prednáška s názvom "Hacking the Universe" o teórii strún.  
  
HaeB je jedným z troch ľudí, ktorý má na starosti udržiavanie kontroly a poriadku nemeckej wikipédie od roku 2006. Keďže wikipédia je otvorený systém a umožňuje prispievať dokonca aj bez registrácie, vyžaduje si vymyslieť účinný spôsob ochrany napríklad pred internetovým vandalizmom alebo dodržiavaním copyrightu. HaeB vo svojej prednáške uviedol, ako podobné incidenty detekovať a možnosti ich predchádzania (viazanie identity používateľa pomocou príspevkov a jeho hodnotenie). Prednáška bola zameraná na "sockpuppets", ľudí s viacerými používateľskými kontami a spôsobom ich odhalenia.  
  
Fyzik Lorenz z Helsínk uviedol filozoficky ladenú prednášku o autonómnych inteligentných robotoch a smere ich vývoja, možnosti ich kontroly a zamýšľal sa, aký by bol svet bez toho, aby sme museli fyzicky pracovať.  
  
Philippe Oechslin prednášal o hľadaní kritických zraniteľností pomocou reverzného inžinierstva niektorých komerčných produktov, ktoré používali potenciálne bezpečné šifrovacie funkcie. Poukazoval na implementačné chyby, ktoré sa dali v niektorých prípadoch veľmi jednoduchým spôsobom zneužiť. Jednalo sa napríklad o funkciu zapamätania si posledných predošlých hesiel, ktorá zabezpečovala, že sa nebude nové zvolené heslo opakovať, prípadne výmenu čísiel blokov, ktoré sa mali dešifrovať a s tým spojené možnosti používať iný kľúč.  
  
Opäť nechýbala prednáška o anonymizéri Tor. Líder projektu Roger Dingledine uviedol niekoľko nových zaujímavostí, okrem popisu a návrhu samotnej infraštruktúry sa zmienil o korelácii udalostí s počtom pripojených používateľov tor-u, potenciálne útoky a ich blokovanie, prípadne situáciu v Číne.  
  
Dvojica Qin Liu a Sebastien Sauge predstavili prvú experimentalnu implementáciu kvantového šifrovania spolu s praktickou ukážkou.  
  
Za najlepšiu prednášku minimálne v prvý deň považujem "cat /proc/sys/net/ipv4/fuckups" od Fabian Yamaguchi, rozdelenú na tri súvislé časti. Najprv predviedol, ako sa jednoducho dokáže útočník infiltrovať do siete napríklad cez instant messengere a bezpečnostné chyby v rôznych klientoch (Adium, Pidgin, Microsoft Messenger). Pokračoval chybami v implementácii sieťových ovladačov v linuxe, ktoré umožnili obísť firewall a ukončil technikou útoku "cache poisoning" squid-u.  
  
Zaujímavá bola prednáška študenta Mike Brennan z Filadelfie o stylometrii - rozpoznávanie autorstva na základe lingvistiky. Dobré výsledky v tejto oblasti by dokázali usvedčiť ľudí, ktorí publikujú anonymne na základe porovnaní s ich predošlými textmi. Na klasifikáciu sa používajú neurónové siete, niektoré signifikantné znaky, napríklad bodky za medzerou, alebo analýza pomocou slovníka synoným. Každopádne táto technika rozpoznávania sa nakoniec ukázala byť veľmi neúčinná v prípade útoku "imitáciou", pri ktorom sa útočník snaží písať ako nejaká iná konkrétna osoba.  
  
Sai Emrys mal veľmi živú prednášku o tvorbe jazykov. Bola spojená s workshopom, ľudia mali možnosť hlasovať za jednotlivé fonémy a písmená, tvorbu fonologických pravidiel a na ich základe definovať jazyk, v ktorom Sai s pomocou poslucháčov vytvoril niekoľko základnych slov alebo viet.  
  
Felix "FX" Lindner mal rozsiahlu prednášku o RICH (Rich internet applications) so zameraním na technológiu FLASH (AVM1, AVM2) o histórii, útokoch, malware a možnosti zabezpečenia. Mimo toho prezentoval svoj open source projekt s názvom Blitzableiter na analýzu a prevenciu bezpečnostných dier v Adobe Flash. Linder spravil veľký počet testov s Blitzableiter, vyskúšal najznámejšie exploity a žiaden z nich neprešiel aplikáciou, ktorú tool pokladal za bezpečnú. Zatiaľ však môze nastať problém s funkcionalitou FLASH aplikácií, malé percento testovaných stránok neprešlo ladiacimi procedúrami. Projekt Blitzableiter vyzerá veľmi sľubne na to, aby mal za následok vznik bezpečnejšieho kódu.  
  
Philippe Langloias, zakladateľ spoločnosti P1 security predstavil možnosť útoku na sadu signalizačných protokolov SS7 a SIGTRAN (SS7 cez IP). Obdobne ako v osemdesiatych rokoch sada protokolov TCP/IP, SS7 obsahuje množstvo zraniteľností na rôznych vrstvách, ktoré sa dajú jednoducho zneužiť a útoky zautomatizovať.  
  
Ďalšia netechnická prednáška s názvom "The Lost Cosmonauts" od Brian Dunninga predniesla problém stratených Sovietskych kozmonautov, ktorí sa podľa všetkého stratili vo vesmíre a boli vymazaní z histórie. Brian sa snažil analyzovať nahrávku mŕtvej kozmonautky a aplikovať "kritické myslenie" na zistenie jej skutočného zdroja.  
  
S dostupnosťou open-source implementácií GSM protokolov ako OpenBSC sa celá GSM technológia stáva pre hackerov čoraz dostupnejšia. Harald Welte spomenul možnosti, ako operovať vlastnú GSM sieť pomocou open source riešení.  
  
Adam Young nás oboznámil s výsledkami výskumu kryptovirológie a kleptografie - štúdiu použitia šifrovania v malware.  
  
L. Aaron Kaplan v ďaľšej prednáške opísal slabosti a trendy pre aktuálne trackovacie metódy a spôsoby triangulácie. Dôležitý bod predstavuje firma Skyhook Wireless, ktorá na lokalizáciu pre rôzne produkty (iPhone, Mac OS X, G1Android) používa niekoľko nezávislých technológií (SSID databázy, GPS signály, celulárne siete). Kaplan rozviedol potenciálne útoky a spôsoby ochrany pred hroziacou stratou nášho súkromia.  
  
Prednáška od teoretického fyzika Robert Hellinga s názvom "Hacking the universe" o teórii strún pre mňa patrila k najočakávanejším v posledný deň konferencie, no prišla mi príliš elementárna. Teória strún predstavuje fyzikálny smer pre vytvorenie takzvanej "teórie všetkého", Helling okrem toho uviedol pár slov o čiernych dierach, LHC, kozmológii a snažil sa osvetliť, čo sa stalo pri Veľkom tresku.  
  
Okrem prednášok sa konali na konferencii aj workshopy (jeden z najžiadanejších mal byť o crackovaní A5/1 pre GSM, no bol zrušený - bližšie informácie na <http://tinyurl.com/yl4b6fx> a <http://tinyurl.com/ykdfcn6>) a súťaže. Nechýbal ani LEGO SUMO Contest, kde si ľudia postavili vlastných robotov z lega a tí sa snažili toho druhého vytlačit zo stola.  
                                                                                                                                   
V porovnaní s minulým rokom, 26ty ročník CCC nepriniesol možno toľko šokujúcich udalostí ako naposledy, stále však patrí k tomu najlepšiemu z europských konferencií týkajucich sa počítačovej bezpečnosti.

<https://www.nethemba.com/blog/-/blogs/26c3>
