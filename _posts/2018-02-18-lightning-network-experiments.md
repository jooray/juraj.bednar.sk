---
title: "Fun with Bitcoin lightning network"
date: 2018-02-18 17:00
comments: true
categories: blog
tags: cryptocurrency
image: /posts/2018-02-18-lightning-network-experiments.jpg
---

After several unsuccessful attempts, I finally got a lightning network
node to work. Sort of. Here is the current status using the latest
[Lightning Desktop App](https://github.com/lightninglabs/lightning-app).

<!--more-->

The app is a simple GUI for lnd that runs on testnet. I like that it is
a light node and thus does not need to download the whole chain,
although synchronization still takes time. I used the [testnet
faucet](https://testnet.manu.backend.hamburg/faucet) to get some testing
coins (these have no value, everything is done on the testing bitcoin
network).

The payment channels allow you to send and receive money using the
lightning network. Channel creation and closing is done on-chain (and
that takes time - forget about coming to Bitcoin coffee and buying
coffee after just opening a channel there, it takes some time).

You can also try other [lightning apps](http://dev.lightning.community/lapps/).
They have a good list of plug-ins and public services to play with.

Especially opening a channel using [lightning faucet](https://faucet.lightning.community) is useful.

## The good parts

When it works, it works. If you have a channel open,
there is enough balance **in that direction**, you can send an instant
payment. Click and it's there. You can try that on
[Yalls](https://yalls.org/).

The GUI is also fairly OK, although it has a long way to go. The app is
easy to install.

You can also try [HTLC.me web wallet](https://htlc.me/) that makes it
possible to play with lightning network on testnet without the need to
install anything. It had similar problems to Lightning Desktop app
though.

## The bad parts

User has no idea how to open the channel and where to find the right
channel to open. There is an autopilot mode that opens some channel
automatically. This is difficult to communicate with a random user and
it happens only if user funds the wallet, which is understandable.

The problem is that this channel has balance only in one direction.
Meaning, you can send, but not receive lightning payments, for that, you
need to convince someone else to open a channel to you.

And this is also the difficult part - that someone else needs to be able
to connect to the port of lnd using tcp. Which my home computer nor
anyone else has. I don't understand this design decision. In the age of
web sockets, good peer to peer networks or Tor, it would be best to
integrate any of these techniques and not rely on open tcp ports on
public addresses. It should not matter who connects to who. And IP
address and port should not even be in the equation. Users don't
understand it, the apps don't know it and it is a huge usability fail.

A good solution would be to just connect to Tor and go with onion
addresses.

The main issue is the usability. How to initiate the channels and when?
How to convince a third party to open a channel to my e-shop and put
money there?

And... when there is no balance in the channel to send the transaction,
the app should offer opening a new channel, retiring the old one.

I have seen a lot of errors such as very descriptive "EOF", errors in
finding route, errors in connecting to the other node (when both of us
are behind NAT, or when only I am). The idea is that all of this should
be automatic and the lightning network daemon should find routes, open
channels for me as needed, close them and let me just use bitcoin.

The reality is that it works only if you invest significant time and
energy into making it work.

## Result

Design, usability and connectivity are far from an end product, but at
least I was able to perform a transaction. Development takes time. I am
very happy that these technologies are getting better almost every day.

On the other hand, end-user adoption is definitely not "around the
corner". Heck, most of mobile wallets don't even support segwit yet. I
think that we will have serious problem with Bitcoin fees at least
during 2018.

After development and adoption of lightning network, we will have more
possibilities, enhanced anonymity, lower fees and in general a better
experience with some applications (like stream payments) that were not
easily possible until now. Stay tuned!