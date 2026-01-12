!#bin/bash
echo "Insert target here: "
read target
echo "$(nmap -Pn -sV $target)"