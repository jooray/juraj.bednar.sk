---
title: "Turris Omnia review"
date: 2016-10-30 16:10
comments: true
categories: blog
image: /posts/2016-10-30-turris-omnia-review.jpg
tags: geek
---

I was eagerly awaiting for my [Turris Omnia](https://omnia.turris.cz/) which I preordered on their [Indiegogo campaign](https://www.indiegogo.com/projects/turris-omnia-hi-performance-open-source-router-security-network#/) almost a year ago. The campaign raised more than 1.2 million dollars and the router was created by a team from Czech Republic's .cz domain administrator CZ-NIC. I was always a little bit sad that the ISPs sell you a 300Mbit Internet connection and then give sell or rent you a router which can barely perform switching at that speed. So my default answer for a shitty D-Link router with no firmware updates and rare need for reboot was - I'll just wait for my Turris Omnia to arrive.

<!--more-->

It arrived last week and I went straight to setting it up. First I noticed that the antenna connectors are very unstable and I'll need to unscrew and open the router and somehow fix it in position. Quite weird for a high quality router, even cheap routers from China don't come with a basic mechanical problems like this.

Then I turned the router on. I first wanted to set it up and then connect it to the Internet. Without working Internet connection, the setup went through somehow. The problem was that it generated empty SSH key files, which meant SSH was not working. [Errata](https://www.turris.cz/doc/en/troubleshooting/erratum) mentions that I should either connect through serial console or do a factory reset. I wasn't very happy about going through the setup process again. With some Googling, I [found a solution](https://discourse.labs.nic.cz/t/ssh-server-configuration/915/5) and was able to implement it (BTW - why not include a simple web-based terminal? There are many of them available freely. Entering one command at a time and making sure the command won't be interactive is quite difficult).

After setting up basic SSH and using the advanced web interface, I was able to setup two wifi networks, one for guests and one for us. We finally switched to stronger passwords on our wifi. I like that you are able to simply create as many wifi networks (with distincts SSID) as you need, right in the web interface. I also like the zoning and bridging support in the web interface. If I didn't understand networking though, I would not be able to do it at all, but this is a router for geeks, not for general population.

The router updated and this is one of the major advantages. Most routers out there don't get updates - they are sold and the manufacturer does not support them anymore, so they are full of security vulnerabilities. The only reason all routers are not hacked all the time is that they mostly don't do anything special, so there's not much to hack, unless there's a remote vulnerability in networking code.

Turris Omnia does a lot and they do provide updates, which is a great thing. They also natively support IPv6 and DNSSec (I cannot make use of these features just yet, although in the office, IPv6 works, my home ISP does not support it yet). Slovak (.sk) domain still does not support DNSSec.

Finally, OpenVPN configuration. Until now, I used OpenVPN just in case I need to connect to my home network. I have set it up on my home NAS (QNAP) and just forwarded the port. The configuration on QNAP was simple, it was literally few clicks and I got the whole configuration package which I could import to Shimo on my Mac and there I had it working.

I wanted to make it work on Turris Omnia/OpenWRT. First of all, there is no useful configuration web  interface. There is no client config generator that would generate the .ovpn config to import on a client. There are OpenWRT howtos with conflicting ideas, the [wiki does not show what to do exactly](https://wiki.openwrt.org/doc/howto/vpn.openvpn) (and has many alternatives - which should be different wiki pages really).  Basically, I lost two hours of my life. I could not just apply my configuration on the client, there are howtos with config files, ... I don't care about that at all. A shared secret authentication would be enough. For now, I use Back to my Mac from Apple.

BTW: Even the cheap Chinese router I had can create a VPN configuration for you from the web interface. I did not use it, because it has no updates and I am afraid to turn it on, because if there's a security vulnerability in VPN software, I would not notice and the router would not update. Turris Omnia updates itself automatically.

Conclusion
==========

If you are a geek and can spend two days playing with your router, go for it. If not, I would wait a while. It was made by a non-profit organization that clearly has no experience with working on open market - quality control is a real issue. Also, I would focus on doing the basic things really well and then going for fancy stuff like NAS with USB, etc.

The good
========

 * Solid hardware, gigabit ethernet, fast CPU, two wifi adapters
 * Updates automatically (including security updates) maintained
 * Customizable, built with hacker/geek in mind
 * Supports many services and can do much more than a basic router

The bad
=======

 * Serious quality control issues. Loose antennas can be checked by touch.
 * SSH issues out of the box, which makes everything harder.
 * I could not find how to manually run updates (after getting Internet connection) from the web interface. It would have solved my issue with SSH, but I was only able to manually run the updates from the command line. Yes, I was missing one button.
 * No VPN configuration out of the box. It's nice that it can do NAS and all the fancy stuff, but VPN is such a basic functionality that even most cheap routers do them out of the box.

 