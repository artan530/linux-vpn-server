echo "Hi ! root "
echo "You need root access to install "
echo "please insert the valid info for create  vpn server "
echo "Don't worry ..."
echo "please insert (y) key to Start... "

read ykey

if [ $ykey == "y"  ]
 then
FILE=/etc/pptpd.conf
if [[ -f "$FILE" ]] 
then
echo "PPTPD Service Is Exist" 
echo ""
echo "Please Insert Ip Server For Example : 192.114.16.112 "
read ipserver
echo "Please insert User Ip Range For Example : 192.114.16.113-120 "
read userip
else
echo "pptpd service not found ... " 
echo $(apt-get install pptpd -y )
echo "install pptpd"
echo ""
echo "please restart script ... "
echo ""
fi
else
echo "by..!"
fi
