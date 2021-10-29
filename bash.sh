#!/bin/bash


figlet -c F 2 F | perl -nle 'print' 
echo "Welcome to My Script" $0
sleep 1
read -p "the domains list : " domainslist
if [ -z $domainslist ]; then
    echo "the domains list !!"
    exit
fi
echo ".... Start Search ...."
sleep 2 
for domain in $(cat $domainslist); do
    firefox --new-tab "https://searchdns.netcraft.com/?host=$domain&x=0&y=0" &
    sleep 2
done
#firefox --new-tab "https://searchdns.netcraft.com/?host=$domain&x=0&y=0"
