---
title: "Migrating from iPhone to Android 4.4 (Nexus 5) - the geeky review"
date: 2013-12-12 14:51
comments: true
categories: blog
tags: geek
---
For the past few years, I have been an iPhone user. At first I was jailbreaking, that got frustrating pretty soon, so I forgot about phone freedom, which for me means I can install any app I want, not any app that Steve or any other guy (however nice) approves of.

I mainly missed a Bitcoin wallet, a good PGP implementation, encrypted folders. So I bought a Nexus 5 and quickly got introduced to the world of Android.

The good:

 * I can easily install any app I want. That includes a  Bitcoin wallet (I use [Mycelium](http://mycelium.com/)), [Tripglasses](https://play.google.com/store/apps/details?id=sk.gk2.tripglasses&hl=en) :) and [Fon](https://play.google.com/store/apps/details?id=com.oakley.fon&hl=en) (which can automatically log me into free wifi hotspots when I'm around)
 * Most apps I used have a good Android version or there's a good alternative. The most difficult thing to migrate was GTD/to-do list app called [Things](http://culturedcode.com/things/), which I really enjoyed. Thankfully, I have found an alternative called [doit.im](http://doit.im/), which is subscription-based ($20 for a year if you want a desktop app; otherwise it's free as in beer). I have migrated while still on iPhone, and the device support of the app is just amazing. It also has all the features from Things I used and some more. There are some things in the GUI that are not so optimal, but I am very satisfied.
  * All the geeky stuff is there. I switched from [Acrobits Softphone](http://acrobits.cz/) to [csipsimple](https://code.google.com/p/csipsimple/) for encrypted calls. I also installed RedPhone. The first guy I called had it installed, so it switched the call to encrypted automatically. No hacking needed! It has encrypted filesystems, [mail client with PGP and S/MIME support](https://play.google.com/store/apps/details?id=at.rundquadrat.android.r2mail2&hl=en), SSH shell, terminal access. [Llama](https://play.google.com/store/apps/details?id=com.kebab.Llama&hl=en) can do things based on my location (like switch on ringtones when I leave home). It does not use the GPS; only cell tower IDs (it has to learn them), so it does not eat battery nor send my location to Google. 
  * It is _fast_. I switched from Dalvik to [ART](http://source.android.com/devices/tech/dalvik/art.html) runtime, which compiles the application during the first boot (or when they are installed). That makes it even faster!
  * Apps run in the background without hassle. Threema downloads my messages. 
  * I can change my ringtones without hacking. I can upload and download music to a folder using any app I want, not just iTunes. I can listen to FLAC music. 
  * The home screen widgets are fun. It's very useful to see my agenda, browse the to-do list, etc.
  * [SwiftKey](http://www.swiftkey.net/en/) - guys, this is amazing! The best way to type on a phone ever. It works in both English and Slovak at the same time, and it makes me want to type blogs on my phone. OK, not really, but it is so convenient. And it shows that on Android, you are free to change default keyboard, which Apple does not allow you to do because they know what's best for you. Also, Google voice dictation works both for Slovak and English and is much better than Siri for English (I have to admit I am working a little bit on my accent, but we tried with really heavy eastern European accent at work). And the assistant activates by saying OK Google - how cool is that? :). Of course, there are privacy concerns, but for setting alarms at night, it's very convenient.
  * All the apps show you what kind of permissions they want before they are installed. The system enforces those permissions. There are also firewalls, antivirus and [anonymization programs](https://play.google.com/store/apps/details?id=org.torproject.android&hl=en), although iPhone has [Onion Browser](https://itunes.apple.com/us/app/onion-browser/id519296448) as well.
  * The notification LED is cool - it can change color based on how you configure it, and you see if you have a message, missed call or any other significant event occurred. It does not reveal any sensitive information; it's just a blinking LED.
  
The bad parts of migration from iPhone:

 * iTunes backups to my Mac (not to cloud) took me a minute to set up, and they would just work. I could set up encrypted backups, and I would have a recent backup over wifi without needing to do anything. If I don't want to send my data to Google, I need a third party solution. I use [Titanium Backup](https://play.google.com/store/apps/details?id=com.keramidas.TitaniumBackup&hl=en), but hell the UI looks worse than our internal information system :). It also needs to backup to my local internal ROM and then it can upload (encrypted, which is good) to Dropbox or Box.com. I don't need the backup on my phone; I need it somewhere - safe and encrypted, without me ever touching a button. I don't want to do manual backups through USB. And I don't want my backups to waste precious space on my phone. 
 * I use r2mail2, because I use both S/MIME (I would not be able to read any work related e-mail without it) and PGP. The user interface is really not so nice if you are used to Apple Mail client - and that needs an improvement. To be fair, there are different e-mail clients that support S/MIME, r2mail2 is just the only one that support both S/MIME and PGP (both inline and PGP/MIME). So I am gaining functionality I did not have on iPhone at the expense of a worse GUI. Hopefully it will stop me from replying to e-mails from my phone, and I will enjoy life around me more :)
 * I had to buy a few apps even when I have Android versions. Evernote just used my premium account, so that's fine. I have not decided for navigation yet, but I guess I'll buy Sygic because it's the cheapest option with offline maps and navigation (there are pretty cool OpenStreetMaps based offline maps, but they don't support search and offline directions).
 * On iPhone, I really hated that simple apps like calculators, rulers and flashlights were not free or displayed ads. Seems that Android is not so much different, but there are at least more options usually. I [learned about a nice flashlight app that traced your location](http://www.nbcnews.com/technology/shock-dark-flashlight-app-tracks-your-location-1B7991120). Thankfully, I found one flashlight that is both free as in beer and free of spyware called [SearchLight](http://code.google.com/p/search-light/). I was actually seeing myself installing the fresh new IDEA-based Android SDK and writing the app that turns on the camera flash myself. 
 
Things I would like to see in the future:

 * Amazing e-mail client
 * OK Google dictation 
 * More Bitcoin and encryption apps
 * Smaller phone (although the display is nice)
 * Finally a phone that lasts for days on battery. I know the old Nokias didn't do much, but one week battery life was cool!
 
Right now I am happy Android user. I am learning new stuff, and I will probably not hack the phone as a total geek, it's good to customize the device that travels with you.

Update: [PowerToggles](https://play.google.com/store/apps/details?id=com.painless.pc) deserves a very honorable mention as well, landed on my home screen.
