---
title: "Backing up your github repositories"
date: 2013-01-06 12:53
comments: true
categories: blog
---

I [put a lot of my free software](https://www.github.com/jooray) to Github lately. Github is nice, it allows community forks and other great things. But what if it is gone? For that, we have backups. Do we?

We should.

Addy Osmani [wrote about backup up your github repositories](http://addyosmani.com/blog/backing-up-a-github-account/). He gave
three solution. The second one did not work for me and I was too lazy to debug, the third one required Haskell and some additional libraries (I will learn Haskell, but not at 6am), so I adapted the first solution. It is pretty simple, but used github v2 API and it is no longer supported. 

So [updated version is here](https://github.com/jooray/github-backup), I also added some shell escaping (although if you backed up someone else's repository, I suggest checking for filename-significant characters too).

This backups all your public repositories (that's what I use). I use it with [duplicity](http://duplicity.nongnu.org/) for secure backup (and restore) by encrypting on client side (please take good care of your PGP private key if you do this).



