---
title: "ft1000 fedora compile howto"
date: 2010-09-03 15:52
comments: true
external-url:
categories:
---
ft1000.qintec.sk  
  
yum install gcc  
  
yum install kernel-devel  
alebo  
yum install kernel-PAE-devel  
  
(podla typu kernelu)  
  
Do Makefile pridat  
  
EXTRA\_CFLAGS += -DINIT\_NET\_NS  
  
---  
  
gnome plugin:  
  
yum install libglade2-devel libnotify-devel libpanelappletmm-devel
