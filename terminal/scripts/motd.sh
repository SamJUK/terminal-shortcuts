cat $(ls -d /opt/bed/terminal/scripts/motd/*.txt | sort -R | tail -n1)
if ! [ -x "$(command -v neofetch)" ]; then
    cat $(ls -d /opt/sam/terminal/motd/*.txt | sort -R | tail -n1)
else
    neofetch --color_blocks off
fi

echo "==================="
date
sh /opt/bed/terminal/scripts/ip.sh
echo "==================="
