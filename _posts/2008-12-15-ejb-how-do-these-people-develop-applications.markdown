---
title: "EJB: How do these people develop applications?"
date: 2008-12-15 0:21
comments: true
external-url:
categories:
---
I am having several problems with creating architecture for our application at work. It turns out, that the current architecture is a "golden standard", that means, that programming these days suck.  
  
I just read some books and articles about this whole thing.   
  
The main problem seems to be, that we require some kind of fat client for our application, which should access our domain object model, which is created as JPA entities. Calling these over remoting interface such as Java RMI, IIOP or SOAP/HTTP is very slow, because of possible mappings (a customer can have several orders, should we send the orders over the wire everytime we need one or two of them?).  
  
It seems, that the golden rule is to create Data Access Object, which we currently do. That means replicating a lot of work. Why having two classes for each entity. Is there a way out?
