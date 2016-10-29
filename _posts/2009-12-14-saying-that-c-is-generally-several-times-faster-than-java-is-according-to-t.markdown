---
title: "\"Saying that C is generally several times faster than java is - according to t...\""
date: 2009-12-14 10:38
comments: true
external-url:
categories:
---
"
* Saying that C is generally several times faster than java is - according to those benchmarks - simply wrong. If you’re allowed to choose the fastest JVM the worst case for java was 30%. In other benchmarks Sun and JRockit were even able to beat ICC. Not by much but I guess it’s nevertheless just very remarkable that it’s possible to beat ICC. Another interesting figure is that Bea was less than 14% slower than GCC in the worst case (nbody) and was in two cases faster than GCC.
* Saying that Java is faster than C can also be pretty wrong, especially if you have to stick with one JVM. The worst case in these benchmarks were 30% slower for JRockit to 2.44 times slower for Sun’s JDK 6U2.

–[Java vs. C benchmark][1]

  [1]: http://www.stefankrause.net/wp/?p=4
