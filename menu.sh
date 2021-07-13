#!/bin/bash
red="\e[1;31m"
gren="\e[1;32m"
blue="\e[1;34m"
yelow="\e[1;33m"
cyan="\e[1;36m"
white="\e[1;37m"

clear
echo -e   ""
cat /usr/bin/bannerku | lolcat  
    cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
   	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
    echo -e  ""
	echo -e    "    \e[032;1mCPU Model:\e[0m $cname"
	echo -e    "    \e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e    "    \e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e    "    \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e    "    \e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
	echo -e    "    \e[032;1mSystem Uptime:\e[0m $up"
echo -e  ""
echo -e "$cyan----------------R------------------------" | lolcat
echo -e "              $cyan-[ MENU ]-"
echo -e "$cyan----------------------------------------" | lolcat
echo -e "$red  1.  $white Create SSH & OpenVPN Account"
echo -e "$red  2.  $white Trial Account SSH & OpenVPN"
echo -e "$red  3.  $white Renew SSH & OpenVPN Account"
echo -e "$red  4.  $white Delete SSH & OpenVPN Account"
echo -e "$cyan----------------P------------------------" | lolcat
echo -e "$red  5.  $white Create Vmess Account"
echo -e "$red  6.  $white Create Trojan Account"
echo -e "$cyan----------------J------------------------" | lolcat
echo -e "$red  7.  $white Reboot VPS"
echo -e "$red  8.  $white Speedtest VPS"
echo -e "$red  9.  $white Information Display System"
echo -e "$red  10. $white Info Script Auto Install"
echo -e "$red  11. $white UPDATE PREMIUM SCRIPT"
echo -e "$cyan-----------------0-----------------------" | lolcat
echo -e "$red  x.  exit" | lolcat
echo -e "$cyan-----------------8-----------------------" | lolcat
echo -e ""
read -p "     Please Input Number  [1-11 or 0] :  " menu
echo -e ""
case $menu in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
add-ws
;;
6)
add-tr
;;
7)
reboot
;;
8)
speedtest
;;
9)
info
;;
10)
about
;;
11)
patch
;;
x)
exit
;;
*)
echo -e "$red Please enter an correct number!!!"
;;
esac