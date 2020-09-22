#!/bin/bash
#Ejecucion de scripts remotos
case $1 in
	("fuerzabruta.sh") /usr/bin/ssh -t pi@157.88.123.118 'bash /home/pi/fuerzabruta.sh';;
	("dos.sh") /usr/bin/ssh -t pi@157.88.123.118 'sudo bash /home/pi/dos.sh';;&
	("nmap.sh") /usr/bin/ssh -t pi@157.88.123.118 'sudo bash /home/pi/nmap.sh';;
	("fuerzabruta-in.sh") /usr/bin/ssh -t kali@192.168.2.55 'sudo bash /home/kali/fuerzabruta-in.sh';;
	("dos-undisp.sh") /usr/bin/ssh -t kali@192.168.2.55 'sudo bash /home/kali/dos-undisp.sh';;
	("dos-vardisp.sh") /usr/bin/ssh -t kali@192.168.2.55 'sudo bash /home/kali/dos-vardisp.sh';;
	("aut-masiva.sh") /usr/bin/ssh -t kali@192.168.2.55 'sudo bash /home/kali/aut-masiva.sh';;
	("beacon-flood.sh") /usr/bin/ssh -t kali@192.168.2.55 'sudo bash /home/kali/beacon-flood.sh';;
	("mac.sh") /usr/bin/ssh -t kali@192.168.2.55 'sudo bash /home/kali/mac.sh';;
	(*) echo "$1";;
esac