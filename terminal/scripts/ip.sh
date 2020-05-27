IP=$(curl -ks -m 3 https://sdj.pw/ip/s/)
IIP=$(ifconfig | grep 192. | cut -d ' ' -f2)

echo "Ext IP: $IP"
echo "Int IP: $IIP"
