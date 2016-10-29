---
title: "Prelomená ochrana Chip and PIN kariet -- na získanie peňazí nepotrebujete PIN"
date: 2010-02-14 13:35
comments: true
external-url:
categories:
---
Výskumníci z počítačového laboratória Cambridge University pod vedením  
prof. Anderson-a zverejnili ďalší zo série útokov na karty typu Chip   
and PIN.   
  
Vytvorením zariadenia, ktorý realizuje útok typu Man in the Middle  
je možné získať z Chip and PIN karty peniaze bez nutnosti zadať PIN.  
  
Zariadenie (na obrázku) pozostáva z falošnej karty napojenej na zariadenie,  
do ktorého sa vloží pôvodná karta. Falošná karta je pritom úplne  
pod kontrolou útočníka.  
  
![][1]  
  
Útok funguje nasledovne (jedná sa o zjednodušený pohľad, detaily  
v zdroji článku):  
1\.) Zariadenie, ktoré sa snaží uskutočniť s kartou platbu sa najprv  
falošnej karty opýta na správnosť zadania PINu. Falošná karta potvrdí  
akýkoľvek PIN (napríklad 0000).  
  
2\.) Zariadenie pošle požiadavku na autorizáciu transakcie, ktorá   
obsahuje sumu. Výstupom je potvrdenie čipu o autorizácii. Falošná  
karta toto potvrdenie vydať nemôže, pretože nemá údaje na to potrebné.  
Tie sa nachádzajú na pôvodnom čipe. Požiadavku teda len jemne  
pozmení -- pridá informáciu, že sa jedná o transakciu, ktorá bude  
overená podpisom. Požiadavku prepošle pôvodnej karte.  
  
3\.) Pôvodná karta potvrdí transakciu, keďže má byť overená podpisom,  
nevyžaduje žiadny PIN.  
  
4\.) Potvrdenie falošná karta predá zariadeniu, ktoré platbu  
požadovalo.  
  
5\.) Zariadenie si myslí, že transakcia prebehla v poriadku a bol  
zadaný správny PIN. Karta si myslí, že vydala potvrdenie pre  
transakciu overovanú podpisom. Nešťastný majiteľ pôvodnej karty  
príde o svoje peniaze a útočník nemusel ani falšovať podpis  
ani poznať PIN.  
  
![][2]  
  
Praktické použitie tejto techniky bude závisieť len od schopnosti  
útočníkov miniaturizovať zariadenie (v prípade, že útok funguje  
aj v bankomatoch ani toto nie je obzvlášť potrebné) a od toho,  
ako na tento útok zareagujú vydavatelia Chip and PIN kariet.  
Vymeniť všetky vydané karty ale nie je jednoduché.  
  
Útok má však aj iný dôsledok: banky doteraz dávali zodpovednosť  
na držiteľa karty, v prípade, že bol zadaný správny PIN. Ako však  
vidíme, banka tento fakt v tomto prípade nemá ako overiť.   
  
Autori štúdie tvrdia, že sú v kontakte s ľuďmi, ktorým banky  
tvrdia, že ich transakcie boli verifikované PINom (a teda neručia  
za peniaze vybraté po ukradnutí karty), ale podľa týchto ľudí  
PIN nemali nikde napísaný a nikto ho nemohol uhádnuť ani nijak  
získať. To by nasvedčovalo tomu, že tomuto útoku podobný útok  
môže byť realizovaný útočníkmi aj v praxi.  
  
Keďže sa nejedná o problém konkrétnych bánk, ale rôznych vydavateľov,  
bude riešenie pravdepodobne zložité a tak skoro sa ho nedočkáme.   
  
Zdroj: <http://www.cl.cam.ac.uk/research/security/projects/banking/nopin/oakland10chipbroken.pdf>

  [1]: http://flz.sk.cx/chipandpin_komponenty_utoku.png
  [2]: http://flz.sk.cx/chipandpin_pin.png
