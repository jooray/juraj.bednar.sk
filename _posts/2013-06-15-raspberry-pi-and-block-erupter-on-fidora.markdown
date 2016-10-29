---
title: "Raspberry Pi and Block Erupter on Fidora"
date: 2013-06-15 19:32
comments: true
categories: blog
tags: cryptocurrency
---

My AsicMiner Block Erupter USB miners arrived a few days ago thanks to Andreas and people from Bitcoin Austria who processed the order and the chief [Bitcoin economist Peter Šurda](http://www.economicsofbitcoin.com/) who drove them to [Progressbar](http://www.progressbar.sk/). I shipped some of them abroad to friends. 

{% img left /images/posts/2013-16-15-raspberry-mining-rig-small.jpg 576 768 "My mining rig" %}

Although I appreciate the work guys that created [minepeon](http://minepeon.com/) do, I decided to go with pure [Pidora](http://pidora.ca/) as I believe using more generic distribution accounts for faster updates and makes it easier to use my Raspberry Pi for other things than just mining. This is debatable, as this is my first and only Raspberry Pi and it has been sitting on my window shelf for almost a year.

Anyway, this is how you get your block erupter running fast and easy under Pidora (and I guess any other Fedora-based distribution if you choose not to use Raspberry Pi):


				# screen is optional, but I like to run cgminer in screen and we will make it autostart in screen
				yum install libusb-devel libcurl libcurl-devel libudev-devel ncurses-libs ncurses-devel git gcc screen autoconf automake libusb1-devel libusbx-devel libusb libusb1 libusbx
				
				# current version of cgminer from git has working hotplug support for USB miners
				git clone https://github.com/ckolivas/cgminer.git
				cd cgminer
				./configure --enable-icarus
				make && make install


run cgminer to create config, in the menu, save the config file.


If mining is working, create /usr/local/bin/start_miner.sh with this content:


    #!/bin/sh
    screen -dmS miner -- /usr/local/bin/cgminer -c /root/.cgminer/cgminer.conf


Create /etc/systemd/system/cgminer.service with this content:

    [Unit]
    Description=CGMiner Service
    After=network.target
    
    [Service]
    ExecStart=/usr/local/bin/start_miner.sh
    Type=forking
    
    [Install]
    WantedBy=multi-user.target
    
Now make it a service and try it out:

    chmod a+x /usr/local/bin/start_miner.sh
    systemctl daemon-reload 
    systemctl start cgminer.service

Now you attach the screen and make sure it's working:

    screen -x 
    
If all is well, make it run on boot:

    systemctl enable cgminer.service
    
I really like systemd instead of init.d scripts. I liked SMF from Solaris 10 for booting things up, but since Oracle ditched Solaris out of the window, I switched to Red Hat-based systems. The only thing I do not like about systemd is the estetical equivalent of .ini files from ancient DOS times. There has to be a better way to write configuration (no, I am not talking about XML).

Anyway, happy mining and remember - it's just for fun, you will most probably not get a return on this investment anytime soon (the most optimistic scenario is 8 months, I would say two years if ever).
