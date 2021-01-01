#!/bin/sh
#script auto installer LEMP Debisn 10
#created bye HideSSH.com and Kumpulanremaja.com
#OS Debian 9

apt-get update && apt-get upgrade -y
apt-get install wget curl -y

#install webserver
apt install nginx -y
