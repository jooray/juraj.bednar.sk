---
title: "XMLVM 4 iPhone: Developing applications for iPhone using Java"
date: 2009-01-02 22:21
comments: true
external-url:
categories:
---
I was looking for a way to develop an application for Java. It seems, that Apple wants me to pay $99 just for some developer access, so I could run compiler and SDK and upload it to my phone. And I would need to do it in Objective-C, which is, ahem pardon me, perverse.  
  
This solution is no less perverse, but I like it. XMLVM can take Java bytecode and create it using (you guessed) XSLT transformation to Objective-C source code. They also have some bindings for Cocoa interfaces, so it can use native GUI.  
  
They implement garbage collection using reference counting. On the link, there is a nice explanation of how it works and what it can do. Pretty impressive.  
  
I've somehow liked all the projects which allow you to run different code on different platforms (even things like [NestedVM][1], which uses gcc to compile C code to MIPS bytecode and then compiles MIPS bytecode to a simple Java function, which works like charm, but slowly on Java platform. They even used it to port Theora decoder to Java).   
  
It all gives you background feeling of Turing-completness of our current IT world. Which is nice.  
  
I want to see C to MIPS to Java to JavaScript to SQL (which is as of SQL-99 standard Turing complete too). And then running the Theora decoder as an SQL statement from BLOB. JavaScript would be there just to add the snobby web 2.0 feeling...   
  
(I hope HTML is not turing complete and will never be).

<http://www.xmlvm.org/iphone/>

  [1]: http://nestedvm.ibex.org/
