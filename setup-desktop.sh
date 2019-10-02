#!/bin/bash
bash setup-common.sh
#some things every dev in our organization needs

#editors
apt install -y gedit geany

#IDE's
#intellij is too heavyweight and uses too much resources
#it cannot be used reliably without a high-end computer
#sudo snap install intellij-idea-community --classic



#graphic tools
#vector graphics - inkscape
apt install -y inkscape

#for inspecting and developing REST APIs, dont use postman bc its commercial product




#pdf, images, videos
apt install -y feh vlc xpdf

#IDE for C++ development
apt install -y codeblocks


apt install -y zsh
sudo chsh -s /usr/bin/zsh root 
sudo chsh -s /usr/bin/zsh alex
#install oh my zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
