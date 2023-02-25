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
ln -s /home/alex/configuration/kitty/kitty.conf /home/alex/.config/kitty/kitty.conf

#Browser
apt install -y qutebrowser
mkdir -p /home/alex/.config/qutebrowser
ln -s /home/alex/configuration/qutebrowser/config.py /home/alex/.config/qutebrowser/config.py

#Audio System
apt install -y pulseaudio pulsemixer
#Audio Sysyem restart. remember to unmute sound in pulsemixer
systemctl --user restart pulseaudio.service

# for doing CAD Designs (FreeCAD)
apt install -y freecad
