---
title: "AI: Perfecting the Perfect Word"
date: 2008-11-08 15:2
comments: true
external-url:
categories:
---
This one will be a little bit technical. We had a party with customers and some were discussing project [Perfect Word][1]. Basically it is a generator of "good sounding words" in English (can be used for names of companies, domains, ...). One of them has even used it.  
  
Anyways, today in the morning, I did a little thinking and I think I found a way to do it much better.  
  
Now, it is basically a backpropagation neural network (for those who do not know what it is -- it is something, that can learn with supervisor telling him what is good and what is bad), that is trained on words from english wikipedia. By dividing the word to triplets, they are fed on neural network, which says (on a scale from 0 to 1), how good the triplet is. When you multiply the triplet outputs, you get the word quality (it's a little bit discriminating for larger words, but that's a good thing in our case -- you want your company name to be short).  
  
Now we have a module, which can tell us the word quality. But we don't have the words. Good old Charles Darwin and a bunch of evolution biologists and other scientists found out how evolution works. So we can use it in computing. So -- let the good words survive and multiply and the bad ones' genes die out.  
  
Anyways, there is one little problem with my old approach and that is the representation of letters. It's one neuron per letter (so A is 1 and 25 zeroes, B is 0, 1 and 24 zeroes, ...). If you want triplets, you get 78 input neurons, which results in 1170 weights you have to learn (if you have 15 neurons on hidden layer). Quite too much and the represantation is not wise for this.   
  
So what about this: a letter would be two or three neurons (on scale 0 to 1). What are the values? What two or three numbers is "A"?   
  
This can be learned without supervisor using [Kohonen's Self organizing maps][2]. This is really a basic concept of clustering the data. First, we count coincidences of letters, so each letter has a vector of 26 numbers, which represent the probability of that letter occuring next to each of the letters of alphabet respectively. So we have 26 vectors of length 26. We feed them to Self organizing map (scaled to how often they appear in text) and get a 2D or 3D map.  
  
The result will probably be (I have not tried that), that vowels are groupped together, "similiar" or interchangeable letters are together and each letter gets representation space so large as it's occurence in the original text.  
  
Now, we add the self-organizing map before the neural network, which will be much simpler and the input organization will be much more natural for the learning process. It's like sorting out things and then teaching someone something systematically rather than chaotically (alphabet ordering is more or less chaotic -- or arbitrary -- it does not represent any real ordering, that has any significance in the text).  
  
What can we get out of this? First, I believe it will be easy to teach the neural network also quaternions (which was simply not possible with so many inputs, or at least I could not do it in a normal time -- to many free variables). Then, I believe using outputs of triplets and quaternions (is it a proper english word for that? fourlet?) together will be more representative (and strict) and it could rule out lots of bad words. And it will be faster.  
  
I don't need that anymore (I have a company name), but anyone willing to try it, sources for the old project are on the project page, idea is simple. If you have any results, please mail me, I'm pretty interested if it works as I think it will.

  [1]: http://www.digmia.com/index.php?option=com_content&view=article&id=55&Itemid=56
  [2]: http://en.wikipedia.org/wiki/Self-organizing_map
