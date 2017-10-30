---
title: "Hacknite môj web"
date: 2017-10-30 11:00
comments: true
categories: blog
tags: slovak
image: /posts/2017-10-30-hacknite-mi-web.jpg
---

Niektorí ste zaregistrovali to, že mám firmu
[Hacktrophy](http://www.hacktrophy.com/), ktorá vypláca odmeny
za nájdenie bezpečnostných zraniteľností na weboch. Klientami sú firmy,
ktorým záleží na bezpečnosti svojich webových aplikácií.

Teraz vypisujem odmenu za hacknutie môjho webu. A podelím sa s vami o
"ekonomické rozmýšľanie" ohľadom toho, prečo je tento program pre úplnú
väčšinu webov - vrátane osobného blogu, z ktorého mi neplynú žiadne
priame príjmy.

<!--more-->

Najprv stručné vysvetlenie ako program funguje. Hacktrophy spája
prevádzkovateľov webových aplikácií a šikovných etických hackerov, ktorí
vedia nájsť bezpečnostné zraniteľnosti. Firmy vypíšu odmenu za nájdenie
zraniteľnosti (odmeny majú v skutočnosti rôznu výšku podľa typu
zraniteľnosti a sumu si určuje firma - čo je v tomto úplne kľúčové).

Hackeri zraniteľnosti hľadajú (slušným spôsobom - čo je
presne definované) a keď sa im to podarí, nahlásia ju a dostanú odmenu.

Každá zraniteľnosť má cenu
==========================

Našim cieľom pri zakladaní Hacktrophy bolo, aby každá firma, ľubovoľne
malá, mala možnosť získať vyššiu bezpečnosť. Penetračné testy, ktoré
robíme v [Citadelo](https://www.citadelo.com/) sú síce hĺbkové a naozaj
podrobné, no nie každý si môže dovoliť zaplatiť za penetračný test.
Napríklad tento blog by si to určite dovoliť nemohol a penetračný
test som na ňom neurobil, aj keď vlastním firmu, ktorá ich robí. Je
to jednoducho priveľa peňazí na to, že je to môj osobný hobby nekomerčný
projekt.

Potom ale prišla myšlienka - keby to niekto naozaj vyhackoval, musím to
riešiť. Musím zistiť kde sa hacker dostal, ako to opraviť, zistiť, kde
je problém. Určite by ma to stálo aspoň pol dňa práce. Preto určite
existuje suma, kedy sa mi oplatí za nájdenú zraniteľnosť zaplatiť - a
závisí od toho aká je vážna.

Každý web je potenciálne hacknuteľný a je racionálne ponúknuť odmenu
etickému hackerovi v takej výške, ktorá je nižšia ako naše náklady na
prípadné riešenie problému. Mnohí si povedia, že "ale problém nenastal,
čo ak tam nemám žiadnu chybu?". A tu prichádza druhá super vlastnosť
Hacktrophy - platíte len za skutočné, potvrdené zraniteľnosti.

Asymetria
=========

V skutočnosti totiž platí jednoduchá asymetria - zlých hackerov je veľa.
Ja som jeden. A aj keď som sa snažil tento web nadizajnovať tak, aby mi
ho len tak niekto nevyhackoval, stačí sa pozrieť do prístupových logov
a vidím, že naň permanentne útočia nejaké automaty. Ak na webe aj
niekedy neskôr vytvorím omylom nejakú bezpečnostnú zraniteľnosť, je v
mojom záujme aby mi ju odhalil etický hacker skôr ako ten zlý.

Bug bounty program je spôsob ako tých etických hackerov prilákať čo
najviac a trochu zabojovať s tou asymetriou. Ak na môj web útočia stovky
automatizovaných hackerov, bolo by fajn, keby na mojej strane boli aspoň
desiatky etických hackerov, ktorí sa mi snažia pomôcť.

Samozrejme, nikomu sa nebude chcieť hľadať zložité bezpečnostné
zraniteľnosti za €20. Faktom ale je, že čo sa týka môjho konkrétneho
webu, kde nie sú žiadne osobné údaje, žiadne citlivé údaje (celý
zdrojový text je [dokonca na
github](https://github.com/jooray/juraj.bednar.sk)), ide len o to, či
sa mi chce riešiť že mi nejaký hacker lozí po mojom serveri.

Náklady (viditeľné aj skryté)
=============================

Táto asymetria začína byť vážnejšia v prípade, že sa na webe nachádza
niečo, čo sa dá predať na čiernom trhu. Predstavte si, že máte e-shop,
v ktorom máte komplet informácie o všetkých zákazníkoch - a máte ich
veľa. Predpokladám, že takéto informácie pre vašu konkurenciu majú
hodnotu aspoň €1000. Preto je dobré vypísať etickému hackerovi odmenu
aspoň v tejto výške, ak vás dokáže pred niečím podobným ochrániť.

Tu je dôležité uvedomiť si skryté náklady a to na oboch stranách.

Neetický (black hat) hacker má skryté náklady v riziku, že bude
odhalený. Musí hackovať cez anonymizačné služby, musí si dávať pozor,
pripojenie cez anonymnú službu je pomalé a jeho riziko je v najhoršom
prípade že skončí vo väzení. Riziko je vždy náklad a teda ak predá
dáta za €1000, môže veľmi jednoducho skončiť v strate, pretože si
neuvedomil, že to riziko treba pokryť.

Na strane firmy sú skryté náklady nielen v tom, že konkurencia získa
databázu, ktorú hodnotí na €1000, ale je tu reputačné riziko
(firma neuchránila osobné údaje svojich klientov), strata zákazníkov
(konkurencii sa podarí odlákať časť zákazníkov, lebo konkurencia vie čo
nakupujú, ako často, za koľko peňazí a má na nich priamy konktakt, takže
im vie ponúknuť napríklad zľavový kupón) a tiež regulačné riziko
(pokuta za nedodržanie pravidiel pre ochranu osobných údajov - áno,
to je ten zaprášený bezpečnostný projekt, ktorý máte v šuflíku a už
aspoň 5 rokov nie je aktuálny. V tom lepšom prípade, v horšom prípade ho
ani nemáte. A to ešte možno ani neviete, že [sa na vás chystá regulácia GDPR](https://hacktrophy.com/zodpovednost-firiem-za-ochranu-osobnych-udajov-sa-sprisni/).).

Predpokladajme teda, že black hat hacker dokáže vašu databázu predať
za €1000. Ak nie je hlúpy, musí na jej získanie vynaložiť úsilie v
menšej hodnote (kvôli skrytému riziku a kvôli tomu, že chce zarobiť a
nie byť na nule). Vašu firmu môže tento únik stáť napríklad €10000
(pokuta, strata zákazníkov a stratený čas na odhalenie chyby, zistenie
kam sa hacker dostal a odstránenie týchto problémov).

Ak takáto chyba existuje, za jej odhalenie etickému hackerovi by ste
mali byť ochotní zaplatiť aj viac ako €1000 (kdekoľvek medzi
€1000-€10000). Ak to urobíte, ochránite sa pred hackermi, ktorí sú
ochotní venovať čas v hodnote €1000 alebo menej.

Aká je teda bounty?
===================

Odmeny sú od 20€-150€. Ak ste hacker a trúfate si nájsť zraniteľnosť
na tomto webe (alebo akomkoľvek inom, ktorý je registrovaný v
Hacktrophy), po registrácii uvidíte odmeny, podmienky používania a
bližšie informácie [na stránke mojej
bounty](https://app.hacktrophy.com/projects/jurajbednar).

Čo by mali robiť firmy?
=======================

Ak ste firma, odporúčam [zaregistrovať svoj web do
Hacktrophy](https://app.hacktrophy.com/session/new), vypísať odmeny tak,
aby vám dávali ekonomický zmysel.

Ak nie ste pevne rozhodnutí alebo potrebujete pomoc s aktiváciou
programu alebo nastavením pre vás vhodnej odmeny, [napíšte
nám](https://hacktrophy.com/kontakt/).

Ak sa chcete dozvedieť o bezpečnosti viac, pozrite sa na [blogy
Hacktrophy](https://hacktrophy.com/bezpecnost-na-internete/), kde
nájdete aj knižku pre firmy o IT bezpečnosti, ktorá je super. A [svoj
blog má aj Citadelo](https://www.citadelo.sk/category/blog/).
