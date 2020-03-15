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
echo "PPTPD Is Exist" 
else
echo "pptpd not found ... " 
echo $(apt-get install pptpd -y )
fi
else
echo "by..!"
fi
