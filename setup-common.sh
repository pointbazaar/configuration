#!/bin/bash
apt-get update

#version control: git
apt install -y git

#for drawing graphs and such
apt install -y graphviz 

#configure git to cache credentials
git config credential.helper 'cache --timeout=3000000'
#set global gitignore, we already have downloaded this repo, it should be in home directory
git config --global core.excludesfile '~/configuration/.gitignore'

#haskell
#apt install -y ghc haskell-stack
#stack upgrade

#C toolchain, nasm,  etc
apt install -y gcc make nasm  

apt install -y baobap

#for timing and profiling applications how long they take
apt install -y time

#for looking at system spec
apt install -y screenfetch
#build tools
apt install -y maven

apt install -y net-tools

#don't forget letsencrypt at certbot

#see a tree view of filesystem
snap install -y tree

#file manager
apt install -y ranger

apt install -y vim
ln -s .vimrc ~/

#Java OpenJdk
#alternative: default-jdk
sudo apt install -y openjdk-14-jdk  

#MYSQL Client
sudo apt install -y mysql-client-core-8.0     # version 8.0.20-0ubuntu0.20.04.1

#Micro
sudo apt -y install micro

#Astyle http://astyle.sourceforge.net/astyle.html
#Astyle is for indenting and formatting source files
#astyle -t main.c
#to indent main.c with tabs
sudo apt -y install astyle

#bat, the cat clone with wings
#https://github.com/sharkdp/bat
#command is 'batcat'
sudo apt -y install bat
