---
title: "Ethereum and other altcoins"
date: 2014-03-26 15:03
comments: true
categories: blog
tags: cryptocurrency
---

As you all probably know I am a fan of Bitcoin, but I am not that much of an alt-coin guy. What I mean by that is that I think that a main property of money is that it is universal means of exchange. It is good that you can store your wealth as savings (for example in gold or oil). It is also important to choose a unit of account. But what matters is if you can use the money to exchange it for the stuff you actually want. People think they want money, but they are not much thrilled about my one hundred trillion Zimbabwe dollars. Why? Because it can’t buy anything.

I think this is one of the most important drawbacks of Bitcoin right now - it is not universally accepted. On the other hand, it is gaining traction and I like both the ideas behind Bitcoin and its technological ingenuity.

For me, switching to another alt-coin has to be justified by a significant improvement - one that would make the switch worth the loss of the network that accepts Bitcoin. I am all for playing with alternative ideas - I just think that what we need now is not ideas, but acceptance.

So far the main reasons behind developing alt-coins (except for fun and pre-mining profit) has been a different mining algorithm and speed of confirmation. I’ll touch both of these and then I will cover Ethereum.

**Commodity mining**


Litecoin was the first prominent alt-coin being developed from the Bitcoin source code with a different algorithm for mining. It’s called scrypt and it was supposed to be an algorithm that is hard to implement in specialized mining hardware, meaning that anyone could mine it on their computers. We now know that they have been wrong and KNCMiner just announced their scrypt miners. People have been mining Litecoins and other litecoins running on scrypt on their more expensive GPUs. A CPU is a general purpose processor and of course you may make it more difficult to create specialized mining equipment by being as general as possible (requiring both computational speed and memory access). Eventually, it is always possible to create faster specialized equipment. But the real question here is why to do that? Of course the common answer is that we want common people to perform mining and thus distribute the coins among the people. The beauty of the idea behind Bitcoin is that the mining is not an end by itself. It's a mean to provide network security. You need to make sure that more than half of the network is honest to maintain security. Mining could be also called block validation. I understand that people freak out when they realize that someone with enough money could take over the network by secretly manufacturing this required computing power and taking over the network. The question remains: Would people still use it? Would they want to undermine the network or just make it stronger so their investment pays off? Of course, there's no clear answer and depends on their value system. If they feel threatened by Bitcoin, they could do that and undermine it’s legitimacy and trust people put in it. How difficult would it be to start new alt-coin with slightly different algorithm, so their equipment is a piece of useless metal trash?

Now take the “commodity mining hardware” train of thought for a while. Anyone can mine it. How many huge organizations have commodity hardware that is underutilized at least a certain amount of time? Google, Microsoft,
 Amazon, NSA, … I don’t mean to say that they would do it, but they might as might anyone else. What about computer factories making supercomputers? Don’t they want to test the equipment they manufacture for four days before they ship it to their customers? Oh and when this currency is taken over and another one that works best on commodity hardware is popular, they just change the mining software they use.

What I really see is a socialistic sentiment - an idea that poor people’s old laptops could make this currency. But mining is not only about making new units of currency, it is about making it secure. Making it commodity-only friendly is a bad idea. I would rather trust a huge mining power of Bitcoin ASIC miners than 10 thousand old laptops. And would it work? The more people that invest their computing resources into mining, the less reward they collect (per computational unit). That effectively drives profit margins on mining to zero. So not only the network would be less secure, it would not be profitable for the common men. The incentive may be higher in people who invested in the computing power already - say from taxpayer money - and don’t care about profit. Like the NSA.

**Confirmation time**

Now about the confirmation time. Litecoin’s mining algorithm is targetted for 2.5 minutes blocks on average. That means that blocks get “confirmed” sooner, because they appear in the blockchain. But do they? Actually, no. For the block to be confirmed it means that it is more difficult to cause the blockchain to fork and undo a confirmed transaction. Satoshi showed in his original paper that the probabilty of this happening decreases exponentially with each new block. But in the end, it’s about computing power. Let’s say that we need a trillion operations for one block in Bitcoin. Then comes Litecoin and says that the block needs a quarter of a trillion operations, so the blocks come faster. Say the mining power is the same in both networks. Say I would trust a transaction to be confirmed after it’s been included in 5 blocks of the blockchain. How many blocks in Litecoin network would I need to do that?

You might say that it's after five blocks (and they take a quarter of the time), but that's actually not true. If an attacker had significant mining power, the probability is not dependant on the number of blocks, it’s based on number of operations performed. 

So given that the mining power (operations per second) is the same, you would need to wait 20 (5 times 4) blocks in Litecoin network to have the same confidence and that’s exactly the same amount of time (probabilistically speaking).

**Ethereum**


I have to admit, that Ethereum is the first alt-coin that has significant changes to Bitcoin that would make me consider it. One special exception is **Zerocoin**, which I love and hope to see implemented in every alt-coin and possibly the main Bitcoin blockchain.

Ethereum has this idea of advanced scripting language at it’s core that is Turing-complete. Being Turing-complete, it can compute any function there is, making it a programmable currency. A little bit more about it later.

They also play the “commodity hardware” mining tune which I totally dislike and do something which has been a big “no-no” in alt-coin community and that is called pre-mining (or creating units in advance). The idea is that to fund the development of Ethereum, some of the currency will not be allocated to miners, but will be taken by a development team and redistributed to authors and contributors. There’s also this idea that they will pre-sell some units for Bitcoin, which makes me wonder - do they even trust it's going to be the currency that they are willing to sell their superior currency for some older currency? I understand that they want to make it valuable and that they hope that the artificially set pricing will be set and go on with the currency. This all reminds me of social engineering and  central planning. Bitcoin is simple. It is not overengineering, it does not have many weird arbitrary rules. It is simple and that’s probably the author’s intention. Now Ethereum has not even started yet and I already see the discussions about how it will be allocated and who will vote about who gets the "development" money. It is exactly this reason why I don’t like democracy. There’s no direct relation between those who pay and those who receive.

I understand that people want to get paid for their work and I have no problem with it. But this smells with committees, voting and conflict. What about making a Kickstarter-like crowdfunding. Want to have this project done? Contribute some Bitcoins. Create a prediction market for Ethereum prices and you can even denominate a crowdfunding idea in Ethers. Make people vote directly with their money. 

Please learn from Bitcoin. There is this "official" Bitcoin foundation that people are talking about. People are saying that it should not represent Bitcoin users, talk to politicians, … I understand that there are people who are for it. But what is wrong with people wanting to vote with their money? You want this feature? Pool resources with others who do it and crowdfund it. Then it will be about users’ will - what gets funded, gets done.

No arbitrary pre-funding, constants, distribution, votes, ...

I also don't believe that unlimited (but slow) inflation is neither required nor wanted, but I can live with it (unlike with traditional fiat money, the inflation rate will be known in advance to everyone and it will directly affect the future price of Ethers).

**The halting problem**

In computational theory, there is a well-known and proven fact that you can't tell about any general program if it will ever halt or just compute forever. It's not that we have not yet found an algorithm to do that, we know for a fact that it's impossible (in general Turing-complete programs). This is one of the basic findings of computer science that we have to live with.

I believe that the fact that Bitcoin’s scripting language is not Turing-complete is a design feature. If you can't create loops (and jumps), you create a limited language that you know for sure will end in a limited time. If you don't allow loops and instructions take certain amount of time, you know that the program will end after umber_of_instructions*slowest_instruction_execution_time. This trick is not new and there are many languages that are limited on purpose this way, for example, DTrace scripting language used for debugging kernel and user-level programs in some operating systems (Solaris, Mac OS X, …). The miner fees are also directly related to the  size of a transaction, meaning that the longer  program you write, the more you have to pay in fees to process it. 

The problem with the scripting in the blockchain is that every full node has to process it and store it. Bitcoin also limits the number of external inputs making the execution completely deterministic - meaning that all nodes interpret the code in the blockchain exactly the same way. You can not rely on current time (you can rely on block number to represent time). You cannot rely on external inputs (like a content of a website) because they can change over time.  

Ethereum can “solve" the halting problem by collecting fees per processed instruction. On the other hand, do we actually need this complexity to do what we need to do? The power of Bitcoin contracts is still not fully used to this day and yet we want to create something better. But if we regard the determinism and time-bounded execution constrain as a feature, not a bug, is it an improvement?

**Conclusion**


I am not against anyone developing a new currency. I am not expecting huge popularity of Ethereum either. Vitalik Buterin explained in his Bitcoin Magazine article that he wanted to make cryptocurrencies more general. He compared it to creating something more like TCP/IP instead of SMTP. I have another analogy: Everyone is using e-mail to communicate. There is also a clear room for innovation here - encryption and fighting spam. Why hasn't anyone switched yet? It's because of the network problem - the more people use it, the more difficult it is to make everyone switch. And if encryption and spam aren't good enough reasons for people to ditch good old SMTP, I think Ethereum has to offer something more than a new philosophical approach to be an attractive alternative to Bitcoin.

On the other hand, I wish them well and I hope they succeed. I may even buy some Ethers just for the casino-like rush and being able to tell people I was one of the first owners of Ethers. I will be really excited when there are 10000 shops accepting it as a payment. And unless there’s much better PR and significant practical improvements over Bitcoin, I doubt that's going to happen.
