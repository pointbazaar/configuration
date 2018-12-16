!/bin/bash

#run with sudo
#some things every dev in our organization needs

#editors
apt install -y gedit
apt install -y vim

apt install -y gcc
apt install -y vlc
apt install -y baobap
apt install -y default-jdk
apt install -y nodejs

#build tools
apt install -y maven

#graphic tools
#vector graphics - inkscape
apt install -y inkscape

#for inspecting and developing REST APIs
snap install postman

#install atom
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update 
sudo apt-get install atom


