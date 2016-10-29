---
title: "This is a little \"research\", I've been doing. There is a site called Fusion A..."
date: 2009-01-06 14:44
comments: true
external-url:
categories:
---
[<img src="http://6.asset.soup.io/asset/0207/4358_587d.png" width="665" height="589" alt="4358_587d" />][1]

This is a little "_research", _I've been doing. There is a site called [Fusion Anomaly][2] (I already mentioned it before). It has a weird properties, something really anomalous: it eats my time. I don't browse it anymore, because I know I will be stuck for several hours, having tens of tabs open in my firefox and just reading. I believe this is because it links to several very interesting topics.   
  
I tried to find out what's with this anomaly and talking with Hromi, I wanted to first try his graphing approach. But I will let him show me how he does it in [R Project][3].   
  
In the meanwhile, I used this data as a training matrix (matrix of links) for creating [Kohonen's Self Organising map ][4]out of the links. It shows some topological properties (especially note the drugs being clustered together in the [final map][5], with notable exception of Caffeine). Of course, the map has a difficult time mapping similarities to topological relations from 1347 dimensional space to 2D. Adding one dimension would greatly help, but still, plotting in 1347D would show all similarities, but it's kind of difficult to imagine.  
  
Final map in SVG is [here][6] (Soup does not allow me to display SVG that well: it's always too small to display, so just click on the link and firefox should display it with ability of zooming and going around). [This zip file][7] has all the .r files, the RData image of trained SOM, so you can display it, ncol format igraph data of fusion anomaly -- if you can show me where's the trick, go on.   
  
I highly recommend playing with R, it's very simple to learn and very powerful. It has libraries for artificial intelligence algorithms and lots of statistical, graph theory, etc. modules.  
  
The picture on the top is display of global similiarity, which shows, that the network is not well trained, it could probably be much better given the right training parameters, but maybe not (1347D -&gt; 2D reduction is kind of lossy).  
  
Have fun!

  [1]: 
  [2]: http://fusionanomaly.net/
  [3]: http://www.r-project.org/
  [4]: http://en.wikipedia.org/wiki/Self-organizing_map
  [5]: http://flz.sk.cx/fusionanomaly-mapping.svg
  [6]: http://flz.sk.cx/fusionanomaly-mapping.svg
  [7]: http://flz.sk.cx/fusionanomaly.zip
