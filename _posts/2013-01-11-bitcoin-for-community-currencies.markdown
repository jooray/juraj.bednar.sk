---
title: "Bitcoin for community currencies"
date: 2013-01-11 04:52
comments: true
categories: blog
published: false
---

Bitcoin is a global alternative currency. It does not live by itself,
even among alternative currencies. There are many local currencies,
LETS based accounting systems and other alternatives to state issued
currency.  After a short discussion about the advantages and
disadvantages of local currencies with the people discussing the
possibility of a local community currency (LCC) in the city of Banská
Bystrica, Slovakia I decided I would describe constructive ways to
use Bitcoin to support or create this currency.

Personally, I think that the local currency has a lot of disadvantages
and it is better to use Bitcoin itself - it is stable (at least
theoretically), it uses the work of many people who run the Bitcoin
peer to peer network and it also supports global trade outside the
standard state money. It is simply much more usable.

However, if someone wants to build a local currency, Bitcoin can
help. None of solutions mentioned below support highly inflationary
currencies (at least not without modifications), so we try to avoid
what central banks around the world do - print fiat money at will.
The reason why inflationary currency is a bad idea is for another
article, but you can learn more in The Real Crash by Peter Schiff
or Paper Money Collapse by Detlev Schlichter. Or for the hardcore,
read works of Ludwig von Mises.

A few more concepts before we dig deeper into the practical parts:
Casascius Coin is a physical representation of Bitcoin. It's a
physical coin, which includes a written public key (or address
derived from the public key) on one side and a corresponding private
key under a protective element. In practice, it looks like this:

<img src="https://www.casascius.com/btcpile3-1200.jpg"/>

At first glance, it is possible to verify that the coin is issued
by the issuer (through standard security features that are hard
to copy). At any time, you can verify that the address actually
contains the nominal value of Bitcoin. After "tearing down" the
hologram, the coin is visibly and irreversibly "damaged", but this
process (called opening of a coin) reveals the private key, so that
Bitcoin can be sent (spent) electronically.

Something similar can be done with paper notes, though much less safely.

Using Bitcoin network for issuing LCC has the following general benefits:

- Transaction system (records of electronic transactions - of course transactions with physical coins are not recorded electronically, but their creation can be verified electronically)
- Network security: vast numbers of miners performing validation (decentralized issuance and transaction transparency)
- Pure peer-to-peer authentication of LCC (issuers need to trust something, but fraud is automatically detected, more below)

So what are the options for issuing LCC with use of Bitcoin network?

LCC fully backed by Bitcoin
---------------------------

The issuer of LCC issues something like Casascius coins. They can issue
only a limited number of that, so the real market rate will 
probably be higher than the corresponding Bitcoin value, but never
drops below this value (because in the worst case scenario, it is always
possible to "open" a coin and spend it like Bitcoin electronically).
This situation is analogous to gold-backed money because this money
should anchor to the "use-value" of gold. On the other hand, it
does not create counterparty risk as with "gold-backed" paper notes:
There is no politician or issuing organization that can say they
are breaking the tie between LCC and Bitcoin, because the Bitcoin
is contained directly in the coins. It's more analogous to a real
gold coin - could be worth more than gold content, but never less.

Currency partially backed by BTC and "colored" Bitcoins
-------------------------------------------------------

The same principle as above, but the initial market value will be
higher (the coins will be sold for more than nominal Bitcoin value).
It is also possible to create so-called "colored" Bitcoin.  For
example, if the initial issue is worth 1000BTC (so the backing of
all currency will be 1000BTC), the issuer will create a Bitcoin
transaction with one 1000BTC address. Every new coin has to be
created from this one address (by creating new addresses and funding
it from the initial 1000BTC address).

This transaction will be remembered as an initial seed and the issuer
will not allow (and community can verify this) mixing Bitcoins from
other sources with these Bitcoins (or if the mixing happens, LCC
coin ceases to exist and only the Bitcoin backing value can be used).

The advantage of this approach is the transparency and controlling
of the issuer (it is clear that he cannot print new coins as he
wants, because they must  all be verifiably derived from the original
1000BTC transaction). Fraudulent issuer (and forgers, which is the
same thing to me) can be revealed if anyone finds two coins with
the same public key (address). At the same time if the value of LCC
increases, the issuer can "change" coins to ones with lower nominal
value. For example, if the backing is 10% of the nominal value, it
means that the original transaction of 1000BTC equals LCC 10,000.
The issuer creates coins or banknotes with a face value of 100LCC.  This
value can become too high later (e.g. if the exchange rate becomes
100LCC rate = 100 €, it will not be easy to buy small quantities
of food). What an issuer can do is withdraw some 100LCC denominated
coins and create 10 coins with 10LCC denomination each. That does
not mean that they print new uncovered money (all of it must originate
from the initial transaction of 1000BTC). Basically, the issuer
will take 100LCC coin, "open" it (which physically invalidates the
coin) and create 10 new addresses which they will fund with 10LLC
Bitcoin value each.  New coins will have the new addresses, but
they can be traced back to the original transaction, so the overall
money supply did not change. One bitcoin can be divided into eight
decimal places.

The issuer must ensure that the public and private keys on the coins match
(if anyone reveals that they are cheating, just once, they are out
of business).

It must ensure that the private key cannot be read without degradation
or destroying of coins and that they never create two coins with
the same key (this can be verified: if someone gets two coins with
the same key, which is directly visible on the coin without opening -
can be even machine readable using QR codes or barcodes - they
reveal fraud performed either by the original issuer or the clever
forger that can create a similar looking coin).

**Summary**: The issuer creates a "subtree" in the transaction tree
of Bitcoin. At any given time, it is clear that the Bitcoins are
"colored", thus belonging to LCC. If anyone wants, they can change
LCC for the Bitcoin that is backing the LCC coin.  Should the
currency crisis of LCC happen, people will not lose everything, because
they can always use the Bitcoins that were used for initial backing.
Should the currency crisis of Bitcoin occur, (Bitcoin falls in value
significantly), nothing happens, because the Bitcoin network is used
primarily as a database to control the issuer of LCC. At any given
time the money supply is clear and people can verify how many LCCs
in circulation there are.

If any coin breaks, when the issuer verifies the validity, they can
replace it with the same face value of coin with different key
(because by breaking it, the previous owner learned the private
key).  It is possible to "change" coins to coins with lower
denomination with provably keeping the money supply constant.

LCC unbacked by Bitcoin
-----------------------

If the ratio is too low, for example, the entire currency comes not from 1000BTC transaction, but say from 1BTC transaction; it is possible to create currency that is not backed by Bitcoin at all.

It has a few drawbacks, but in this case the currency is not backed by Bitcoin but the issuer is kept honest, transparent
and controlled by the users of the currency.

The principle is the same as before, just the ratio will be different, for example 1LCC = 0.00001BTC.

In this case, there is one problem: the transaction fees for the initial currency creation.
They would be much higher than the BTC value of each LCC. Transaction fees are enforced by miners, not the network itself, so it is possible to convince a mining pool operator to allow such transactions into blockchain without transaction fees.

Alternatives to this approach of unbacked LCC creation is:

- The issuer is not transparent at all and can generate LCC at will and when they want (not good)
- Issuance of LCC with the transaction registration system (eg LETS) - transactions are not anonymous, information about
  newly created coins are only available to people with access to this system (if the system is fully transparent to all users,
  it means that all transaction are completely public in non-anonymized form, which is a huge privacy issue).
- Issuance of LCC using a public list of coins and their IDs on the web site of issuer. The web can quite easily be changed.
  There is a problem when people need to create new nominal values (how to invalidate old coins in a provably safe way and
  create new ones to keep the money supply the same?). 

Another advantage of a system that uses Bitcoin network is that the
issue of LCC can be decentralized. If the original issuer refuses
to cooperate or ceases to exist, the currency can be replaced by
actual coins produced by someone else, but still have the same value.
The total number of coins in circulation will not change - this
is verifiable in the Bitcoin blockchain. Trust is particularly
important in the initial release, but in case of conflicts in the
community, the issuer can be changed for another (which makes better
coins) and to keep the value and functionality of LCC.  If it was
the issuer of the LETS system or a centralized web site, such a
transition is not possible without the permission of the original issuer
(or creating a "fork", which creates two currencies and means huge
devaluation of both of them). On the other hand, if the transaction
system used for the initial creation of LCC is Bitcoin and enough
people trust the new issuer, coins are 1:1 interchangeable because
they have the same value (and the same origin transaction). Exchange
of coins from one provider for the coin to another provider will
not affect the overall amount of money available (transaction history
contains recorded transfer to the new public key, so the original
coin from the original issuer immediately becomes invalid - this can
be verified very easily "at the counter" or using mobile applications).
In this case it is a really good idea to use electronic
verification (if the merchant does not trust the new producer of
coins), and it's still a better alternative than having a central issuer
which can never be replaced.

Conclusion
----------

Bitcoin is much more than just a global currency that will change
the world. It supports the creation of new currencies, records
transaction history, verifies the money issuers and even supports
completely non-monetary applications. An amazingly powerful peer to
peer network and its protection against "double spending" attacks
can be used by anyone who wants to do something interesting based
on peer to peer and distributed consensus. One of such examples is
using LCC for creating currencies that are not based on Bitcoin as
a currency - only use the peer to peer network and its validation
and transaction history.

It is possible to create an alternative currency which, although
it may be issued centrally, provides its users with much more control over
this currency. It is also possible to use the huge ecosystem around
Bitcoin, including electronic wallets and the research that is
taking place every day around Bitcoin the currency and Bitcoin the
network.

