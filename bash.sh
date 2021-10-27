#!/bin/bash

figlet -c F 2 F | perl -nle 'print' 

sleep 5
echo "-scan : 1 "
echo "-open camira : 2 "
echo "-hake wife : 3 "
echo "-passwd : 4 "
echo "-exit: 0 "
echo "======================================"
read -p "ENTER YOUR CHOSE : ># " enter

case "$enter" in
    1) echo "open nmap for scan"
    ;;
    2) echo "open camira for android"
    ;;
    3) echo "hake wife wp2 | wps2"
    ;;
    4) echo "hake password fb and instgram and twitter"
    ;;
    0) exit
    ;;
    *) echo "not fonde"
    ;;
esac