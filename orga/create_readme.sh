#! /bin/sh
ROUTERS="\
buffalo-wzr-hp-ag300h-wzr-600dhp \
buffalo-wzr-hp-g450h \
d-link-dir-615-rev-c1 \
d-link-dir-825-rev-b1 \
gl-inet-6408a-v1 \
gl-inet-6416a-v1 \
linksys-wrt160nl \
netgear-wndr3700 \
netgear-wndr3700v2 \
netgear-wndr3700v4 \
netgear-wndr3800 \
netgear-wndr4300 \
netgear-wndrmacv2 \
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
tp-link-tl-wr2543n-nd-v1 \
ubiquiti-bullet-m \
ubiquiti-loco-m-xw \
ubiquiti-loco-m \
ubiquiti-nanostation-m-xw \
ubiquiti-nanostation-m \
ubiquiti-picostation-m \
ubiquiti-rocket-m \
ubiquiti-unifi-ap-pro \
ubiquiti-unifi \
ubiquiti-unifiap-outdoor \
x86-generic.img \
x86-kvm.img \
x86-virtualbox.vdi \
x86-vmware.vmdk"

for routers in `echo $ROUTERS`  # durchgehe alle Router
do
  echo "$routers ";
  cd $routers ;
  touch README.md ;
  string1="README für Router: "
  string2=$routers
  combined=$string1$string2
  echo $combined >> README.md ;
  # rm README.md ;
  cd .. ;
done

