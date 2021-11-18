#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl http://ipinfo.io/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "     [1]  Change Port Stunnel4"
echo -e "     [2]  Change Port OpenVPN"
echo -e "     [3]  Change Port Wireguard"
echo -e "     [4]  Change Port Vmess"
echo -e "     [5]  Change Port Vless"
echo -e "     [6]  Change Port Trojan"
echo -e "     [7]  Change Port Squid"
echo -e "     [8]  Change Port SSTP"
echo -e "     [x]  Exit"
echo -e "======================================"
echo -e ""
read -p "     Select From Options [1-8 or x] :  " port
echo -e ""
case $port in
1)
pssl
;;
2)
povpn
;;
3)
pwg
;;
4)
pws
;;
5)
pvl
;;
6)
ptr
;;
7)
psquid
;;
8)
psstp
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
