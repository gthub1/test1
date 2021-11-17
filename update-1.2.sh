#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
IZIN=$( curl http://ifconfig.me/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/djas08"
echo "WhatsApp wa.me/6282220428038"
rm -f setup.sh
exit 0
fi
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "http://54.179.120.207/djtv/menu.sh"
wget -O usernew "http://54.179.120.207/djtv/usernew.sh"
wget -O trial "http://54.179.120.207/djtv/trial.sh"
wget -O change-port "http://54.179.120.207/djtv/change.sh"
wget -O port-ovpn "http://54.179.120.207/djtv/port-ovpn.sh"
wget -O port-ssl "http://54.179.120.207/djtv/port-ssl.sh"
wget -O port-wg "http://54.179.120.207/djtv/port-wg.sh"
wget -O port-tr "http://54.179.120.207/djtv/port-tr.sh"
wget -O port-sstp "http://54.179.120.207/djtv/port-sstp.sh"
wget -O port-squid "http://54.179.120.207/djtv/port-squid.sh"
wget -O port-ws "http://54.179.120.207/djtv/port-ws.sh"
wget -O port-vless "http://54.179.120.207/djtv/port-vless.sh"
wget -O wbmn "http://54.179.120.207/djtv/webmin.sh"
wget -O xp "http://54.179.120.207/djtv/xp.sh"
wget -O limit-speed "http://54.179.120.207/djtv/limit-speed.sh"
wget -O add-sstp "http://54.179.120.207/djtv/add-sstp.sh"
wget -O add-ws "http://54.179.120.207/djtv/add-ws.sh"
wget -O add-vless "http://54.179.120.207/djtv/add-vless.sh"
wget -O add-tr "http://54.179.120.207/djtv/add-tr.sh"
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x limit-speed
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
