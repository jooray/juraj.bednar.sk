---
title: "Are we going to be slaves of algorithms?"
date: 2013-04-17 11:07
comments: true
categories: blog
---

Server idnes.cz [published an interview with Josef Šlerka](http://zpravy.idnes.cz/muzeme-se-stat-otroky-algoritmu-jimz-nebudeme-rozumet-varuje-expert-na-nova-media-g21-/kavarna.aspx?c=A130409_172339_kavarna_chu), an expert on new
media ([translation by Google Translate](http://translate.google.com/translate?sl=cs&tl=en&js=n&prev=_t&hl=en&ie=UTF-8&eotf=1&u=http%3A%2F%2Fzpravy.idnes.cz%2Fmuzeme-se-stat-otroky-algoritmu-jimz-nebudeme-rozumet-varuje-expert-na-nova-media-g21-%2Fkavarna.aspx%3Fc%3DA130409_172339_kavarna_chu)). He warns that we can become slaves to algorithms that we do
not understand. This issue has been raised repeatedly in media. I
don't doubt the fact that the algorithms are much more important in
our lives than ever before. I do not think that we understand all
algorithms - especially neural networks are problematic in this
regard because we do not know exactly why the network made a
particular decision. We can only tell how well the network performs
given the inputs and outputs used during training phase. Corner
cases are sometimes unknown and analytical understanding in extreme
situations is quite difficult. Let me, however, explain my slightly
different and less pessimistic view on the role of algorithms in
our lives.

Mr. Šlerka mentioned an
experiment, in which Lukasz Barabasz showed that given location
information of people during a longer time period, he is able to
predict a person's location the next day at a given time. He used
data collected from cell towers. The problem in this case is not a
prediction algorithm - it is quite simple and it performs pretty
well (and in this case, we understand it pretty well too). We are
just being predictable. If you have something to worry about in
this example, it is the possibility to collect data (what Mr.
Šlerka also mentions). There is even a scarier algorithm
that can identify a particular person by their movement itself
(even if it's recorded with a different device). Our movement is
like a fingerprint.

The problem is not the algorithm. The
algorithm is like a mathematical equation - when you invent it, it
exists. Inventions like this cannot be "undone" - it is not
possible to forget or ban it once it's out. Algorithm is like an
idea. If we really care about our privacy, blaming the algorithms
will not help. We need to make sure that these algorithms do not
have enough inputs to do things we do not want them to do. Is it
possible to create anonymized mobile phones, where the operator
know how much to bill us, but does not know our location at any
time? I bet it is possible, but is there enough consumer
demand?

Quote praised in headline of the article reads (translation from Czech is
mine): "With the advent of technology and applications of
artificial intelligence and neural networks, the majority of people
loses understanding about what a computer does, and how it makes
it's decisions. In other words, we become slaves to algorithms we
do not understand. "

Let's talk about two different
methods of decision-making - i.e. "table-based decisions" and
"fuzzy" decision. Computers have been criticized for being to
discreet, for having no smooth decision area. They were not human
enough. An example "table" decision process is for example deciding
whether an ATM (algorithm) or a bank clerk (person) should let you
withdraw money from your account. Both decisions are based on the
same table: If the available account balance is greater than or
equal to the amount the customer wants to withdraw, customer gets
their money. If it is less, do not allow this withdrawal. The
algorithm is the same for human beings and machines and we
understand it very well.

How about a loan? Bank clerk can say
"This customer looks insincere" or he "was too nervous."
Alternatively officer does not trust that the underlying business
plan of a company asking for a loan is sound. This is not a
table-based decision - the bank representative decides on the basis
of their feeling, which can be justified, but surely it cannot be
explained in exact terms. Another bank clerk could decide
differently.

The algorithm for bank loans is (or
can be) similar to this line of thinking. We taught the algorithm
that people with certain credit profile do not pay back. The input
can be: financial behavior (as learned from the customer's history
in the bank), age, number of children or any other additional
information available to the bank. If the algorithm is based on
neural network, it could just say "loan rejected". No explanation.
In most cases, the neural network's output is a score on some scale
(for example 0 to 1), in which case a negative decision is
something closer to zero (or less than some predefined threshold).
We do not know why exactly the network's output is a particular
score.

A common example of algorithm critics
is high frequency trading (HFT). HFT algorithms are used very
successfully for several years. A human being simply cannot make
decisions about buying and selling of a variety of asset classes
several times per second. Can they cause a crisis? A [common example](http://www.michaeleisen.org/blog/?p=358) that they
can get "crazy" is the book The Making of a Fly by Peter
Lawrence, which sold on Amazon marketplace for $1,730,045.91 due to
an algorithm that set this price. The problem was that there were
two competing algorithms. They go through Amazon marketplace and
try to find rare products and offer them at a higher price than
other sellers. When someone buys a book from a seller that has a
higher price (e.g. due to higher reputation of the seller), the
author of this algorithm orders the book from a dealer with a lower
price. When it arrives, they deliver it to final customer and keep
the price difference as profit. It gets interesting when the
original item is sold and the only vendors are the automated
trading bots. They start to raise prices to top up the best
available seller. And depending on the periodicity of checking and
harvesting the marketplace, the price starts going up. Neither of
the seller has the goods available. They rely on each other for
delivering the nonexistent product. The algorithm tries to make a
profit and this corner conditions are not accounted for - so they
get "crazy" while seeking profit...

Are we different? During 1636-1637 we
witnessed one of the first bubbles. In the Netherlands, tulips have
become popular and everyone wanted this beautiful flower (or it's
bulb actually). Many people wanted it because of it's inherent
beauty, but a lot more people perceived the price increase and
wanted to buy cheap and sell for more later. The result was a
[bubble and its collapse](https://en.wikipedia.org/wiki/File:Tulip_price_index1.svg).
In the winter of 1636-1637, some bulbs
changed hands ten times a day. During the peak of the bubble in
February 1637, some onions sold for more than ten times the annual
income of a skilled craftsman. People went crazy for a while. Do
algorithms really behave differently to us or they are just getting
more similar to us? Isn't that what worries us?

Shai Danziger of the University of
the Negev has done an interesting research on the Israeli judicial
system. He examined the results of 1112 parole hearings. The judges
had an average of 22 years of experience and their decisions
accounted for 40% of cases of parole decisions during the
investigated 10-month period. The results are quite uncomfortable
for justice: Judges decided in favor of parole before their morning
snack, lunch and before the end of working hours with much lower
probability. Parole was granted in up to 20% of cases. Immediately
after a meal, the chance of a positive decision was 65%. Note that
this is no small statistical error, but a significant
difference.

Our decisions are controlled by a
number of factors we do not understand. Our neural network in the
brain makes decisions that we not only don't understand, but they
are not consistent. The level of certain hormones in our body,
mood, concentration, and hunger, even the lighting, biases us.
These biases are significant and affect lives of people around us
(such as judges granting or not granting parole based on when they
ate).

If we are asking ourselves whether we
are slaves to algorithms we do not understand, I would first ask:
Aren't we slaves to senseless human decisions we do not understand
right now? The algorithm decides consistently and if it is flawed,
we can at least quickly find out and fix it. Can we fix people this
way?

Personally, I would not neither
overestimate nor underestimate the role and threat of algorithms.
They are tools for people. Let's talk about what data are collected
about us. That is what gets abused. If it is a person looking at a
data or a highly efficient algorithm, it does not make such a
difference. What external organizations (or people, companies,
States) have power over our lives? Rather than adding algorithms to
what we should "fight against", I decided to become interested in
the necessary conditions for their functions - data collection.
Let's not fear the algorithms. Let's fight against everything that
we can control that limits our freedom. Whether it's an algorithm,
hungry judge or greedy state backed the wrong econometric
model...

