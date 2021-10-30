#!/bin/bash

cat << "EOF"


        ░░░░░░███████ ]▄▄▄▄▄▄▄▄ === GHOST ===
        ▂▄▅█████████▅▄▃▂
        I███████████████████]. By : F 2 F
        ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤...




EOF
cf='\033[0m'
#Red='\033[0;31m'
BIRed='\033[1;91m'
Blue='\033[0;34m'
On_White='\033[47m'
Cyan='\033[0;36m'
printf "${BIRed} #### Welcome To GHOST ####\n${cf}" $0
sleep 1
read -p " the domains list : " domainslist
if [ -z $domainslist ]; then
    echo "the domains list !!"
    exit
fi
printf "${Blue}${On_White}.... Start Search ....\n${cf}"
sleep 2 
for domain in $(cat $domainslist); do
    firefox --new-tab "https://searchdns.netcraft.com/?host=$domain&x=0&y=0" &
    #firefox --new-tab "https://www.facebook.com/$domain" &
    # thes open in chrome : google-chrome --new-tab "https://searchdns.netcraft.com/?host=$domain&x=0&y=0" &
    sleep 2
done
#firefox --new-tab "https://searchdns.netcraft.com/?host=$domain&x=0&y=0"


