#! /bin/sh

#
#  All routers (Gluon 2015.1.2) Freifunk Fulda
#

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

#
#
#
#
#       TPLINK  normal
#
#
#
#
for routers in `echo $ROUTERStl` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="tplink"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="router"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       TPLINK repeater
#
#
#
#
for routers in `echo $ROUTERStlre` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="tplink"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="repeater"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       Buffalo
#
#
#
#
for routers in `echo $ROUTERSbuffalo` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="buffalo"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="router"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       dlink
#
#
#
#
for routers in `echo $ROUTERSdlink` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="dlink"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="router"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       GL-Net
#
#
#
#
for routers in `echo $ROUTERSglnet` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="glnet"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="router"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       Linksys
#
#
#
#
for routers in `echo $ROUTERSlinksys` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="linksys"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="router"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       Netgear
#
#
#
#
for routers in `echo $ROUTERSnetgear` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="netgear"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="router"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       ubiquiti
#
#
#
#
for routers in `echo $ROUTERSubiquti` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="ubiquiti"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="router"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done

#
#
#
#
#       VM
#
#
#
#
for routers in `echo $ROUTERSvm` 
do

  clear;
  echo "";
  #   Displays the actual routername which is in progress
  echo " $routers ";

  # definition of the file suffixes
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"

  # definition of the source and outputfile
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix

  # definition subfolderpath's
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"

  # specification texfile
  specsPath2="/specs.tex"
  # front picture of the router as pdf
  frontpath1="/front.pdf"
  # back picture of the router as pdf
  frontpath2="/back.pdf"

  # definition of the filepath's
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  
  routerswitchcrea="/switch.sty"
  routerswitch=$specsPath1$routerswitchcrea
  # echo $specsPath;
  #touch $texfile;
  rm $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

    # vendor
  routerven1="\\\newcommand{\\\vendor}{"
  routerven2="pc"
  routerven3="}"
  routernameven=$routerven1$routerven2$routerven3
  echo $routernameven >> $routerfile;

    # type (router repeater offloader vm)
  routertype1="\\\newcommand{\\\type}{"
  routertype2="vm"
  routertype3="}"
  routernametype=$routertype1$routertype2$routertype3
  echo $routernametype >> $routerfile;

    # stable/broken status
  routerstat1="\\\newcommand{\\\status}{"
  routerstat2="stable"
  routerstat3="}"
  routernamestat=$routerstat1$routerstat2$routerstat3
  echo $routernamestat >> $routerfile;

  rm $routerswitch;
  cp $routerfile $routerswitch;

done
