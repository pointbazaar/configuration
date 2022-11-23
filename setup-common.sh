#!/bin/bash


apt-get update

apt install -y git

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

# -- Editors --
apt install -y vim
ln -s .vimrc ~/
apt -y install micro

#bat, the cat clone with wings
#https://github.com/sharkdp/bat
#command is 'batcat'
apt -y install bat
