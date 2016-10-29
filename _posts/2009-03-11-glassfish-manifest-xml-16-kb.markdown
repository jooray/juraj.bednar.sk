---
title: "glassfish-manifest (XML, 1.6 KB)"
date: 2009-03-11 22:40
comments: true
external-url:
categories:
---
I run Glassfish V3 (with LifeRay) on Solaris 10. I wanted to run the portal as non-root user, but binding on port 80. And of course using SMF. Glassfish V2 has "asadmin create-service", which creates manifest, but version 3 has not implemented this yet (it will be in final version). So here is my manifest. You will need to change username (mine is glassfish) and path.
