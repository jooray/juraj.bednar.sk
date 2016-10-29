---
title: "Stuck Bitcoin transaction and play with double-spend"
date: 2013-08-14 19:33
comments: true
categories: blog
---

A few days ago I was sending my friend a payment of 1.2 BTC. My account had only slightly more
than this amount available, not even enough for recommended transaction fee. Instead of
borrowing or waiting for a miner to generate more, I decided I would push a transaction with
a much smaller fee to the network and hope it gets confirmed in under a day. It did not happen.
According to [Bitcoin wiki](https://en.bitcoin.it/wiki/Transaction_fees), a transaction needs
to pay the recommended fee unless all outputs are more than 0.1 BTC and few other conditions.
I did not meet this condition, because I had one 1.2 BTC output and one change which was
smaller than transaction fee. It was stuck there for more than a day, my mining pool paid
me, so I decided I want to just cancel this transaction and create a new one with a proper
fee. Easier said than done :).

I use Electrum as a client - it is much better than stock Bitcoin client and there's a
nice console. I was able to extract the transaction and try to modify it to include the
fee. The interface is not so nice, or at least I am too lame. I got the transaction as
a JSON structure from Wallet object by transaction hash. I was not able to easily create
a different transaction without going through manually finding keys to sign.

mktx does not work, because I don't have enough unspent outputs (same as paying from the
GUI).

createrawtransaction is something I managed to do, but then for signing, I would need
a list of private keys, addresses and scripts.  My transaction had more than 10 inputs and I was too lazy to
find which keys belonged to the other addresses (and if it's possible to do it
programatically, there should be a function to do it - I guess that's what mktx does
internally too). I guess it should work with less parameters per documentation, but
the console call insisted I fill all the parameters.

I found out a very lame and easy solution. I thought if Electrum does not see the old
transaction, it can spend the inputs again. So I changed wallet.py. There's a function
called update\_tx\_outputs that takes a tx\_hash and updates a list of spent outputs.
I modified it like this:

``` python
    def update_tx_outputs(self, tx_hash):
        if tx_hash == '00455149b368344f4087596c97dccf9dc185ed275a58187a63f72399618f815d': return
        tx = self.transactions.get(tx_hash)
        ...
```

So if my transaction (the hash is from other stuck transaction I found online) is found,
it's skipped, so Electrum thinks the outputs are not spent. 

I thought I would just pay, but the transaction got refused by Electrum server, because
it thought it's a double spend (which was correct). So I used mktx and used 
[Coinb.in's wonderful Raw Transaction utilities](https://coinb.in/send-raw-transaction.html)
to broadcast the hash to the network. It also returned that the transaction is
invalid, but it propagated anyway and a miner included it in a block.

I found out that blockchain.info reports on attempts to double spend when I look at a
transaction or address and recommends you proceed with caution.

Takeaways: Pay the transaction fee, really. Nodes try to refuse double spends
(they cache stuck transactions), but the transaction eventually propagates.
Electrum could have much nicer Python interface for things.

I guess Amir's [sx command-line utility](http://sx.dyne.org/) would make my life
much easier, but I had no time to upgrade my g++ toolchain, it does not compile
on any system I own. Installing Ubuntu or ArchLinux just because I want to play
with it takes a lot of time. I tried
[fixing a few of the main problems of libbitcoin not compiling on OS X](https://github.com/jooray/libbitcoin),
but I had no more time doing it. I would love to use sx with OS X or Scientific
Linux someday. Playing with Electrum and it's internals is fun too though.


