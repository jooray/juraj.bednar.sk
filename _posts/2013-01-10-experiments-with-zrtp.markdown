---
title: "Experiments with ZRTP and FreeSwitch"
date: 2013-01-10 19:02
comments: true
categories: blog
published: true
---

ZRTP is very important project for securing your voice communication. I started playing with [Jitsi](http://www.jitsi.org/), 
[Acrobits Softphone](https://itunes.apple.com/en/app/acrobits-softphone-sip-phone/id314192799?mt=8) and [FreeSWITCH](http://www.freeswitch.org/).

What I found out after [initial configuration of ZRTP for FreeSwitch](http://wiki.freeswitch.org/wiki/ZRTP) is that FreeSwitch attempts to negotiate ZRTP keys and act as a trusted man in the middle. I wanted to avoid that and provide end to end encryption. The magic option that would allow direct passthrough of ZRTP to the endpoint is enabling:

    <!--Uncomment to set all inbound calls to proxy media mode-->
    <param name="inbound-proxy-media" value="true"/>

in *conf/sip_profiles/internal.xml*.

Other funny thing I found out is how many bots are out there trying to abuse my softswitch. This happened a few hours after setting up FreeSwitch on public IP (that was never used as a SIP server before). I have run tcpdump capturing only UDP on 5600:

    [root@softswitch ~]# strings output.pcap |wc -l
    37235
    [root@softswitch ~]# strings output.pcap |grep To: | wc -l
    2833
    [root@softswitch ~]# strings output.pcap |grep To:| uniq | head -n 5
    To: "J" <sip:1001@203.0.113.7>
    To: "J" <sip:1001@203.0.113.7>;tag=U4SvF45vSBeeN
    To: "J" <sip:1001@203.0.113.7>
    To: "J" <sip:1001@203.0.113.7>;tag=vDKNHZp0pm40g
    To: <sip:1001@203.0.113.7>
    [root@softswitch ~]# strings output.pcap |grep To:| uniq | tail -n 5
    To: 700972597727055 <sip:700972597727055@203.0.113.7>;tag=Uy4Dmj5jN0NHB
    To: 700972597727055<sip:700972597727055@203.0.113.7>
    To: 700972597727055 <sip:700972597727055@203.0.113.7>
    To: 700972597727055 <sip:700972597727055@203.0.113.7>;tag=v7X6NDppj9B4p
    To: 001972597727055 <sip:001972597727055@203.0.113.7>;tag=jD1e4yDKFgD9j
    [root@softswitch ~]# strings output.pcap |grep -i nonce| uniq | head -n 10
    Proxy-Authorization: Digest username="2010",realm="203.0.113.7",nonce="9613eafe-5920-11e2-84ca-eb9dba96f036",uri="sip:00972592819732@203.0.113.7",response="264f1ab22fa5dacafc01387032228446",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2010",realm="203.0.113.7",nonce="96dbcfa6-5920-11e2-84cc-eb9dba96f036",uri="sip:000972592819732@203.0.113.7",response="512df72182d278d705a2160ba15f4a0f",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2010",realm="203.0.113.7",nonce="97630552-5920-11e2-84ce-eb9dba96f036",uri="sip:900972592819732@203.0.113.7",response="a45fc82a1d632a8890f777716b7935f5",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2012",realm="203.0.113.7",nonce="0b1a9a5a-5926-11e2-84d4-eb9dba96f036",uri="sip:00972592819732@203.0.113.7",response="c5590c623d654384f83ff04da785a197",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2012",realm="203.0.113.7",nonce="0c7a5b10-5926-11e2-84d6-eb9dba96f036",uri="sip:000972592819732@203.0.113.7",response="f581d146cb370170764fa8f54bd4b360",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2012",realm="203.0.113.7",nonce="0dc65ae6-5926-11e2-84d8-eb9dba96f036",uri="sip:900972592819732@203.0.113.7",response="d522d9a645bd6b3a47a8d5091b73b0f4",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2020",realm="203.0.113.7",nonce="811aaa42-592b-11e2-84de-eb9dba96f036",uri="sip:00972592819732@203.0.113.7",response="407a62e3cc1dcadad13e5e672a8cdb88",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2020",realm="203.0.113.7",nonce="826543b2-592b-11e2-84e2-eb9dba96f036",uri="sip:000972592819732@203.0.113.7",response="f803d9c9687217fc97829bc317933c6e",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="2020",realm="203.0.113.7",nonce="83df2bfe-592b-11e2-84e4-eb9dba96f036",uri="sip:900972592819732@203.0.113.7",response="5e11b2531e86709427c9eea542203cd9",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    Proxy-Authorization: Digest username="301",realm="203.0.113.7",nonce="2e81b5a4-592c-11e2-84e9-eb9dba96f036",uri="sip:00972597727055@203.0.113.7",response="156ef65fecbe325882b48b555ec92cd4",cnonce="4b41f53e6f00c05",nc=00000001,qop="auth",algorithm=MD5
    

For those that are not that familiar with UNIX, this basically means, that there are bots (or botnets) out there trying to brute-force your password and call out. That means you **need to change your password before running FreeSwitch for the first time**.

I used a good (although older) [tutorial about starting with FreeSwitch](http://www.linux-magazine.com/content/download/61982/483484/file/Freeswitch.pdf).

