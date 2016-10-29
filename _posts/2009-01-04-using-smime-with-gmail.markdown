---
title: "Using S/MIME with Gmail"
date: 2009-01-04 14:29
comments: true
external-url:
categories:
---
I was doing some research for S/MIME and created my own personal S/MIME certificate using [Comodo's Free S/MIME certificate authority][1]. I was wondering if I should try doing this for GMail, but as I use gmail mainly for web registrations, I decided not to do so. Article in the link describes how to do it even if you only have a web interface and are using Firefox.  
  
Anyways, I was thinking about adding encryption support to Kyberia portal and how would I do it, so that's the reason I researched it. Using newly proposed [HTML 5 local storage][2], you could store keys locally. While this would probably be the most secure way of doing it, it also requires, that the keys would be stored in each user's browser (so using different browser for viewing the data is not possible).  
  
Another option is to store keyring on the server, but encrypted with secure passphrase. It could be accessed using JavaScript on the client side (so the server never sees unencrypted keyring). Public keys could be stored locally. If done properly, we could implement a full-scale PKI for Kyberia e-mail service too. Wouldn't that be great?

<http://richard.jones.name/google-hacks/gmail-smime/gmail-smime.html>

  [1]: http://www.instantssl.com/ssl-certificate-products/free-email-certificate.html
  [2]: http://www.whatwg.org/specs/web-apps/current-work/multipage/structured-client-side-storage.html
