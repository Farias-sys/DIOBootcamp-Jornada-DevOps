#$!/bin/bash
# Create a Web Server with Apache 2 and runs a application provided by bootcamp staff

echo "   ____                       ____    __          
  / __/__ _____  _____ ____  / __/__ / /___ _____ 
 _\ \/ -_) __/ |/ / -_) __/ _\ \/ -_) __/ // / _ \
/___/\__/_/  |___/\__/_/   /___/\__/\__/\_,_/ .__/
                                           /_/    "


echo "- Server Setup: Updating the packages of server"

apt-get update
apt-get upgrade -y

echo "- Server Setup: Installing Apache2 Web Server"

apt-get install apache2 -y

echo "- Server Setup: Apache2 installed successfully"
echo "- Server Setup: Downloading and installing application from bootcamp"

apt-get install unzip -y
apt-get install wget -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzinp main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "- Server Setup: Application installed successfully and can be acessed via local IP"
echo "- Server Setup: Showing Apache2 Status"

systemctl status apache2

echo "- Server Setup: Installation finished. Thanks for use my setup :D"