!/bin/bash

#run with sudo
#some things every dev in our organization needs

#editors
apt install -y gedit
apt install -y vim

#version control
apt install -y git

#haskell
apt install -y ghc
apt install -y ghci
apt install -y haskell-stack
#upgrade that
stack upgrade

apt install -y gcc
apt install -y vlc
apt install -y baobap
apt install -y default-jdk
apt install -y nodejs


#for timing and profiling applications how long they take
apt install -y time

#for looking at system spec
apt install -y screenfetch
#build tools
apt install -y maven

#graphic tools
#vector graphics - inkscape
apt install -y inkscape

#for inspecting and developing REST APIs
snap install postman

#do not install atom, it is slow

#https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-as-a-reverse-proxy-for-apache
#server stuff
apt install -y nginx
apt install -y apache2

#don't forget letsencrypt at certbot

apt install -y hddtemp



#set global gitignore, we already have downloaded this repo, it should be in home directory
git config --global core.excludesfile '~/configuration/.gitignore'
