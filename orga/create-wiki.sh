#! /bin/sh
ROUTERStl="\
tp-link-cpe210-v1.0 \
tp-link-cpe220-v1.0 \
tp-link-cpe510-v1.0 \
tp-link-cpe520-v1.0 \
tp-link-tl-mr3020-v1 \
tp-link-tl-mr3040-v1 \
tp-link-tl-mr3040-v2 \
tp-link-tl-mr3220-v1 \
tp-link-tl-mr3220-v2 \
tp-link-tl-mr3420-v1 \
tp-link-tl-mr3420-v2 \
tp-link-tl-wa701n-nd-v1 \
tp-link-tl-wa701n-nd-v2 \
tp-link-tl-wa750re-v1 \
tp-link-tl-wa801n-nd-v1 \
tp-link-tl-wa801n-nd-v2 \
tp-link-tl-wa830re-v1 \
tp-link-tl-wa830re-v2 \
tp-link-tl-wa850re-v1 \
tp-link-tl-wa860re-v1 \
tp-link-tl-wa901n-nd-v2 \
tp-link-tl-wa901n-nd-v3 \
tp-link-tl-wdr3500-v1 \
tp-link-tl-wdr3600-v1 \
tp-link-tl-wdr4300-v1 \
tp-link-tl-wdr4900-v1 \
tp-link-tl-wr703n-v1 \
tp-link-tl-wr710n-v1 \
tp-link-tl-wr740n-nd-v1 \
tp-link-tl-wr740n-nd-v3 \
tp-link-tl-wr740n-nd-v4 \
tp-link-tl-wr740n-nd-v5 \
tp-link-tl-wr741n-nd-v1 \
tp-link-tl-wr741n-nd-v2 \
tp-link-tl-wr741n-nd-v4 \
tp-link-tl-wr741n-nd-v5 \
tp-link-tl-wr743n-nd-v1 \
tp-link-tl-wr743n-nd-v2 \
tp-link-tl-wr841n-nd-v3 \
tp-link-tl-wr841n-nd-v5 \
tp-link-tl-wr841n-nd-v7 \
tp-link-tl-wr841n-nd-v8 \
tp-link-tl-wr841n-nd-v9 \
tp-link-tl-wr842n-nd-v1 \
tp-link-tl-wr842n-nd-v2 \
tp-link-tl-wr941n-nd-v2 \
tp-link-tl-wr941n-nd-v3 \
tp-link-tl-wr941n-nd-v4 \
tp-link-tl-wr941n-nd-v5 \
tp-link-tl-wr1043n-nd-v1 \
tp-link-tl-wr1043n-nd-v2 \
tp-link-tl-wr2543n-nd-v1"

ROUTERStlre="\
tp-link-tl-wa701n-nd-v1 \
tp-link-tl-wa701n-nd-v2 \
tp-link-tl-wa750re-v1 \
tp-link-tl-wa801n-nd-v1 \
tp-link-tl-wa801n-nd-v2 \
tp-link-tl-wa830re-v1 \
tp-link-tl-wa830re-v2 \
tp-link-tl-wa850re-v1 \
tp-link-tl-wa860re-v1 \
tp-link-tl-wa901n-nd-v2 \
tp-link-tl-wa901n-nd-v3"

ROUTERSbuffalo="\
buffalo-wzr-hp-ag300h-wzr-600dhp \
buffalo-wzr-hp-g450h"

ROUTERSdlink="\
d-link-dir-615-rev-c1 \
d-link-dir-825-rev-b1"

ROUTERSglnet="\
gl-inet-6408a-v1 \
gl-inet-6416a-v1"

ROUTERSlinksys="\
linksys-wrt160nl"

ROUTERSnetgear="\
netgear-wndr3700 \
netgear-wndr3700v2 \
netgear-wndr3700v4 \
netgear-wndr3800 \
netgear-wndr4300 \
netgear-wndrmacv2"

#
#   for ubiquitit
#

ROUTERSubiquti="\
ubiquiti-bullet-m \
ubiquiti-loco-m-xw \
ubiquiti-loco-m \
ubiquiti-nanostation-m-xw \
ubiquiti-nanostation-m \
ubiquiti-picostation-m \
ubiquiti-rocket-m \
ubiquiti-unifi-ap-pro \
ubiquiti-unifi \
ubiquiti-unifiap-outdoor"

ROUTERSvm="\
x86-generic.img \
x86-kvm.img \
x86-virtualbox.vdi \
x86-vmware.vmdk"

ROUTERSxiaomi="\
	xiaomi-miwifi-mini"

ROUTERS_2016_1="\
buffalo-wzr-hp-g300nh \
d-link-dir-505-rev-a1 \
tp-link-cpe210-v1.1 \
tp-link-cpe220-v1.1 \
tp-link-cpe510-v1.1 \
tp-link-cpe520-v1.1 \
tp-link-tl-wa901n-nd-v1 \
tp-link-tl-wr710n-v2 \
tp-link-tl-wr710n-v2.1 \
tp-link-tl-wr801n-nd-v1 \
tp-link-tl-wr801n-nd-v2 \
tp-link-tl-wr841n-nd-v10 \
tp-link-tl-wr843n-nd-v1 \
tp-link-tl-wr940n-v1 \
tp-link-tl-wr940n-v2 \
tp-link-tl-wr940n-v3 \
tp-link-tl-wr941n-nd-v6 \
tp-link-tl-wr1043n-nd-v3 \
ubiquiti-airgateway \
ubiquiti-airrouter \
ubiquiti-bullet-m \
ubiquiti-bullet-m2 \
ubiquiti-bullet-m5 \
ubiquiti-loco-m-xw \
ubiquiti-ls-sr71 \
ubiquiti-nanostation-loco-m2 \
ubiquiti-nanostation-loco-m5 \
ubiquiti-nanostation-m \
ubiquiti-nanostation-m-xw \
ubiquiti-nanostation-m2 \
ubiquiti-nanostation-m5 \
ubiquiti-picostation-m2 \
ubiquiti-rocket-m-xw \
ubiquiti-rocket-m2 \
ubiquiti-rocket-m5 \
ubiquiti-unifi-ap-pro \
ubiquiti-unifi \
ubiquiti-unifiap-outdoor+ \
ubiquiti-unifiap-outdoor \
wd-my-net-n600 \
wd-my-net-n750"


ROUTERS_2016_1_1="\
onion-omega \
tp-link-tl-mr13u-v1"

ROUTERS_2016_1_3="\
alfa-ap121 \
alfa-ap121u \
alfa-hornet-ub \
tp-link-tl-wa7510n-v1"


ROUTERS_2016_1_4="\
8devices-carambola2-board \
meraki-mr12 \
meraki-mr16 \
meraki-mr62 \
meraki-mr66"

rm wiki.txt
touch wiki.txt
	
	echo "### Buffalo" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSbuffalo` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

	
	echo "### D-Link" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSdlink` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

	
	echo "### GL-net" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSglnet` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done


	echo "### Linksys" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSlinksys` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

	echo "### Netgear" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSnetgear` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done



	echo "### tplink" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERStl` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

	echo "### tplink repeater" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERStlre` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done


	echo "### ubiquitit" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSubiquti` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

	echo "### X86 Images" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSvm` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

	echo "### Gluon 2016.x broken device" >> wiki.txt
	echo "***" >> wiki.txt

	echo "### Xiaomi" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERSxiaomi` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
done

  	echo "### Gluon 2016.1 added Device" >> wiki.txt
	echo "***" >> wiki.txt



  	echo "### ar71xx-generic" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERS_2016_1` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

################################################################################################################################################

  	echo "### Gluon 2016.1.1 added Device" >> wiki.txt
	echo "***" >> wiki.txt



  	echo "### ar71xx-generic" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERS_2016_1_1` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

################################################################################################################################################

  	echo "### Gluon 2016.1.3 added Device" >> wiki.txt
	echo "***" >> wiki.txt



  	echo "### ar71xx-generic" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERS_2016_1_3` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done

################################################################################################################################################

  	echo "### Gluon 2016.1.4 added Device" >> wiki.txt
	echo "***" >> wiki.txt



  	echo "### ar71xx-generic" >> wiki.txt
	echo "***" >> wiki.txt
	echo "| Router Name  	| front | back |" >> wiki.txt;
	echo "|---	        |---	|---   |" >> wiki.txt;
for routers in `echo $ROUTERS_2016_1_4` 
do
	echo "$routers |<img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/front.jpg" height="200" width="222">    | <img src="https://raw.githubusercontent.com/Moorviper/Freifunk-Router-Anleitungen/master/$routers/back.jpg" height="200" width="222">   |" >> wiki.txt;  
 	echo "|   |   |   |   |   |" >> wiki.txt;
  	echo "$routers ";
  # mkdir $routers ;
done



 