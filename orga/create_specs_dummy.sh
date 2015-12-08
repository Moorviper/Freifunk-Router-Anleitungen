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

for routers in `echo $ROUTERS` 
do
  echo "$routers ";
  cd $routers ;
  rm specs.tex;
  touch specs.tex ; 
    echo "% specs from given folder" >> specs.tex ;
  	echo "\small" >> specs.tex ;
	echo "\\\color{black}" >> specs.tex ;
	echo "\\\vspace{0.3cm}" >> specs.tex ;
	echo "\\\begin{center} " >> specs.tex ;
	echo "\\\begin{tikzpicture}" >> specs.tex ;
	echo "\\\clip node (m) [matrix,matrix of nodes," >> specs.tex ;
	echo "fill=FFmagenta!20,inner sep=0pt," >> specs.tex ;
	echo "nodes in empty cells," >> specs.tex ;
	echo "nodes={minimum height=1cm,minimum width=2.6cm,anchor=center,outer sep=0,font=\sffamily}," >> specs.tex ;
	echo "row 1/.style={nodes={fill=FFmagenta,text=white}}," >> specs.tex ;
	echo "column 1/.style={nodes={fill=FFmagenta,text=white,align=left,text width=3cm,text depth=0.5ex}}," >> specs.tex ;
	echo "column 2/.style={text width=12cm,align=left,every even row/.style={nodes={fill=white}}}," >> specs.tex ;
	echo "column 3/.style={text width=3cm,align=center,every even row/.style={nodes={fill=white}},}," >> specs.tex ;
	echo "row 1 column 1/.style={nodes={fill=FFmagenta}},%									1. spalte oben" >> specs.tex ;
	echo "prefix after command={[rounded corners=4mm] (m.north east) rectangle (m.south west)}" >> specs.tex ;
	echo "] {" >> specs.tex ;
	string1="                		& $\ \ $ "
	string2=$routers
	string3="                 \\\\\   "
	combined=$string1$string2$string3
	echo $combined >> specs.tex ;
	echo "$\ \ $ CPU   			& $\ \ $ NAME \\\\\ " >> specs.tex ;
	echo "$\ \ $ RAM 				& $\ \ $ XXX MB \\\\\ " >> specs.tex ;
	echo "$\ \ $ Flash			& $\ \ $ XXX MB \\\\\ " >> specs.tex ;
	echo "$\ \ $ WAN				& $\ \ $ X x1 GigE WAN	 \\\\\ " >> specs.tex ;
	echo "$\ \ $ LAN				& $\ \ $ X x1 GigE LAN	 \\\\\ " >> specs.tex ;
	echo "$\ \ $ USB				& $\ \ $ xX v2.0	 \\\\\ " >> specs.tex ;
	echo "$\ \ $ WIFI 			& $\ \ $ 300 Mbit (2x2) im 2.4 Ghz Band \\\\\ " >> specs.tex ;
	echo "						& $\ \ $ 450 Mbit (3x3) im 5 Ghz Band \\\\\ " >> specs.tex ;
	echo "};" >> specs.tex ;
	echo "\end{tikzpicture}" >> specs.tex ;
	echo "\end{center} " >> specs.tex ;
	
  # rm test ;
  cd .. ;
done





