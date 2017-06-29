---
title: "Detokenizing cryptos"
date: 2017-06-29 14:00
comments: true
categories: blog
tags: bitcoin
image: /posts/2017-06-29-detokenizing-cryptos.jpg
---

With the recent Initial Coin Offering (ICO) craze, one cannot stop
thinking if all those tokens are really required for the applications or
if it's just a way to raise capital (crowdfund).

While I appreaciate new ways of funding Internet protocols and
decentralized applications, there are drawback of doing it this way, one
of the main drawbacks is increased transaction costs, especially if the
tokens don't come with their own network. Also, if the software is
open-source, what blocks people from taking the code and just removing
the token and either getting rid of it completely or just replacing it
with the network's native currency (like Ethereum or Bitcoin, depending
on the underlying network).

<!--more-->

Most of the tokens are an afterthought to raise some money for a
decentralized project. This part is nice and I wish the authors of
these projects get paid something.

# Token drawbacks

There are a few drawbacks to this. First of all, the users of these new
projects still need the network's native currency (Ethereum, Bitcoin,
...) to pay for the transaction costs. So the user of a decentralized
application needs to buy some token, they usually don't know how much in
advance, so they will probably overpay. Then they need a wallet with the
native token to make any transactions on the network.

Let's imagine we have a decentralized ride-sharing app and a "kilometer"
token to pay for the kilometer (it is divisible into 1000 pieces, so you
can pay for each meter of the ride). In order to call a car on-chain,
both parties also need to have Bitcoin (if they run on
[Rootstock](http://rsk.co/)) or Ethers (if they run on Ethereum). So we
have a user that needs to buy two weird currencies on the market. And
there is currently no way to remove the native token (you can buy the
"kilometer" token on a decentralized exchange on-chain, but you cannot
do it the other way).

So the first problem is transaction costs. The second problem is the
size of the network. Since all users need the native token as well as
the "app-specific" token, the network of native token users is by
definition larger. So in effect we are reducing the network effect -
just because we wanted to do a crowdfunding in the first place.

The token also adds complexity to the smart contract, which increases
an attack surface. If there is no token, people can safely store their
Ether and contract itself not owning any value is a good thing. If it
goes wrong, we just upgrade the contract (trustlessly), release new
version of application, copy the state (like reputation of the drivers
and users) and go on. You can partially do this with the tokens, if you
can identify the problem.


# Advantages of tokens

Of course, there are also advantages. First of all, the tokens are a way
to finance the initial development. I will mention other ways of doing
that.

The other advantage is that the token allows for dynamic pricing of the
app's value (you can trade the "kilometer" token on the market and it
will automatically adjust according to supply and demand - although in
this case, the adjustment is not such a good idea, because in this case
the supply and demand is based on current traffic, there's a difference
between the value of one "kilometer" at 8am in the traffic jam and at
4am).

Another advantage is an indication of demand for the service. I would
say that this advantage is not as good as it might seem, because it
could be just a pure speculation on all cryptos and ICOs, which is what
we're seeing now. There is much less demand for people to actually
implement the apps than there is a demand for buying a token and selling
it later. It's not a bad thing in itself, but I would take the
information about demand coming from a token offering with a grain of
salt. A big grain of salt.

# Detokenization

Detokenizing means taking the project's open source code apart and
removing the token. If there's incentive mechanism needed, we cold
replace that with the network's native token (bitcoin, ether)
which is required anyway to pay for transaction fees.

Half of the really useful projects I saw don't need a token and
it actually makes things more complicated and does not add too much
value for the users.

Detokenizing means reducing the transaction costs.

First of all you could argue how the projects are going to get funded?
Well, if the code is open-source, it's not my problem. Here's an
analogy: Red Hat was creating Red Hat Linux. Someone (called a Centos
project) took the open-source code, removed all the trademarks and
recompiled and released it for free. They didn't ask the Red Hat's
investors if they could do that and this possibility came from the fact
that the code is open-source. (BTW: Centos has been acquired by Red Hat
later and they still continue with this strategy of releasing "free"
versions of compiled Red Hat code).

So by making a decision to open-source all your code (and whitepaper,
documentation, etc.), you are allowing people to do this - explicitly.
You have an option of not releasing the code (at least for the client
app), but that is usually not a good decision in the smart contract
world, because people don't tend to trust some random code with their
cryptos.

By detokenizing, most projects would gain security, they would get
better network effect (removing transaction costs in entering the
network).

# Other ways of funding the project

So how are the projects supposed to get funded if someone is
detokenizing them? What is the alternative?

## Crowdsale without token

You can still do a crowdsale. With the decentralized ride-sharing app,
you can sell ride discount credits and have a simple token outside your
main smart contract that handles the tokens. You can then allow the
discount contract to apply a discount per transaction. People would
still pay with the token's native currency, they would only get a
discount for the credit. After some time (the credits could even
expire), you would be fully converted to the native token of the network
and you can kill the discount contract. Or do another crowdsale for new
features.

How is it different? Well, first of all, it makes much less sense for
someone to fork your code, they would not gain much. Also, you are
keeping the native currency's network, because new users that did not
participate in crowdsale can just pay with the cryptos they are already
using. Lower transaction costs - that's what this new thing is about
anyway, right?

Also, you could limit the transferrability of the tokens, making it
difficult to create a secondary market. This way you get information
about the demand for the service, because speculation would be much more
difficult. You cannot easily transfer the token to third parties. You
can trade your private key, but that's all. You can of course allow
the trading, if that is what you think is better for the project.

## Fees

Also, you can just charge fees for your service, as any other company
out there.

## Token appreciation bet

If you are going to build a killer app that everyone wants to use, you can
get a venture capitalist (fund) to finance your project. Or you can do this
bet yourself. Here's how this works:

You use half the money you get from the VC to pay for the staff and to develop
the project itself. You use the other half to buy the native token.

When you are successful, you provide a killer app that will cause a massive rise
of value of the native token (that's the bet).

To make it clear, let's say I create a killer decentralized app that everyone wants
to use. This would cause appreciation of the token value, because people need it in
order to pay for transaction fees and any other cost of the application.

This model has some interesting
properties, notably - if someone improves on the project and creates a better
version based on your work, they are not your competition. The vcs still get
a return of their investment, even if the return comes from a competitor.

So what would normally be your competition becomes your colleagues.
You are decentralizing innovation in a way that makes you embrace competitive
experiments. This supercharges the market forces.

So you can invest in the native tokens, still create great projects,
add value to the ecosystem and get a nice profit out of it. You can
support the whole ecosystem, help other companies get their apps done
too, because they too will grow your investment.

Why would the VCs invest in this way? Why not just buy the token?
If your project makes real sense and adds huge value to the whole
ecosystem, you will create appreciation that would not happen otherwise.
And you still get a hedge against someone just stealing your idea (or
some implementation that did not yet reach a product/market fit) and
doing it better. These two cases would still not happen if the company
did not exist.

Make your competitors work for you, make profit from the value added
by other projects and build this crypto utopia together.

This model of course works only for huge projects that add a lot of
value. But there are a lot of these that still need to be done. We are
building a parallel, decentralized infrastructure. That includes a
parallel financial system, parallel shared economy, prediction markets,
notary services, etc. If you think this is the future and you can help
building it, buy some cryptos and go for it. If you need to fund the
development, make it work (VC money, investors, ...). If this is the
future, which many of us believe it is, it does not matter if any one of
us is successful.

There's a lot of work to be done. Less ICOs, less tokens, more UX,
less friction, lower transaction costs, better support for
smartphones(!) and a brighter, decentralized and free future awaits!
