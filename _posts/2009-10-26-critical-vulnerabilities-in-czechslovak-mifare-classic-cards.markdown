---
title: "Critical vulnerabilities in Czech/Slovak Mifare Classic cards"
date: 2009-10-26 8:51
comments: true
external-url:
categories:
---
We have analysed Czech/Slovak most used public transport and access smart cards (Bratislava public transport card, University/ISIC cards, parking cards, Slovak Lines cards etc) based on Mifare Classic technology.  
 Using various technologies and thanks to public available academical papers, we have demonstrated the possibility of gaining all access keys used for the card content encryption.  
 We have also verified that these keys can be subsequently used for complete reading, altering and cloning the cards that can pose a serious threat for affected transport companies.  
 We have also estimated costs of effective attacks and proposed appropriate effective countermeasures from the most secure ones (replacement of all vulnerable cards) to less secure ones (bind card's UID with passenger, UID whitelisting, digital signing, "decrement counter" solution).

For the demonstration of the seriousness of these vulnerabilities **we have implemented and released our own implementation of "offline nested" attack that can be used for offline cracking of all keys for all sectors without valid RFID reader**.

[  
][1]

[Technical presentation (PDF)][2]

[https://www.nethemba.com/research/#vulnerabilities\_in\_mifare\_cards][3]

  [1]: http://www.nethemba.com/mifare-classic-slides.pdf
  [2]: http://www.nethemba.com/mifare-classic-slides.pdf
  [3]: https://www.nethemba.com/research/#vulnerabilities_in_mifare_cards
