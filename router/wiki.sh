#! /bin/sh
rm wiki.txt
touch wiki.txt
ROUTERS='find *  -type d' 
echo "^  ^ ROUTER ^ CPU ^ RAM(MB) ^ FLASH(MB) ^ WAN ^ LAN ^ USB(2.0)/(3.0) ^ WIFI(2.4) ^ WIFI(5) ^ ANT ^ ETC ^" >> wiki.txt;
for routers in `$ROUTERS` 
do
#  	echo "$routers " >> wiki.txt;
	echo "|{{https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/router/$routers/front.svg?100x111}}| $routers |CPU|RAM|FLASH|WAN|LAN|USB23|WIFI2|WIFI5|ANT|ETC|" >> wiki.txt;
done
