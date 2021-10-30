#!/bin/bash

nocolor="\033[0m"
red="\033[0;31m"
green="\033[0;32m"
yellow="\033[0;33m"
blue="\033[0;34m"
domain=$1

sleep 3
cat << "EOF"


        ░░░░░░███████ ]▄▄▄▄▄▄▄▄ === GHOST ===
        ▂▄▅█████████▅▄▃▂
        I███████████████████]. By : F 2 F
        ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤...

EOF

if [ $(whoami) != "root" ]; then
    echo -e "${red} You Are Not root${noclor}"
    exit
else
if [ -z $domain ]; then
    echo -e "${red} Enter The Domain${noclor}"
else
    
 echo -e "${green}============ [Start On $domain] ============${noclor}"
 gnome-terminal -e "ping -c3 $domain"
 sleep 2
touch Scan.txt && gnome-terminal -e "tail -F Scan.txt"
touch ScanNikato.txt && gnome-terminal -e "tail -F Scan.txt"
nmap -sS -O -oX nmap.xml $domain > Scan.txt

sleep 2
nikto  -h  $domain > ScanNikato.txt
sleep 2
 echo -e "${green}=================== [End] ===================${noclor}"

fi
fi