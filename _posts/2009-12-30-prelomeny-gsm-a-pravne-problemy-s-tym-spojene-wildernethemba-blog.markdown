---
title: "Prelomený GSM a právne problémy s tým spojené (Wilder/Nethemba blog)"
date: 2009-12-30 15:1
comments: true
external-url:
categories:
---
Pred pár minútami bola [zrušená praktická GSM prezentácia][1] na [26C3 konferencii][2], na ktorú som sa skutočné tešil.  
GSM asociácia a jej členovia, ktorej sa daný útok bytostne dotýka pokladajú uvedenú prezentáciu za prudko nelegálnu. Priznám sa, že som veľmi prekvapený, nakoľko zraniteľnosti GSM sú verejne známe už viac ako 15 rokov a praktický [MITM útok][3] na GSM sieť pomocou verejne dostupnej [OpenBTS implementácie][4] nasadenej na verejne dostupnom [USRP zariadení][5] boli verejne a prakticky prezentované napríklad na [minuloročnej CCC konferencii][6] pánom Spaarom a Weltem.
Pred pár dňami boli v rámci [distribuovaného komunitného projektu][7] vypočítane a publikované čiastočné [rainbow tabuľky na A5/1][8], ktoré umožňujú prelomiť až 50% zachytenej GSM komunikácie (kompletné tabuľky, ktoré dokážu prelomiť až 99% GSM komunikácie sa stále počítajú a ich celková veľkosť  presahuje 2 TB).
Zrušená prezentácia mala demonštrovať ako pomocou verejne dostupných prostriedkov (verejne dostupný hardware v cene cca $1000 a verejne dostupného softwaru) a uvedených vypočítaných rainbow tabuliek je možné v reálnom čase dešifrovať ľubovoľný GSM hovor.
**Cieľom prezentácie bolo poukázať na kritický fakt, že ktokoľvek s uvedenými tabuľkami a s horeuvedeným vybavením dokáže ľubovoľný GSM hovor dešifrovať. Daný problém je už nemožné ignorovať, nakoľko sa reálne dotýka viac ako 200 krajín na celom svete a 4 miliardy používateľov GSM sietí.  
**
**GSM asociácia namiesto toho aby verejne akceptovala kritické zraniteľnosti GSM, bojkotuje verejne prezentácie, ktoré na tieto zraniteľnosti reálne poukazujú.**
Ďalšie informácie o aktuálnom prelomení GSM pomocou dostupných A5/1 tabuliek k dispozícii v [poslednej Nohl, Paget prezentácii.][9]
A5/1 tabuľky dostupné na [stiahnutie (torrent).][10]
Bezprostredná ochrana voči uvedenému útoku je používanie "bezpečnejšieho" 3G (UMTS, HSDPA), kde je to len možné. Podotýkam ale, že pred par týždňami na Asian Crypto 09 pán Orr Dunkelman, Nathan Keller a Adi Shamir publikovali praktický útok na Kasum A5/3, ktorý je používaný v 3G sieťach. Je teda len otázka času, kedy na dešifrovanie 3G hovorov budu verejne dostupné nástroje ako je to v prípade A5/1 (GSM).

[Cellphone Encryption Code Is Divulged (New York Times) ][11]

<https://www.nethemba.com/blog/>

  [1]: http://events.ccc.de/congress/2009/wiki/The_demonstration_is_canceled
  [2]: http://events.ccc.de/congress/2009/
  [3]: http://en.wikipedia.org/wiki/Man-in-the-middle_attack
  [4]: http://openbts.sourceforge.net/
  [5]: http://www.ettus.com/products
  [6]: http://events.ccc.de/congress/2008/Fahrplan/events/3007.en.html
  [7]: http://reflextor.com/
  [8]: http://reflextor.com/trac/a51
  [9]: http://events.ccc.de/congress/2009/Fahrplan/attachments/1479_26C3.Karsten.Nohl.GSM.pdf
  [10]: http://www.nethemba.com/a51_rt.zip
  [11]: http://www.nytimes.com/2009/12/29/technology/29hack.html?_r=1&scp=1&sq=gsm&st=cse
