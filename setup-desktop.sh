#!/bin/bash
bash setup-common.sh

#editors:
#texstudio is for editing latex
apt install -y gedit geany texstudio

#graphic tools
#vector graphics - inkscape
apt install -y inkscape

#pdf, images, videos
apt install -y feh vlc xpdf

#IDE for C/C++ development
apt install -y codeblocks

#convenient ssh client that remembers hosts and credentials
snap install termius-app

#install intellij
snap install --classic intellij-idea-community
#install android studio
snap install --classic android-studio

#install mysql-workbench
snap install --candidate mysql-workbench-community

