#! /bin/sh

#
#   deploy-script for the pdf files
#

rm Anleitung.pdf;
rm back.pdf;
rm dummy.pdf;
rm front.pdf;
rm xiaomi-miwifi-mini-demo.pdf;
rm tp-link-cpe210-v1.0-marburg-test.pdf;

echo "=============================================";
echo ""
echo " compressing pdf files:"
echo " tar cfvj anleitungen.tar.bz2 *.pdf"
echo ""
echo "=============================================";
tar cfvj anleitungen.tar.bz2 *.pdf

# rm *.log 1>/dev/null 2>&1 ;
# rm -R _minted* 1>/dev/null 2>&1 ;
# rm *.out 1>/dev/null 2>&1 ;
# rm *.aux 1>/dev/null 2>&1 ;
# rm *.synctex.gz 1>/dev/null 2>&1 ;
# rm *.pyg 1>/dev/null 2>&1 ;
