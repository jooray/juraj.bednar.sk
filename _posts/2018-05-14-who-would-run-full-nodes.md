---
title: "Who would run full nodes? Who would build the roads?: How to solve the scarcity issue of full nodes - a different look at the scaling debate"
date: 2018-05-14 14:23
comments: true
categories: blog
tags:
  - cryptocurrency
image: /posts/2018-05-14-who-would-run-full-nodes.jpg
---


I am going to provide a different perspective on the scaling debate, specifically looking for solutions to problems that both sides of the debate present, not only weighting which side is more important or true. I think that both sides have some valid concerns. But first of all, we must understand basic economic principles. What is money for? What are prices for? And how it relates to our mindset and scaling? All will become clear soon. Let's start.

<!--more-->

What is the cost of air we breathe? Zero. There are some supplemental invisible costs (if the air is not clean, we need to filter it, move to a place with cleaner air or bear the costs - to our quality of life and to our health and life expectancy).

The fact that the air is basically free is because it is abundant.

What is the cost of tomatoes? There is a finite supply at some particular time (tomatoes rot, so you cannot archive them for 20 years). So the cost depends on how many there are and what's their demand.

Back to scaling demand. It is all around two topics: Transaction costs for including a transaction into a block and "who would run full nodes if the blockchain grows in size?".

But first - scarcity mindset, when we internalise an idea that scarcity is a fundamental piece of nature and cannot be solved, is a poison. For your happiness. We should think how to make things abundant, not scarce. We use the pricing mechanism to solve real scarcity problems - if the scarcity is artificial, we should find ways to get rid of it and break through it. I don't want to live in a reality that has a major limitation that is man-made.

## Block space scarcity

Block space scarcity in Bitcoin (BTC) is set by an artificial limit. There is a reason for this limit and that reason is usually that there would not be enough full nodes and the network will be decentralised. Let's explore this reasoning first, but I promise there will be solutions.

The block size does not matter to miners. It takes the same proof of work to mine 1MB and 1PB block. There are costs in network bandwidth, but thankfully that's something that we are solving. Bandwidth is in exponential growth and there are protocols that can minimize transfer costs. Bandwidth matters much more to nodes, so let's solve the bandwidth problem the same way we do it with nodes.

First, let's not downplay it too much - a Bitcoin network with 23 full nodes would clearly be a problem. Any looser could launch a ddos attack on 23 targets and without full nodes holding copies of the blockchain, the network is gone and so is both our medium of exchange and "store of value". Also, with a larger number of transactions, there needs to be more nodes, simply because they will be slower. A larger number of transactions could be cause by the pure fact that the chain is longer (i.e. older), or by removing the scarcity set by block limits. If we have 2000 nodes that respond and are decentralized enough, and we can span our own node without asking permission, we are good to go. But if we have 2000 nodes that get slower and slower and we cannot do a transaction, because when you ask a node for transactions belonging to an address and they reply in 20 minutes, because they are overloaded, 2000 is not enough. We don't know the right number, but given the fact that the number of nodes is dynamic, we can discover it. Also, we can have too many nodes - clearly, there is not much of a difference between 10 million nodes and 11 million nodes. The last million does not add anything - to decentralization, to response time.

Now, look what the proponents of small blocks do - they say "we should artificially cap the number of transactions, so the cost of running a full node is not too high". So they are trying to solve a supply a demand problem of full nodes by creating scarcity somewhere else.

Why is this a problem? First of all, the scarcity drives up prices of transactions - as expected. But more importantly, the price mechanism is not used to solve the full node problem directly - only indirectly, in costs of running a node. But pricing is much more than "cost + margin", because it leaves out demand completely.

Let's look at Bitcoin Cash - removing the hard cap on block size (eventually, now it's 32MB for technical reasons of p2p protocol), leaving it up to the miners. How could this play out if we reduce scarcity of block size? Well - we still have the node problem, which is a valid argument. I'll get to that, but first let's look at the attack vectors.

## Attack vectors

We are trying to solve both scarcity problems - and all the related ones, like network bandwidth and storage - for two reasons. One of them is that we clearly want to have usable electronic peer to peer cash. We want to pay for our coffee, we want to save, everyone has their own reasons.

The other reason we want to solve these problems is that scarcity has a dark side - institutions can easily drive prices of scarce resources. Especially institutions that can print money on demand. BTW: This is what we've been doing too, all the cryptos is essentially more or less decentralized money printing at scale.

### Attack on scarce block size

We have seen some spam attacks on the Bitcoin network, we can speculate if these spam attacks were done by miners, "bcashers", illuminati, that does not matter right now. We know they happened and we know they can happen again. The important fact that innovations in protocol don't help too much - even if almost everyone uses lightning network, the cost of filling up 1MB blocks is essentially the same, we just hope that people will need to do less on-chain transactions. But using Bitcoin on-chain is still painful - slow and expensive, and so will be opening and closing of channels. And channels are not very deterministic, you might not find route, the counterparty needs the funds locked in the channel and closes it, etc.

If someone wants to attack a blockchain-based cryptocurrency with limited block size, it does not matter if there is a cheaper way to make that transaction, the only question is "how much does the attack cost and what would it achieve". I estimate that an attack on Bitcoin (BTC) network that would drive prices to an insane levels is about 4.5 BTC per day. Sure, I would not pay that out of my own pocket. But what if someone would want to do something bad to the network? Someone with another pocket that they can use for shorting, so if this attack is sustained long-term, it can even be profitable?

What we saw was basically small fish in the pond, what if the real sharks come? They can always spam the network, because the resource is scarce, no amount of segwits or lightning networks would do anything about it. How much would the same effect (priced in tokens, not in dollars) cost in Bitcoin Cash? 4.5*32 BCH=144BCH per day, if my original calculation is accurate. Of course BTC has discounts because of segwit, so the effect would be a bit different. Anyway, this is just rough back of a napkin calculation and it is the maximum cost, of course people would panic, send transactions, make the problem worse, so the real cost would probably be lower.

The result is: If we get to 100MB block size, the attacks (again, priced in native token) would be 100x higher. If we remove the scarcity altogether, it would show somewhere else - is that something that we can solve?

(Side note: For most people this is obvious, but let me make it clear. You cannot filter out spam transactions. If they are valid transactions with a transaction fee, any "spam-filtering" would be essentially permissioning the blockchain - a big no. Censorship resistance - permissionless blockchain - is one of the main features).

### Attack on nodes

The other way to disable the network would be to attack on the other scarce resource. If there are 23 nodes in the network and you ddos them all, the network is gone. You cannot even pay for a transaction, there is nowhere to write it. But here the effect has very different properties. This resource is robust and can react to market demand.

Let's say there are 2000 nodes and someone starts attacking them. As long as one responsive node that can give me a current copy of the blockchain survives, anyone can join in and create a node. And that is the smart thing to do - if you want to process transactions or make sure that your savings are still savings and not dust. We'll talk more about the attack a bit further down, but it's another type of attack that needs to be considered.

## Node scarcity

"But, but, but.....who would run the full nodes if we include everyone's drinking habits in the blockchain, all the government sponsored spam transactions...?"

This sounds like "But, but, but... who would build the roads?" It becomes even funnier when you realize that the people who say the former usually laugh at the latter. But it's the same thing - assuming blockchain becomes huge, running a node is a costly project (like building a road) and someone needs to do it. Why would someone do it?

Well, that's what we have market for. First start with people who would want to run a full node "for free".

Any service that depends on functioning blockchain, that is - miners, big merchants, exchange, ... This is the same as "a shopping center would build a road, so customers can get to the shopping center, increasing the value of the property". If a blockchain is not usable, the value drops and there goes the cashflow of miners down the drain.

Any big holder. This does not seem very intuitive, the holders should store private keys safely and they are good to go, right? Well, not really. Assume large-scale government attack. If you have tokens, what good they are if you cannot prove it (by having the blockchain with the largest proof of work) and cannot make a transaction that others accept? Even if you are a hard-core HODLer, planning to give your private keys to your great-great-great grandchild. If you want to inherit them something of value, it needs to be backed not only by private key, but by working, thriving network.

Any fan or member of the community. There are many people who run the node "just because". Just because they think that we need sound money. Or because they have this magic python script that harvests information from blockchain. This category contains many people.

Most people (including me) think it is sufficient and will be so even when the costs of running a node 10x. But let's consider other types of incentives. We should include price discovery to solve this problem. Forget about the cost of running a node (costs are very varied and subjective), let's introduce a profit incentive. There are several ways to do it - without even a soft-fork.

### Optimizations

Many people talk about optimizing the size of on-chain transactions, but they don't talk much about optimizing bandwidth, storage and computation. But if nodes are the scarce resource, it makes sense to optimize these. There are some people experimenting with optimizing the performance and speed of Bitcoin Cash nodes. You can optimize bandwidth by broadcasting differences and creating adaptive block compression. You can make use of more cores. You can optimize lookup algorithms.

You can also prune transactions, because you only need a list of unspent transactions for operation. The only reason you would need to keep a whole copy of a blockchain is to be able to give it to another node. This can be optimized too - make regular (once a month?) snapshots of the blockchain on Bittorrent and then only run pruned nodes with last few months worth of blocks. Is it secure? When you go through the blockchain and verify blocks and proof of work, then it is, even if the torrent is not trusted. Nodes don't need large hard drives, torrent seeders do - but they can charge a small fee for seeding (hint: you can use joystream to do that, right now, zero code needed). Anyways - you radically reduce the costs of running a node. Running a mostly pruned node, seeding through bittorrent, optimizing lookup times, making full use of cores and many other software optimizations reduce the cost of hardware and connectivity.

Optimizations still only look at the part of equation, but it is similar to "optimizing the size of transactions through segwit" - you don't do anything about the supply of scared resource directly, you just make it cheaper to use it.

### Tiered access

One way to introduce market prices is to have good, fast nodes that provide priority access to their paying customers. Some of these tiered providers would probably set up a peering structure, where they would exchange blocks and transactions for free. They could even allow slower access to general users for free. When you can, you run a node, you can become an infrastructure provider for those who need better access.

Amazon started with their cloud services precisely because they had a lot of excess resources and a lot of know-how. So they created something that was completely out of their core business.

If someone needs a full node because they run a mining pool, exchange, high profile e-shop or something like that, it does not cost much more to sell part of it's capacity to others that need the same level of service.

### Crowdfunding

The last option is crowdfunding and shared economy. When there are enough nodes, the service is free. When things become clumsy, you can do what storage coins do - you create a fund that rewards nodes, similarly to proof of stake. You create proofs that you own and serve blocks and transactions, answer to bloom filter requests, etc. After you prove that you are providing a service, you get a small cut of the fund for nodes.

Who would pay for the fund? Again - miners are mining a cryptocurrency that only makes sense for them if it has value. They can run the nodes themselves, but they are probably not all around the world, in different datacenters, jurisdictions, etc. Price discovery mechanism makes this more optimal. When there is an abundance of nodes, people decide to do something else. When you open a wallet and your balance is not updated, the wallet operator can run a new, faster node. Or if it has no operator (the crypto-way!), you can always donate money to a software that verifies the response time and quality of nodes and you incentivize users to make more nodes.

This market mechanism can become more capitally efficient than block size limit, because the size in Bitcoin does not react to supply on demand, the only price discovery mechanism is transaction costs (fees). The scarcity is fixed. If you transform from a "fixed scarcity model" to a dynamic model of nodes (practically removing scarcity in the block size), you allow for price discovery - how much do we want full nodes vs. how many there are. Also known as plain old good supply and demand.

When nodes become scarce, the balance on the fund starts to grow (again - no one wants to own or run a currency they cannot use). This funds nodes in a "proof of storage" way, the nodes are essentially "mining coins from fees" in a way. More nodes join in, the reward goes down (similarily to raising mining difficulty when more miners join) and the incentive disappears.

## Conclusion

While block size scarcity in Bitcoin is fixed, the scarcity or abundance of nodes is dynamic, permissionless and uses market forces to regulate supply and demand, increasing supply when required. The network reacts better to denial of service attacks - while spam attack on the network has a fixed cost, full-on ddos or "government force backed law against running a full node" reacts to supply and demand - when more nodes are required, more nodes join in. In the end, there is no need for all the grandma's of the world to run fully validating node on their Raspberry Pi. But when the number of nodes falls down and it becomes a problem, anyone can run them, as long as there is a way to get a copy of current blockchain.

So on one hand, we have a fixed-cost attack on the network targetting known, scarce block size. On the other hand we have an attack that would need to kill all full nodes, or it would not work. And the market (market is people who interact with other people) reacts fast to scarcity of full nodes and fixes the problem. Given monetary incentives (like tiered access or crowdfunding) just makes this process faster, although current incentives (a node is required for mining, exchanges, wallets and businesses) are good enough in my opinion.

My conclusion? When I see fixed scarcity, I realize I live in time of exponential technologies. There is a growing number of technical solutions to problems. The cost to running a node is storage, CPU power, memory and bandwidth. And we have an abundance of all these things, we live in the future! There's a spacesuit guy in a roadster in space. And yet we put a constant in a code into our heads, limiting us.

When someone asks "who would run a full node?", I start talking about roads and about people who build them today. Same t'ing.
