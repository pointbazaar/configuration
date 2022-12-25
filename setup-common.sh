#!/bin/bash


apt-get update


# setup git
apt install -y git
git config --global user.email "alexander.hansen@9elements.com"
git config --global user.name "Alexander Hansen"


# -- ssh utilities --
# enables ssh with password on the commandline
apt install -y sshpass

#for drawing graphs and such
apt install -y graphviz 

# -- C and Assembly Toolchain --
apt install -y gcc make cmake nasm 

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

#bat, the cat clone with wings
#https://github.com/sharkdp/bat
#command is 'batcat' or 'bat'
apt -y install bat
ln -s /usr/bin/batcat /usr/bin/bat
