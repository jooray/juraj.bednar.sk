---
title: "More privacy with DNS over HTTPS"
date: 2018-04-02 15:23
comments: true
categories: blog
image: /posts/2018-04-02-more-privacy-with-dnscrypt.jpg
---

As [Cloudflare announced their 1.1.1.1 DNS service](https://blog.cloudflare.com/announcing-1111/) yesterday, I decided to give it a try. There are two reasons for that: They promise not to log your requests and [it seems that it is the fastest DNS service available](https://www.dnsperf.com/#!dns-resolvers) ([another source](https://medium.com/@nykolas.z/dns-resolvers-performance-compared-cloudflare-x-google-x-quad9-x-opendns-149e803734e5)). 

When you visit any website, even though it is encrypted, the name of the server usually goes unencrypted and everyone (your ISP, the free wifi provider like the cafeteria you are in, etc.) sees the domain name.

<!--more-->

So, how do you set it up on your macOS? The official guidelines are somehow "hacky" and I use [homebrew](https://brew.sh/), so I don't want to install stuff outside of homebrew. If you don't use homebrew on your Mac, [follow the instructions to set it up first](https://brew.sh/).

Then install:

```
brew install dnscrypt-proxy
```

Next edit */usr/local/etc/dnscrypt-proxy.toml* and change line starting with *server_names* to

```
server_names = ['cloudflare']
```

If you are especially lazy and don't want to edit the file, you can do this (paste with newlines):

```
patch /usr/local/etc/dnscrypt-proxy.toml << EOF
--- dnscrypt-proxy.toml.orig	2018-04-02 15:17:45.000000000 +0200
+++ dnscrypt-proxy.toml	2018-04-02 14:59:31.000000000 +0200
@@ -22,7 +22,7 @@
 ## The proxy will automatically pick the fastest, working servers from the list.
 ## Remove the leading # first to enable this; lines starting with # are ignored.
 
-# server_names = ['scaleway-fr', 'google', 'yandex']
+server_names = ['cloudflare']
 
 
 ## List of local addresses and ports to listen to. Can be IPv4 and/or IPv6.
EOF
```

Then just start it and make sure it starts on boot:

```
sudo brew services start dnscrypt-proxy
```

Try it out:

```
dig www.paralelnapolis.sk @localhost
```

And then go to System Preferences / Network / Advanced and make sure that the only line in your DNS section is *127.0.0.1* (if you add, it will probably remove anything you had there).

Enjoy possibly faster and more private browsing!

Thanks to [my colleague Tomáš Horváth](https://citadelo.com/sk/blog/autori/tomas-horvath/) from [Citadelo](https://citadelo.com/) for letting me know about Cloudflare's new 1.1.1.1
