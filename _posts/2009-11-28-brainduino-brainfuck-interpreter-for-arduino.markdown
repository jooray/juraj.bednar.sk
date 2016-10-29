---
title: "BrainDuino – BrainFuck Interpreter for Arduino"
date: 2009-11-28 10:24
comments: true
external-url:
categories:
---
Jazyk _Brainfuck_ vymyslel v roce [1993][1] [švýcarský][2] programátor [Urban Müller][3]. Jazyk obsahuje pouze osm příkazů (viz seznam dále). Interpretace příkazů se v _Brainfucku_ provádí sekvenčně, všechny neznámé znaky jsou ignorovány - zdrojový kód lze tedy opatřit komentářem v libovolném místě (komentář pouze nesmí obsahovat klíčové znaky).  
  
Hello world:  
  
++++++++++[&gt;+++++++&gt;++++++++++&gt;+++&gt;+&lt;&lt;&lt;&lt;  
-]&gt;++.&gt;+.+++++++..+++.&gt;++.&lt;&lt;++++++++++++  
+++.&gt;.+++.------.--------.&gt;+.&gt;.  
Harvie:  
  
Pokud už znáte interpretovaný programovací jazyk [BrainFuck][4], jistě vás nepřekvapí jeho implementace pro Arduino.  
  


Samozřejmě, že hned jak jsem měl v ruce hotový interpreter, nenapadlo mě nic jiného, než ho začít víc provazovat s Arduinem. Ze všech nápadů jsem se nakonec rozhodl pustit do světa jen následující příkazy:  
 \* ‘!’ – Nastaví hodnotu (0-255) PWM pro pin zadaný funkci brainfuck() při zavolání  
 \* ‘?’ – Zjistí hodnotu (0-255) z Analog-IN pinu zadaného funkci brainfuck() při zavolání  
 \* ‘\_’ – ekvivalent delay(10);

<http://blog.harvie.cz/2008/04/arduino/brainduino-brainfuck-interpreter-for-arduino/>

  [1]: http://cs.wikipedia.org/wiki/1993 "1993"
  [2]: http://cs.wikipedia.org/wiki/%C5%A0v%C3%BDcarsko "Švýcarsko"
  [3]: http://cs.wikipedia.org/w/index.php?title=Urban_M%C3%BCller&action=edit&redlink=1 "Urban Müller (stránka neexistuje)"
  [4]: http://cs.wikipedia.org/wiki/Brainfuck
