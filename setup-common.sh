#!/bin/bash


apt-get update

apt install -y git

#for drawing graphs and such
apt install -y graphviz 

#for smalldragon development
#C toolchain, nasm,  etc
apt install -y gcc make cmake nasm 
apt install -y flex

#for timing and profiling applications how long they take
apt install -y time

#for looking at system spec
apt install -y screenfetch

#see a tree view of filesystem
apt install -y tree

apt install -y vim
ln -s .vimrc ~/

apt -y install micro

#bat, the cat clone with wings
#https://github.com/sharkdp/bat
#command is 'batcat'
apt -y install bat
