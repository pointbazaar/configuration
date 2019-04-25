!/bin/bash

#run with sudo
#some things every dev in our organization needs

#editors
apt install -y gedit vim geany

#IDE's
sudo snap install intellij-idea-community --classic

#version control
apt install -y git
#configure git to cache credentials
git config credential.helper 'cache --timeout=3000000'

#haskell
apt install -y ghc haskell-stack
#upgrade that
stack upgrade

#C toolchain etc
apt install -y gcc make vlc baobap default-jdk nodejs

#for timing and profiling applications how long they take
apt install -y time

#for looking at system spec
apt install -y screenfetch
#build tools
apt install -y maven gradle

#graphic tools
#vector graphics - inkscape
apt install -y inkscape

#for inspecting and developing REST APIs, dont use postman bc its commercial product

#do not install atom, it is slow

#https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-as-a-reverse-proxy-for-apache
#server stuff
apt install -y nginx
#apt install -y apache2

#don't forget letsencrypt at certbot

#mail server setup
#sudo apt-get install postfix
#sudo apt-get install courier-pop
#sudo apt-get install courier-imap
#sudo apt install courier-authdaemon

#pdf, images
sudo apt install -y feh
sudo apt install -y xpdf


#see a tree view of filesystem
sudo apt install -y tree

#set global gitignore, we already have downloaded this repo, it should be in home directory
git config --global core.excludesfile '~/configuration/.gitignore'
