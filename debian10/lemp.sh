#!/bin/sh
#script auto installer LEMP Debisn 10
#created bye HideSSH.com and Kumpulanremaja.com
#OS Debian 9

apt-get install wget curl -y
apt-get install apt-transport-https lsb-release ca-certificates -y
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo deb https://packages.sury.org/php/ $(lsb_release -sc) main | tee /etc/apt/sources.list.d/php7.4.list


apt-get update && apt-get upgrade -y

cd
# set time GMT +7 jakarta
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

cd
#install webserver
apt install nginx -y
sudo systemctl start nginx
systemctl enable nginx

#install php
apt-get install php7.4-fpm php7.4-curl php7.4-gd php7.4-intl php7.4-mbstring php7.4-soap php7.4-xml php7.4-xmlrpc php7.4-zip php7.4-mysql -y
sudo systemctl start php7.4-fpm
sudo systemctl enable php7.4-fpm

#install mariaSQL
apt install mariadb-server mariadb-client -y
systemctl start mariadb
systemctl enable mariadb
mysql_secure_installation




