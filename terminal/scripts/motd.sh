cat $(ls -d /opt/bed/terminal/scripts/motd/*.txt | sort -R | tail -n1)
echo "==================="
date
sh /opt/bed/terminal/scripts/ip.sh
echo "==================="
