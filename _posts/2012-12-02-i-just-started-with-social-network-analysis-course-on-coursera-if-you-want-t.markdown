---
title: "I just started with Social Network Analysis course on coursera (if you want t..."
date: 2012-12-02 12:1
comments: true
external-url:
categories:
---
I just started with [Social Network Analysis][2] course on [coursera][3] (if you want to learn science, try coursera, especially Andrew Ng's Machine Learning, it's free and great:).

As it goes with hackers, we learn differently. We try stuff first and then if it does not work, we try to figure out what's wrong. So after introduction, I went immediately to my favourite search engine and found Gephi for graph analysis and downloaded a Facebook graph of my friends (and some other data for groups I am involved in). There is a [great tutorial][4] for what I did by Sarah Jay. So if you want to try this out with your friends, do it, it's super easy.

The picture is a Facebook graph of my friends. I used Force Atlas layout algorithm, so people who are connected to each other get closer. This created two "islands" (called components in graph theory), because they have no other connection (other than me, I am altruistically not represented in this graph:). The green island is a group of people I met at this year's Awesomeness Fest (except for Risa's brother that I have not met and he was not in Afest, but I talk to him over Facebook, so that's the lone green guy that does not have any other connection except for me and Risa). The Afest was a great experience I am talking about all the time to the people in the larger island. People who know me longer know that I always have these "masterplans" for changing everything. And of course there's a plan that's going to connect those two islands, I will do at least 6 connections by the end of march 2013 between these islands and some more by the end of the year :). While there's a repulsive force in Force Atlas layout algorithm moving these islands apart, there will be an attracting force soon and I promise I will make these nodes jump around and sing "I feel so close to you right now, it's a force field" (I tried that with the green guys several times, it's fun:).

The colors of each node was not done manually by me, but by a clustering algorithm. This is really interesting. Only from connections, we can create clusters of people. Kohonen's self-organizing maps have been traditionally used for that, but there are other algorithms. The green part is obvious, because it's not connected to anything else. What about other colors? It shows people from my childhood (and school) in two colors (close to each other), people from work and community around that in the other. Of course the blue part is people I know from another "social network" - you know us Slovaks, we are either first or last in everything. There was a first Flarion implementation in Slovakia, we have the fastest broadband on earth and of course we had something better than Facebook for years before Facebook - and it's still running. It's Kyberia and has friends, likes (called K! or Karma), groups and forums and a great subculture. Apart from Facebook, Kyberia.sk has crazy parties in a few cities and it's more about community and less about "look what I have eaten today" (OK, there's a forum for that there too:). So the blue guys are people I met using Kyberia. [I have done some cool visualizations of Kyberia too if you are interested][5].

I have not told this to Gephi, it was all grouped together by the clustering algorithm. Facebook knows much more about us than we think.

You may noticed that some nodes in the graph are larger than others. The size is based on between connectedness parameter, which roughly translates to how many connections there are in the graph. So if you want to influence me and my friends, you should go to the people with the largest node size and convince them. They will either convince me directly or convince my friends. There are my colleagues, some good friends that share a lot of connections there. But there's also Michal Truban from WebSupport (I know one more guy by the same name). We meet very rarely in person, but we share so many friends that if you influenced him directly (or gave him a nice flu virus), it is very probably that it would spread through my real social network and get me infected. The things is that it works the other way around too:).

Ideas and viruses spread through social connections. I like [this TED talk][6] about why this is important.

  [2]: https://class.coursera.org/sna-2012-001/class/index
  [3]: http://coursera.org/
  [4]: https://persuasionradio.wordpress.com/2010/05/06/using-netvizz-gephi-to-analyze-a-facebook-network/
  [5]: http://juraj.bednar.io/work/software/kyberia-viz/index-en.html
  [6]: https://www.youtube.com/watch?v=L-dPxGLesE4
