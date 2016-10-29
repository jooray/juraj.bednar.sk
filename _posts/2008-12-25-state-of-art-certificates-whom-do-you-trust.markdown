---
title: "State of art certificates (Whom do you trust?)"
date: 2008-12-25 19:32
comments: true
external-url:
categories:
---
In 2003, I wrote a short article for [2600 magazine][1], where I disclosed how I got proper SSL certificates from various certificate authorities using a mail client, browser and a fax machine. Some of them were even for free (i.e. untraceable back to me).  
  
It seems, that this idea is kind of [revisited now][2]. So, here's my article from 2003.  
  
**Whom do you trust?**  
  
Issues of several CA's authentication mechanisms  
  
                          (c) 2003 Juraj Bednar  
  
"Security is a process", says a common security saying. I would also like  
to add, that security is about processes. In this article, you will also  
see, how security of different organisations affects your own security.  
  
Most of the web communication in today's "secure" Internet is protected  
by a set of protocols defined in standard, called Transport Layer Security  
(the successor of SSL: Secure Sockets Layer, developed by Netscape). While  
the protocol itself is quite strong and the data are protected by mostly  
safe ciphers and technologies, there is one weak point, like in many  
asymmetric cryptosystems: distribution of keys (or PKI, short for Public  
Key Infrastructure).  
  
Asymmetric cryptosystem protects its users against a passive attack  
(sniffing).  Using Diffie-Hellman key exchange or RSA, it is very  
difficult to eavesdrop on someone's traffic. There is one widely  
known attack, known as Man in the Middle. Using this technique, the  
communication channel is being actively attacked. Parties, while thinking  
they are communicating with each other, are effectively talking to an  
attacker, who acts as a middle-man.  
  
A solution to this is a safe distribution of keys. If both parties know  
each other's public key, they can safely communicate. So the problem with  
today's asymmetric cryptosystems is not about ciphers - they are quite  
strong. It is mostly about key distribution. PKI comes as a solution to  
this, where communicating parties own only a few public keys of so called  
Certification Authorities (or CAs).  These are trusted third parties,  
who pick an identity and a public key of a user or organisation, put them  
together and "stamp" them with their digital signature.  When you start  
communication with someone, he presents you with a valid certificate.  
You (or better your browser - if we are talking about web) check the  
digital signature, the name of a party, etc. If you trust the CA, that  
issued the certificate, you can safely communicate. This last "if"  
is the big one.  
  
When I wanted a certificate for my own website (jurajbednar.com), I did  
my own research.  The result was quite shocking. I was able to trick  
lot of them to issue me a certificate, when they really shouldn't.  
  
The case of RIPE  
  
I was quite shocked, when I found an authority, which did authorisation  
using a whois registry.  The process looks like this: You fill a form  
on their webpage (of course using plain unprotected http. Why would a  
CA use https?), submit CSR (certificate signing request) they'll send  
you a confirmation e-mail, you click the link and choose, which of the  
contacts (administrative, technical or zone) should they contact. They  
send a mail to the contact you choose, after clicking on a link in the  
e-mail, they issue a signed certificate.  
  
Now, wait a moment. There are some questions to be asked. How is a contact  
in a whois database meant to authenticate someone over Internet? How  
do we know he is authoritative to decide, if someone should issue a  
certificate? Do they know, that most domains in RIPE do not have mnt-by  
entry, which protects the contact by password, or you have to use PGP to  
make changes?  Anyone can make changes to contacts without mnt-by. How  
could an unprotected e-mail that can be sniffed on the way be trusted  
as a way to determine whether to issue a certificate?  
  
The CA is on http://certs.ipsca.com/. They have quite low prices and  
even issue free 6-months certificates. They are in MS Trust Root (happily  
not in Mozilla), so anyone with MSIE 5.01 or higher trusts them, unless  
they decided not to. One of my friends, who operates an Internet shop  
wanted an SSL certificate, so I told her, that I'll try to get one for  
her. I explained, that I'm doing some sort of research and I want to  
trick the authority to issue it without using access to her accounts,  
web space (I hosted the site for her) and without she or her colleagues  
helping me to. So I could be literally anyone, but in this case, that  
was part of my research, I had the permission, so I did not break law.  
  
So first, I changed her contact in RIPE (which of course did not have the  
mnt-by entry) to my e-mail address. I also added the changed line with my  
address and correct date of change (these are not added automatically by  
ripe). The entry was changed by a robot. She did not get an e-mail about  
this change. Then I generated a key, a CSR, filled the form, got the mail,  
clicked on the link. Then the page said, that they could not contact the  
RIPE registry, so they filled the contacts with hostmaster, postmaster  
and webmaster aliases of the particular domain. While I could receive  
mail for these addresses (I am an administrator of her mail domain),  
I decided to be cheeky and mailed back with my ticket number. I sent  
the whois registry entry with all the contacts (including the changed  
line, which said, that I changed the entry the very same day to my  
own address!). In few minutes, the contacts on the webpage were set to  
what I mailed them, I chose my e-mail address, got another mail, clicked  
another link and the certificate was issued. I installed the certificate  
for her shop and she was quite happy.  I was happy, because I used no  
power over her web space, domain or any administrative power.  In fact,  
to issue this certificate, I only used one e-mail address. That makes  
man in the middle attack quite simple. It cost me no money, so if I  
used some anonymous access (like driving to some random city and using  
wifi with changed MAC address), created mail on some freemail, I would  
get a certificate, possibly without the domain owners even noticing this.  
  
Actually performing the man in the middle attack, when you have  
certificate, that most of web users trust by default, is very easy  
now. You can use Dug Song's excellent dsniff package. You could rob  
someone's bank account, if the target domain was a bank and they did  
not use man in the middle resistant protection (such as secureID, that  
digitally signs all parameters of transactions and bank processes it  
only when such signature is filled in). You could snoop on someone's  
mail account, if they use webmail to access it. And as the webpage of  
this CA perfectly states -- it is a matter of minutes.  
  
If your registry provides a way to protect entries in registry (such as  
RIPE's mnt-by), use it.  When I looked at banks in my country (which is  
otherwise quite advanced in IT), none of them used mnt-by. Protecting  
your entries is also a matter of minutes. Do it.  
  
The case of papers  
  
Even before this CA, I found E-BizID, which acts as a reseller for  
Comodogroup (which I chose as my own CA later on). They had a 50%  
discount on the certificates that time and also issued a 30-days free test  
certificates (that were signed by the real authority). I had no idea  
how they authenticate sites, so I filled in a form to get a certificate  
for my provider's webmail machine, that I am an admininstrator of. It told me to  
fax the Business License to some number. As I filled the form correctly  
(stating, who owns the machine, full company name and address) and it  
was around Christmas, I just let it be.  But later on, I was having a  
phone conversation with another administrator from the company and told him,  
that they are quite cheap and they should buy the certificate, protecting  
their clients. They decided to buy it for another domain name, which  
had the same webmail installed. They paid for it, faxed the business  
license. We both received the certificate. I got my testing certificate  
and they got the real one. Quite interesting.  
  
The question to ask is -- is faxing a business license a way to  
authenticate and authorise users?  In our country, anyone can obtain  
anyone's business license in the court office (the court has a database of  
all business licenses). If you want to do a business with someone, you  
can go there, request a license, which will tell you, in what field they  
are permitted to do business, who owns the company, etc. This business  
license (here called "Transcript from business registry") is the same as  
the company owners get. There is no difference. Anyone can get it. That  
means, anyone can fax it. That means, anyone can get a certificate.  
  
If this was not the case, I wonder how an American CA could determine,  
if the paper that was faxed to them is a real business license of the  
particular country. I doubt they knew, what "Vypis z obchodneho registra",  
that I faxed to them even meant. I believe, that if I faxed them some  
famous Slovak novel, formatted to look like a business license and  
included the name and address of my company, they could not visually tell  
the difference and they probably do not employ Slovak language speakers  
to see the difference between prose from business licenses. I would  
love to be proven wrong.  
  
Domain ownership control  
  
While I did not try other authorities myself, I read about the  
process to issue certificate of several others. Some of them want  
you to prove ownership of a domain by telling you to create some  
file in the webspace of the server. They tell you to create for example  
http://yourdomain.com/sayhellotoourauthority/somerandomstring with some  
particular content. This is one of the better way to authenticate people,  
who have control of a domain. However, it is quite funny to use this way,  
because CA's, PKI and TLS are here to protect communicating peers against  
known attacks to plaintext http. Seems weird, that they itself rely on  
this insecure way of communication to authenticate users. The attacks are  
well known -- man in the middle attack, DNS spoofing, etc. While this  
attack is certainly not the easiest one (the difficult part is to get  
access to nameserver or to the physical link between CA and authenticated  
domain), it is certainly not impossible. There are well established and  
tested tools to do this kind of attack.  
  
The solution?  
  
Some CAs use some combination of these techniques. The best technique  
I have seen is the requirement to come to a local branch office of a  
CA, show your business license, ID card or passport, driving license.  
The business license is checked with the court over Internet, this also  
says who can act on behalf of a company, he is authenticated using ID card,  
his presence is recorded on a tape.  
  
However, I believe, that current situation in Microsoft's browser is  
far from using this approach.  I believe, that MS Trust Root is built  
more on business contracts, than on security standards. Microsoft and  
security. Sounds a bit stupid in one sentence.  
  
I believe there should be some independent body (in form of organisation  
like IANA and ICANN, but not controlled by US government), which  
administers some common trust root. Certificates are issued to CAs  
with approval of local government organisation (in our country, it is  
National Security Office, which approves and disapproves the existence  
and operation of open CAs and accredited CAs). You can personally  
choose, which countries' CAs do you believe. All of the CAs should  
require a personal presence to authenticate and authorise the right to  
a certificate.  
  
Also the weak point in current implementations of x509 is, that you can  
not easily specify, for which purpose you trust certain CAs. The purpose  
(web site authentication, S/MIME mail, ...) is on the certificate,  
but you can not specify, that you trust certain CAs for anything (for  
banking purposes, ...), but another one only for freemail accounts  
and discussion boards authentication. It is not as easy in current web  
implementations anyway.  
  
If you run a bank's webserver, tell your users, which CA you use (by  
postal mail) and tell them to always check the certificate. My bank  
does this (surprisingly), transferring all the liabilities to the user  
(Someone robbed your account? You did not check the certificate?  Oh,  
what a pity, it is your problem, not ours). But if the bank recommends  
use of some particular user agent (usually MSIE), and do not tell users to  
delete all the "suspicious" CAs, they are liable for the client's money  
(and for the loss of it).  
  
Maybe it is time, to ask again: Whom do you trust? Do you trust Microsoft  
or AOL? Do you trust CAs, they trust (for some reason, probably  
compensated by lots of money)? Being a well known CA does not imply,  
it is a secure one.

  [1]: http://www.2600.com/
  [2]: https://blog.startcom.org/?p=145
