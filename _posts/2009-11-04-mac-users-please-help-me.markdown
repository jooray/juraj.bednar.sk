---
title: "Mac users please help me :)"
date: 2009-11-04 9:5
comments: true
external-url:
categories:
---
Hello,  
  
 I have a problem when waking up my Macbook Pro, I can not connect  
 to wireless at home (from time to time). It takes me several times to  
 close and open notebook to connect. The problem is only at home, I have  
 tried three different Wireless APs. My iPhone and other notebooks have  
 no problems connecting at all. I am certain that problem is not with  
 APs (I've tried to change channels, etc.). What I think is a problem is,  
 that sometimes Airport card wrongly detects country code and reverts  
 to a few channels. This is from the logs -- unsuccesful connection:  
  
_ 1. 11.2009 11:52:09 airportd_[7004][1]_ Apple80211Associate() failed -3905 (Timeout)_  
_ 1. 11.2009 11:52:09 kernel directed SSID scan fail_  
_ 1. 11.2009 11:52:17 airportd_[7004][2]_ Apple80211Associate() failed -3905 (Timeout)_  
_ 1. 11.2009 11:52:17 kernel en1: 802.11d country code set to 'X3'._  
_ 1. 11.2009 11:52:17 kernel en1: Supported channels 1 2 3 4 5 6 7 8 9 10 11 12 13 36 40 44 48 52 56 60 64 100 104 108 112 116 120 124 128 132 136 140_  
_ 1. 11.2009 11:52:20 kernel en1: 802.11d country code set to 'SY'._  
_ 1. 11.2009 11:52:20 kernel en1: Supported channels 149 153 157 161_  
_ 1. 11.2009 11:52:53 kernel Assertion failed: file "/SourceCache/AirPortDriverBrcm4311/AirPortDriverBrcm4311-410.91.20/src/wl/sys/wlc\_scan.c", line 1375: wlc\_valid\_chanspec\_db(wlc-&gt;cmi, chanspec\_start)_  
_ 1. 11.2009 11:52:53 kernel Assertion failed: file "/SourceCache/AirPortDriverBrcm4311/AirPortDriverBrcm4311-410.91.20/src/wl/sys/wlc\_scan.c", line 1375: wlc\_valid\_chanspec\_db(wlc-&gt;cmi, chanspec\_start)_  
_ 1. 11.2009 11:53:01 airportd_[7130][3]_ Scan() error 16 (Resource busy)_  
_ 1. 11.2009 11:53:01 airportd_[7130][4]_ \_\_performScan() EBUSY, sleep 1 sec, try again_  
_ 1. 11.2009 11:53:01 kernel en1: 802.11d country code set to 'X3'._  
_ 1. 11.2009 11:53:01 kernel en1: Supported channels 1 2 3 4 5 6 7 8 9 10 11 12 13 36 40 44 48 52 56 60 64 100 104 108 112 116 120 124 128 132 136 140_  
_ 1. 11.2009 11:53:02 airportd_[7130][5]_ Scan() error 16 (Resource busy)_  
_ 1. 11.2009 11:53:02 airportd_[7130][6]_ \_\_performScan() EBUSY, sleep 1 sec, try again_  
_ 1. 11.2009 11:53:03 airportd_[7130][7]_ Scan() error 16 (Resource busy)_  
_ 1. 11.2009 11:53:03 airportd_[7130][8]_ \_\_performScan() EBUSY, sleep 1 sec, try again_  
_ 1. 11.2009 11:53:03 kernel en1: 802.11d country code set to 'SY'._  
_ 1. 11.2009 11:53:03 kernel en1: Supported channels 149 153 157 161_  
_ 1. 11.2009 11:53:04 kernel Assertion failed: file "/SourceCache/AirPortDriverBrcm4311/AirPortDriverBrcm4311-410.91.20/src/wl/sys/wlc\_scan.c", line 1375: wlc\_valid\_chanspec\_db(wlc-&gt;cmi, chanspec\_start)_  
_ 1. 11.2009 11:53:04 kernel Assertion failed: file "/SourceCache/AirPortDriverBrcm4311/AirPortDriverBrcm4311-410.91.20/src/wl/sys/wlc\_scan.c", line 1375: wlc\_valid\_chanspec\_db(wlc-&gt;cmi, chanspec\_start)_  
_ 1. 11.2009 11:53:04 kernel directed SSID scan fail_  
_ 1. 11.2009 11:53:12 airportd_[7130][9]_ Apple80211Associate() failed -3905 (Timeout)_  
_ 1. 11.2009 11:53:13 kernel directed SSID scan fail_  
_ 1. 11.2009 11:53:21 airportd_[7130][10]_ Apple80211Associate() failed -3905 (Timeout)_  
_ 1. 11.2009 11:53:22 kernel directed SSID scan fail_  


Successful connection:

_1\. 11.2009 11:54:51 kernel en1: 802.11d country code set to 'X3'._  
_ 1. 11.2009 11:54:51 kernel en1: Supported channels 1 2 3 4 5 6 7 8 9 10 11 12 13 36 40 44 48 52 56 60 64 100 104 108 112 116 120 124 128 132 136 140_  
_ 1. 11.2009 11:54:52 kernel Auth result for: 00:19:cb:e4:c9:9a MAC AUTH succeeded_  
_ 1. 11.2009 11:54:52 kernel AirPort: Link Up on en1_  
_ 1. 11.2009 11:54:52 kernel AirPort: RSN handshake complete on en1_  
  
 Also, I was not able to find current Airport Express firmware update for  
 10.6.1. The last one I found on Apple.com pages was 2008-004 (which does not work on 10.6.1), so I'm not sure if I have the latest firmware.   
  
 MacBookPro4,1   Mac OS X (10.6.1)   Card type: AirPort Extreme (0x14E4, 0x8C), Firmware: Broadcom BCM43xx 1.0 (5.10.91.19)

  [1]: http://discussions.apple.com/
  [2]: http://discussions.apple.com/
  [3]: http://discussions.apple.com/
  [4]: http://discussions.apple.com/
  [5]: http://discussions.apple.com/
  [6]: http://discussions.apple.com/
  [7]: http://discussions.apple.com/
  [8]: http://discussions.apple.com/
  [9]: http://discussions.apple.com/
  [10]: http://discussions.apple.com/
