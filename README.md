# Pheonix-Automation
Automate Hydra brute forcing with Pheonix

just a small shell file that can easily automate email brute forcing with hydra, supporting over 2+ email services like hotmail, gmail, amd yahoo mail.
<br>
`chmod +x ./bret,sh ; sudo ./bret.sh <email> <path to wordlist> <service> `
<br>
example
`sudo ./bret.sh example@gmail.com /usr/share/wordlists/rockyou.txt smtp.gmail.com`
<br>
to see list of services just run the sh file without any CLI-ARGV's
