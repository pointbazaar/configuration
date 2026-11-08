#!/bin/bash


apt-get update

# setup sudo and add ourselves to sudo group
apt install -y sudo
usermod -aG sudo alex

# setup git
apt install -y git
git config --global user.email "alexander.hansen@9elements.com"
git config --global user.name "Alexander Hansen"
git config --global core.editor vim
git config pull.rebase false

# -- ssh utilities --
# enables ssh with password on the commandline
apt install -y ssh sshpass
ln -s /home/alex/configuration/.ssh/config /home/alex/.ssh/config

#for drawing graphs and such
apt install -y graphviz 

# -- C and Assembly Toolchain --
apt install -y gcc make cmake nasm

# I2C Bus Tools (i2cdetect, ...)
# gpio tools (gpiodetect, gpioinfo)
# smbios tools (dmidecode)
apt install -y i2ctools gpiod dmidecode

# -- Flex Lexer Generator for ESPL1000 Development --
apt install -y flex

#for timing and profiling applications how long they take
apt install -y time

#for looking at system spec
apt install -y screenfetch

#see a tree view of filesystem
apt install -y tree

#favorite file explorer
apt install -y ranger

# -- Editors (VIM)--
apt install -y vim
apt install -y exuberant-ctags
ln -s /home/alex/configuration/.vimrc /home/alex/.vimrc
ln -s /home/alex/configuration/.ctags /home/alex/.ctags

# htop
apt install -y htop
cp /home/alex/configuration/htoprc /home/alex/.config/htop/htoprc

#bat, the cat clone with wings
#https://github.com/sharkdp/bat
#command is 'batcat' or 'bat'
apt -y install bat
ln -s /usr/bin/batcat /usr/bin/bat

#ack which is similar to grep
apt install -y ack
ln -s /home/alex/configuration/.ackrc /home/alex/.ackrc

# Zip Files
apt install -y zip
