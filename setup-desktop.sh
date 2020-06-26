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

#install intellij with script from some repo
cd /tmp
git clone git@github.com:nagygergo/jetbrains-toolbox-install.git
cd jetbrains-toolbox-install
./jetbrains-toolbox.sh
cd - #go back to the directory we came from

#install android studio
#TODO
