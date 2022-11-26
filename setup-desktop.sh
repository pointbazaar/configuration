#!/bin/bash
bash setup-common.sh

#hwloc (graphical) (lstopo command) (see hardware topology)
apt install -y hwloc

#Editors:
#geany is for my C Projects
apt install -y gedit geany 

#Email
apt install -y thunderbird

#pdf, images, videos, svg editing
apt install -y feh vlc xpdf inkscape

#CLion, for C Development
#snap install --classic clion 

#install VS Code
#snap install --classic code 

#Terminal Emulator
apt install -y kitty

#Browser
apt install -y firefox-esr

#Audio System
apt install -y pulsemixer
