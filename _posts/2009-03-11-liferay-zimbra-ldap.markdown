---
title: "LifeRay + Zimbra LDAP"
date: 2009-03-11 22:51
comments: true
external-url:
categories:
---
How to use Zimbra LDAP for authentication. Go to Control Panel/Settings/Authentication/LDAP. Set settings like this (change "corporation" for your domain name, if it uses other tld than .com, change that too):  
  
Base provider URL: ldap://zimbra.corporation.com:389  
Base DN: ou=people,dc=corporation,dc=com  
Principal: uid=principal,cn=admins,cn=zimbra  
Credentials: [insert password here]  
Authentication search filter: (uid=@screen\_name@)  
Import Search filter: (objectClass=zimbraAccount)  
  
User mapping  
Screen Name: uid  
Password: userPassword  
Email Address: mail  
Full Name: cn  
First Name: givenName  
Last Name: sn  
  
Import Enabled: Y  
Import on Startup Enabled: Y  
Import Interval: 10 mins  
Export Enabled: N
