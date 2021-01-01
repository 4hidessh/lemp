#!/bin/sh
#script auto installer LEMP Debisn 10
#created bye HideSSH.com and Kumpulanremaja.com
#OS Debian 9

apt-get update && apt-get upgrade -y
apt-get install wget curl -y

#install webserver
apt install nginx -y
sudo systemctl start nginx
systemctl enable nginx


#install mariaSQL
apt install mariadb-server mariadb-client -y
systemctl start mariadb
systemctl enable mariadb
