#!/bin/bash
bash setup-common.sh

#graphical disk usage analyzer
apt install -y baobap 

#editors:
#texstudio is for editing latex
#geany is for my C Projects
apt install -y gedit geany texstudio

#pdf, images, videos, svg editing
apt install -y feh vlc xpdf inkscape

#convenient ssh client that remembers hosts and credentials
snap install termius-app

#install intellij
snap install --classic intellij-idea-community

#install android studio
#snap install --classic android-studio

#-----------------------------------------
#install mysql-workbench
#HINT: you need to enable some permissions
#for this snap in the ubuntu software center.
#otherwise it will not accept passwords

#To copy connections to other computers:
#Tools->Configuration->Backup Connections
snap install --candidate mysql-workbench-community

#install youtube-dl to download videos from youtube
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
