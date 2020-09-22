#!/bin/bash

airmon-ng check kill > /dev/null 2>&1
airmon-ng start wlan0 > /dev/null 2>&1
airodump-ng wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15 ; kill -9 $var
airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 -w Captura  wlan0mon > /dev/null 2>&1 &
var=$! ; sleep 15 ; kill -9 $var
sed '1,5d' Captura-01.csv > Captura
var=$(wc -l Captura)
echo $var > longitud | sed 's/ /\n/' longitud > longmejorada
head -n 1 longmejorada > tamano
tamanoReal=$(($tamano - 1))
head -n $tamanoReal Captura > mac
cut -d ',' -f 1  mac > mac2
cut -d ':' -f 1-3 mac2 >macDefinitiva
echo "\nLas direcciones MAC de los dispositivos conectados son:"
for i in $(cat mac2)
do
	echo "$i"
done
echo "\nLas direcciones OUI de los dispositivos conectados son:"
for i in $(cat macDefinitiva)
do
       	echo "$i"
done
echo "\n"
rm macDefinitiva Captura* longitud tamano longmejorada mac mac2 > /dev/null 2>&1
airmon-ng stop wlan0mon > /dev/null 2>&1
systemctl enable NetworkManager
systemctl start NetworkManager

