#!/bin/bash
bash setup-common.sh

#hwloc (graphical) (lstopo command) (see hardware topology)
apt install -y hwloc

#editors:
#geany is for my C Projects
apt install -y gedit geany 

#pdf, images, videos, svg editing
apt install -y feh vlc xpdf inkscape

#convenient ssh client that remembers hosts and credentials
snap install termius-app

#install intellij
snap install --classic intellij-idea-community
snap install --classic clion 

#-----------------------------------------
#install mysql-workbench
#HINT: you need to enable some permissions
#for this snap in the ubuntu software center.
#otherwise it will not accept passwords

#To copy connections to other computers:
#Tools->Configuration->Backup Connections
snap install --candidate mysql-workbench-community
