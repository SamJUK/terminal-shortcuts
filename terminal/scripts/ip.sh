IP=$(curl -s https://canihazip.com/s)
IIP=$(ifconfig | grep 192. | cut -d ' ' -f2)

echo "Ext IP: $IP"
echo "Int IP: $IIP"
