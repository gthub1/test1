#!/bin/bash
Cyan='\033[0;36m'
Red='\033[0;31m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
Green='\033[0;32m'
UGreen='\033[4;32m'
URed='\033[4;31m'
On_Green='\033[42m'
BGreen='\033[1;32m'
BYellow='\033[1;33m'
UBlue='\033[4;34m'
UPurple='\033[4;35m'
UYellow='\033[4;33m'
UCyan='\033[4;36m'
On_Blue='\033[44m'
On_Purple='\033[45m'
On_Yellow='\033[43m'
On_Cyan='\033[46m'
On_Red='\033[41m'
NC='\e[0m'
clear
echo -e ""
echo -e "${BGreen}=========================${NC}${On_Purple}-Menu-${NC}${BGreen}=========================${NC}"
echo -e ""
echo -e "* ${Purple}menu${NC}        : ${UPurple}List of Main Commands${NC}"
echo -e ""
echo -e "${BGreen}=====================${NC}${On_Yellow}-SSH & OpenVPN-${NC}${BGreen}====================${NC}"
echo -e ""
echo -e "* ${Yellow}usernew${NC}     : ${UYellow}Create SSH & OpenVPN Account${NC}"
echo -e "* ${Yellow}trial${NC}       : ${UYellow}Generate SSH & OpenVPN Trial Account${NC}"
echo -e "* ${Yellow}renew${NC}       : ${UYellow}Extending SSH & OpenVPN Account Active Life${NC}"
echo -e "* ${Yellow}deluser${NC}     : ${UYellow}Delete SSH & OpenVPN Account${NC}"
echo -e "* ${Yellow}cek${NC}         : ${UYellow}Check User Login SSH & OpenVPN${NC}"
echo -e "* ${Yellow}member${NC}      : ${UYellow}Daftar Member SSH & OpenVPN${NC}"
echo -e "* ${Yellow}delete${NC}      : ${UYellow}Delete User Expired SSH & OpenVPN${NC}"
echo -e "* ${Yellow}autokill${NC}    : ${UYellow}Set up Autokill SSH${NC}"
echo -e "* ${Yellow}ceklim${NC}      : ${UYellow}Displays Users Who Do Multi Login SSH${NC}"
echo -e "* ${Yellow}restart${NC}     : ${UYellow}Restart Service Dropbear, Squid3, OpenVPN dan SSH${NC}"
echo -e ""
echo -e "${BGreen}=======================${On_Blue}-Wireguard-${NC}${BGreen}=====================${NC}"
echo -e ""
echo -e "* ${Blue}addwg${NC}       : ${UBlue}Create Wireguard Account${NC}"
echo -e "* ${Blue}delwg${NC}       : ${UBlue}Delete Wireguard Account${NC}"
echo -e "* ${Blue}cekwg${NC}       : ${UBlue}Check User Login Wireguard${NC}"
echo -e "* ${Blue}rewg${NC}        : ${UBlue}Extending Wireguard Account Active Life${NC}"
echo -e "* ${Blue}wg show${NC}     : ${UBlue}Check Wireguard User Interface${NC}"
echo -e ""
echo -e "${BGreen}=========================${NC}${Red}${On_Cyan}-L2TP-${NC}${BGreen}========================${NC}"
echo -e ""
echo -e "* ${Cyan}addl2tp${NC}     : ${UCyan}Create L2TP Account${NC}"
echo -e "* ${Cyan}dell2tp${NC}     : ${UCyan}Delete L2TP Account${NC}"
echo -e "* ${Cyan}rel2tp${NC}      : ${UCyan}Extending L2TP Account Active Life${NC}"
echo -e ""
echo -e "${BGreen}=========================${NC}${Red}${On_Green}-PPTP-${NC}${BGreen}========================${NC}"
echo -e ""
echo -e "* ${Green}addpptp${NC}     : ${UGreen}Create Account PPTP${NC}"
echo -e "* ${Green}delpptp${NC}     : ${UGreen}Delete PPTP Account${NC}"
echo -e "* ${Green}repptp${NC}      : ${UGreen}Extending PPTP Account Active Life${NC}"
echo -e "* ${Green}cekpptp${NC}     : ${UGreen}Check User Login PPTP${NC}"
echo -e ""
echo -e "${BGreen}=========================${On_Red}-SSTP-${NC}${BGreen}========================${NC}"
echo -e ""
echo -e "* ${Red}addsstp${NC}     : ${URed}Create Account SSTP${NC}"
echo -e "* ${Red}delsstp${NC}     : ${URed}Delete SSTP Account${NC}"
echo -e "* ${Red}resstp${NC}      : ${URed}Extending SSTP Account Active Life${NC}"
echo -e "* ${Red}ceksstp${NC}     : ${URed}Check User Login SSTP${NC}"
echo -e ""
echo -e "${BGreen}=========================${On_Purple}-SSR-${NC}${BGreen}=========================${NC}"
echo -e ""
echo -e "* ${Purple}addssr${NC}      : ${UPurple}Create SSR Account${NC}"
echo -e "* ${Purple}delssr${NC}      : ${UPurple}Deleting SSR Account${NC}"
echo -e "* ${Purple}ressr${NC}       : ${UPurple}Extending SSR Account Active Life${NC}"
echo -e "* ${Purple}ssr${NC}         : ${UPurple}Show Other SSR Menu${NC}"
echo -e ""
echo -e "${BGreen}====================${NC}${Red}${On_Yellow}-Shadowsocks OBFS-${NC}${BGreen}=================${NC}"
echo -e ""
echo -e "* ${Yellow}addss${NC}       : ${UYellow}Creating Shadowsocks Account${NC}"
echo -e "* ${Yellow}delss${NC}       : ${UYellow}Delete Shadowsocks Account${NC}"
echo -e "* ${Yellow}ress${NC}        : ${UYellow}Extending Shadowsocks Account Active Life${NC}"
echo -e "* ${Yellow}cekss${NC}       : ${UYellow}Check User Login Shadowsocks${NC}"
echo -e ""
echo -e "${BGreen}=========================${NC}${On_Blue}-VMESS-${NC}${BGreen}=======================${NC}"
echo -e ""
echo -e "* ${Blue}addws${NC}       : ${UBlue}Create V2RAY Vmess Websocket Account${NC} "
echo -e "* ${Blue}delws${NC}       : ${UBlue}Deleting V2RAY Vmess Websocket Account${NC} "
echo -e "* ${Blue}rews${NC}        : ${UBlue}Extending Vmess Account Active Life${NC} "
echo -e "* ${Blue}cekws${NC}       : ${UBlue}Check User Login V2RAY${NC} "
echo -e "* ${Blue}cv2r${NC}        : ${UBlue}Renew Certificate V2RAY Account${NC} "
echo -e ""
echo -e "${BGreen}=========================${NC}${Red}${On_Cyan}-VLESS-${NC}${BGreen}=======================${NC}"
echo -e ""
echo -e "* ${Cyan}addvl${NC}       : ${UCyan}Create V2RAY Vless Websocket Account${NC}"
echo -e "* ${Cyan}delvl${NC}       : ${UCyan}Deleting V2RAY Vless Websocket Account${NC}"
echo -e "* ${Cyan}revl${NC}        : ${UCyan}Extending Vless Account Active Life${NC}"
echo -e "* ${Cyan}cekws${NC}       : ${UCyan}Check User Login V2RAY${NC}"
echo -e ""
echo -e "${BGreen}=========================${NC}${Red}${On_Green}-Trojan-${NC}${BGreen}=========================${NC}"
echo -e ""
echo -e "* ${Green}addtr${NC}       : ${UGreen}Create Trojan Account${NC}"
echo -e "* ${Green}deltr${NC}       : ${UGreen}Deleting Trojan Account${NC}"
echo -e "* ${Green}retr${NC}        : ${UGreen}Extending Trojan Account Active Life${NC}"
echo -e "* ${Green}cektr${NC}       : ${UGreen}Check User Login Trojan${NC}"
echo -e ""
echo -e "${BGreen}=========================${On_Red}-SYSTEM--${NC}${BGreen}======================${NC}"
echo -e ""
echo -e "* ${Red}addhost${NC}     : ${URed}Add Or Change Subdomain Host For VPS${NC}"
echo -e "* ${Red}c-port${NC}      : ${URed}Change Port Of Some Service${NC}"
echo -e "* ${Red}autobackup${NC}  : ${URed}Autobackup Data VPS${NC}"
echo -e "* ${Red}backup${NC}      : ${URed}Backup Data VPS${NC}"
echo -e "* ${Red}restore${NC}     : ${URed}Restore Data VPS${NC}"
echo -e "* ${Red}wbmn${NC}        : ${URed}Webmin Menu${NC}"
echo -e "* ${Red}kernel-updt${NC} : ${URed}Update To Latest Kernel${NC}"
echo -e "* ${Red}limit-speed${NC} : ${URed}Limit Bandwith Speed Server${NC}"
echo -e "* ${Red}ram${NC}         : ${URed}Check Usage of VPS Ram${NC}"
echo -e "* ${Red}reboot${NC}      : ${URed}Reboot VPS${NC}"
echo -e "* ${Red}speedtest${NC}   : ${URed}Speedtest VPS${NC}"
echo -e "* ${Red}update${NC}      : ${URed}Update To Latest Script Version${NC}"
echo -e "* ${Red}info${NC}        : ${URed}Displaying System Information${NC}"
echo -e "* ${Red}about${NC}       : ${URed}Info Script Auto Install${NC}"
echo -e "* ${Red}exit${NC}        : ${URed}Exit From VPS${NC}"
echo -e ""
echo -e "${BGreen}=======================================================${NC}"
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
  cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
  	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
echo -e "* TIME        : $jam"
echo -e "* DAY         : $hari"
echo -e "* DATE        : $tnggl"
echo -e "* SERVER      : $ISP"
echo -e "* City        : $CITY"
echo -e "* IP VPS      : $IPVPS"
	echo -e "   \e[032;1mCPU Model          :\e[0m $cname"
	echo -e "   \e[032;1mNumber Of Cores    :\e[0m $cores"
	echo -e "   \e[032;1mCPU Frequency      :\e[0m $freq MHz"
	echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "   \e[032;1mSystem Uptime      :\e[0m $up"
echo -e '\e[1;33m=========================-MOD BY eUe-========================\e[0m'
echo -e ""
