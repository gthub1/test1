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
IP=$(wget -qO- ipinfo.io/ip);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "Trial 1 Hari SSH & OpenVPN"
echo -e "Username          : $Login "
echo -e "Password          : $Pass"
echo -e "==============================="
echo -e "IP Server         : $IP"
echo -e "Host              : $domain"
echo -e "OpenSSH           : 22, 500"
echo -e "Dropbear          : 143, 109"
echo -e "WS-SSH            : 80 ,8880"
echo -e "WS-SSH SSL/TLS    : 443"
echo -e "SSL/TLS           : 444"
echo -e "BadVPN/UDPGW      : 7100, 7200, 7300"
echo -e "Squid             : 3128, 8080 (limit to IP SSH)" 
echo -e "OpenVPN           : TCP 1194 http://$IP:81/client-tcp-1194.ovpn"
echo -e "OpenVPN           : UDP 2200 http://$IP:81/client-udp-2200.ovpn"
echo -e "OpenVPN           : SSL 992 http://$IP:81/client-tcp-ssl.ovpn"
echo -e "==============================="
echo -e "Aktif Sehingga      : $exp"
echo -e "==============================="
echo -e "Payload Default WS:"
echo -e "GET / HTTP/1.1[crlf]Host: $domain[crlf]Connection: Keep-Alive[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "Script Mod by eUe"
