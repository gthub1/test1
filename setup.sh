clear

echo ''

echo ' Unlimited Segalanya '

echo ''

echo ' .................................... '

echo '           Autoscript By eUe   '

echo '            Build in 2021       '

echo '           Telegram @eue_69     '

echo ' .................................... '

sleep 3

clear

echo '============================================='

echo '          Sila Tunggu sebentar '

echo 'Process Update & Upgrade Sedang Dijalankan '

echo '============================================='

sleep 2

apt update && apt upgrade -y

clear

echo '============================================='

echo '      Process Update&Upgrade Selesai '

echo '============================================='

sleep 2

clear

echo '============================================='

echo '        Process Seterusnya Sila Tunggu '

echo '============================================='

sleep 2

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
MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl http://ipinfo.io/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/eue_69"
rm -f setup.sh
exit 0
fi
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Already Installed"
exit 0
fi

mkdir /etc/v2ray

mkdir /var/lib/premium-script;

clear

echo '============================================='

echo "Sila Masukkan DOMAIN, Jika TIADA KLIK Enter"

echo '============================================='

read -p "Hostname / Domain: " host

echo "IP=$host" >> /var/lib/premium-script/ipvps.conf

echo "$host" >> /etc/v2ray/domain

#wget https://github.com/${GitUser}/

GitUser="gthub1"
wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/cf.sh && chmod +x cf.sh && screen -S cf ./cf.sh

clear

echo '============================================='

echo '        Installing SSH & OPENVPN '

echo '============================================='

sleep 2

wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh

clear

echo '============================================='

echo '        Installing Websocket '

echo '============================================='

sleep 2

wget https://raw.githubusercontent.com/${GitUser}/test1/main/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh

clear

echo '============================================='

echo '        Installing SSTP '

echo '============================================='

sleep 2

wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh

clear

echo '============================================='

echo '        Installing WIREGUARD '

echo '============================================='

sleep 2

wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh

clear

echo '============================================='

echo '        Installing ssr '

echo '============================================='

sleep 2

wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh

clear

echo '============================================='

echo '        Installing shadowsocksobfs '

echo '============================================='

sleep 2

wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh

clear

echo '============================================='

echo '        Installing V2RAY '

echo '============================================='

sleep 2

wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' ins-vt.sh && screen -S v2ray ./ins-vt.sh

clear

echo '============================================='

echo '        Installing ipsec '

echo '============================================='

sleep 2

clear

wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://raw.githubusercontent.com/${GitUser}/test1/main/install/set-br.sh && chmod +x set-br.sh && screen -S set-br ./set-br.sh

rm -f /root/ssh-vpn.sh

rm -f /root/websocket.sh

rm -f /root/sstp.sh

rm -f /root/wg.sh

rm -f /root/ssr.sh

rm -f /root/sodosok.sh

rm -f /root/ins-vt.sh

rm -f /root/go.sh

rm -f /root/ipsec.sh

rm -f /root/set-br.sh

cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://tolol.gq

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/cf.sh "https://raw.githubusercontent.com/gthub1/test1/main/cf.sh"
chmod +x /etc/cf.sh

history -c

echo "1.1" > /home/ver

clear

echo " "

echo '============================================='

echo "       Installation has been completed!!"

echo '============================================='

echo " "

echo "=================================-Script eUe-===========================" | tee -a log-install.txt

echo "" | tee -a log-install.txt

echo "----------------------------------------------------------------------------------" | tee -a log-install.txt

echo ""  | tee -a log-install.txt

echo "   >>> Service & Port"  | tee -a log-install.txt

echo "   - OpenSSH                  : 22"  | tee -a log-install.txt

echo "   - SSH-WS CDN OpenSSH       : 2095"  | tee -a log-install.txt

echo "   - SSH-WS CDN Dropbear      : 8880"  | tee -a log-install.txt

echo "   - SSH-WS CDN SSL/TLS       : 443"  | tee -a log-install.txt

echo "   - OpenVPN-WS               : 2082"  | tee -a log-install.txt

echo "   - OpenVPN                  : TCP 1194, UDP 2200, SSL 992, X1197"  | tee -a log-install.txt

echo "   - Stunnel4 SSL/TLS         : 444"  | tee -a log-install.txt

echo "   - Dropbear                 : 143, 109"  | tee -a log-install.txt

echo "   - Squid Proxy              : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt

echo "   - Badvpn                   : 7100, 7200, 7300"  | tee -a log-install.txt

echo "   - Nginx                    : 81"  | tee -a log-install.txt

echo "   - Wireguard                : 7070"  | tee -a log-install.txt

echo "   - L2TP/IPSEC VPN           : 1701"  | tee -a log-install.txt

echo "   - PPTP VPN                 : 1732"  | tee -a log-install.txt

echo "   - SSTP VPN                 : 5555"  | tee -a log-install.txt

echo "   - Shadowsocks-R            : 1443-1543"  | tee -a log-install.txt

echo "   - SS-OBFS TLS              : 2443-2543"  | tee -a log-install.txt

echo "   - SS-OBFS HTTP             : 3443-3453"  | tee -a log-install.txt

echo "   - V2RAY Vmess TLS          : 8443"  | tee -a log-install.txt

echo "   - V2RAY Vmess None TLS     : 80"  | tee -a log-install.txt

echo "   - Trojan                   : 6443"  | tee -a log-install.txt

echo ""  | tee -a log-install.txt

echo "   >>> Server Information & Other Features"  | tee -a log-install.txt

echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt

echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt

echo "   - Dflate                  : [ON]"  | tee -a log-install.txt

echo "   - IPtables                : [ON]"  | tee -a log-install.txt

echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt

echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt

echo "   - Autoreboot On 00.00 GMT +7" | tee -a log-install.txt

echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt

echo ""  | tee -a log-install.txt

echo "------------------------------------------Mod by eUe------------------------------------------" | tee -a log-install.txt

echo '============================================='

echo "     SISTEM AKAN REBOOT SEBENTAR LAGI!!"

echo '============================================='

echo " Terima Kasih Menggunakan AutoScript eUe "

echo ""

echo ""

echo " Reboot 10 Sec"

sleep 10

rm -f setup.sh

reboot

