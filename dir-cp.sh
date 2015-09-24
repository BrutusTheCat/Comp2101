#!/bin/bash
#Dir copy dir with perserve

mkdir ~/mydata-backup
cd ~/mydata
tar cf - . | ( cd ~/mydata-backup ; | tar xf - )
