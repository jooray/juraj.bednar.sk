---
title: "Sun StorageTek 7000 series replication"
date: 2008-11-28 2:41
comments: true
external-url:
categories:
---
I think they are doing zfs send | zfs receive for replication, even incremental one.   
  
Something like [this][1].  
  
The crazy thing is, it might actually work and be somehow more consistent than [AVS][2] based replication, which is kind-of slow and device-consistent (too bad for replication of large zpools, it may crash quite badly).

  [1]: http://www.markround.com/archives/38-ZFS-Replication.html
  [2]: http://opensolaris.org/os/project/avs/
