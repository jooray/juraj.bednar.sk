---
title: "How to browse Internet from certain country"
date: 2009-03-30 16:40
comments: true
external-url:
categories:
---
I don't get it, there are still some services, that are limited to a specific country (using GeoIP or Whois database or whatever). This is how to overcome the limitation. Install Tor (I use OS X package with Vidalia support).  
  
Then you can either find an exit node from the country list (you can sort by country in Network Map) or use [this list][1] (thanks to bon). Choose more exit nodes. Then put this to your .torrc:  
  
_ExitNodes batman, VOLVOFH12, MagicGibbon, LemonTorte, Ragnaruss, anonion, atacama, candybar, Freaky, t0rp0r, tortureisevil_  
_StrictExitNodes 1_  
  
(the names of nodes are random nodes in the UK, you will need to change the list to suit your needs).   
  
Restart Tor and there you go.

  [1]: https://torstat.xenobite.eu/
