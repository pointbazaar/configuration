#!/bin/bash

bash setup-common.sh

#editors
apt install -y gedit geany

#graphic tools
#vector graphics - inkscape
apt install -y inkscape

#pdf, images, videos
apt install -y feh vlc xpdf

#IDE for C/C++ development
apt install -y codeblocks

#convenient ssh client that remembers 
#hosts and credentials
snap install termius-app
