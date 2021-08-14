#!/bin/bash


apt-get update

apt install -y git

#for drawing graphs and such
apt install -y graphviz 

#C toolchain, nasm,  etc
apt install -y gcc make nasm  

#for timing and profiling applications how long they take
apt install -y time

#for looking at system spec
apt install -y screenfetch

apt install -y maven

#see a tree view of filesystem
snap install -y tree

apt install -y vim
ln -s .vimrc ~/

#Java OpenJdk
apt install -y openjdk-16-jdk  

#MYSQL Client
apt install -y mysql-client-core-8.0     # version 8.0.20-0ubuntu0.20.04.1

apt -y install micro

#bat, the cat clone with wings
#https://github.com/sharkdp/bat
#command is 'batcat'
apt -y install bat
