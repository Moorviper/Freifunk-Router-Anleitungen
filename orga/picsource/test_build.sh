#! /bin/sh
ROUTERS1="\
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

ROUTERS="\
tp-link-tl-wr841n-nd-v3 \
tp-link-tl-wr841n-nd-v5 \
tp-link-tl-wr841n-nd-v7 \
tp-link-tl-wr841n-nd-v8 \
tp-link-tl-wr841n-nd-v9 \
x86-generic.img \
x86-kvm.img \
x86-virtualbox.vdi \
x86-vmware.vmdk"

rm -R pdfbuild;
mkdir pdfbuild;

soll=0
ist=0
for routers in `echo $ROUTERS` 
do
  soll=`expr $soll + 1`
done
# echo $soll

for routers in `echo $ROUTERS` 
do
rm *.log 1>/dev/null 2>&1 ;
rm -R _minted* 1>/dev/null 2>&1 ;
rm *.out 1>/dev/null 2>&1 ;
rm *.aux 1>/dev/null 2>&1 ;
rm *.synctex.gz 1>/dev/null 2>&1 ;
	clear;
	echo "";
  echo " $routers ";
  texsuffix=".tex"
  pdfsuffix=".pdf"
  stysuffix=".sty"
  texfile=$routers$texsuffix
  pdffile=$routers$pdfsuffix
  router="router"
  routerfile=$router$stysuffix
  specsPath1="$routers"
  specsPath2="/specs.tex"
  frontpath1="/front.jpg"
  frontpath2="/back.jpg"
  specsPath=$specsPath1$specsPath2
  frontpath=$specsPath1$frontpath1
  backpath=$specsPath1$frontpath2
  # echo $specsPath;
  touch $texfile;
  rm $routerfile;
  touch $routerfile;

  # Router
  router1="\\\newcommand{\\\routername}{"
  router2="$routers"
  router3="}"
  routername=$router1$router2$router3
  echo $routername >> $routerfile;

  cat Anleitung.tex >> $texfile;
  rm specs.tex ;
  rm front.jpg ;
  rm back.jpg ;
  cp $specsPath specs.tex ;
  cp $frontpath front.jpg ;
  cp $backpath back.jpg ;

  # build
  # pdflatex -shell-escape -interaction=nonstopmode -synctex=1 $texfile  ;
  # pdflatex  -latexoption="--shell-escape -interaction=nonstopmode  -synctex=1" $texfile  ;

  echo "";
  echo " PDFLaTeX"
   ist=`expr $ist + 1`
  # echo $ist;
  proz=$(bc -l <<< 'scale=2; '$soll'/'$ist'')
  # let progress=100/$proz
  echo " zu "$(bc -l <<< 'scale=2; 100/'$proz'') "% fertig";
  echo "=============================================";
  echo " building $routers first run ...";
  /Library/TeX/texbin/pdflatex -shell-escape -interaction=nonstopmode -synctex=1 $texfile 1>/dev/null 2>&1 ;
  echo " building $routers second run ...";
  /Library/TeX/texbin/pdflatex -shell-escape -interaction=nonstopmode -synctex=1 $texfile 1>/dev/null 2>&1 ;
  echo "=============================================";
  mv $pdffile ./pdfbuild ;
  # cleanup
  rm $texfile ;
  # rm $routerfile;
  # mkdir $routers ;
  echo "";
  echo "";
  echo "";
done
rm *.log 1>/dev/null 2>&1 ;
rm -R _minted* 1>/dev/null 2>&1 ;
rm *.out 1>/dev/null 2>&1 ;
rm *.aux 1>/dev/null 2>&1 ;
rm *.synctex.gz 1>/dev/null 2>&1 ;
rm *.pyg 1>/dev/null 2>&1 ;