#!/bin/bash

bash setup-common.sh

#https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-as-a-reverse-proxy-for-apache
#server stuff


#apt install -y nginx
#apt install -y apache2

apt install ufw

#enable ufw
#ufw allow 8080
ufw enable
ufw status


