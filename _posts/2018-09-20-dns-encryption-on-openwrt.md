---
title: "Even more privacy with DNS over TLS"
date: 2018-09-20 14:50
comments: true
categories: blog
image: /posts/2018-04-02-more-privacy-with-dnscrypt.jpg
---

In my [previous
post](https://juraj.bednar.io/blog/2018/04/02/more-privacy-with-dnscrypt/)
I described how to increase your privacy using DNScrypt and cloudflare's
[DNS over TLS service](https://blog.cloudflare.com/announcing-1111/).

I was finally able to deploy this easily without hacking on Turris
Omnia's OpenWRT and test if it is working correctly.

<!--more-->

It's not rocket science, you just need to make sure you have the latest
OpenWRT and [follow these
instructions](https://doc.turris.cz/doc/en/public/dns_knot_misc#using_dns_over_tls).
I hope there will be a GUI setting in the interface in the future.

Whether you have it on your computer or on your router or on both (my
preferred option), you can test if it is working correctly [on
a service called dnsleaktest](http://dnsleaktest.com/).

Have fun and stay safe and private!
