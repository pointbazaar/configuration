#!/bin/bash

apt-get update


#version control: git
apt install -y git


#display comments
git clone https://github.com/pointbazaar/comcat.git
cd comcat
./build.sh
cd ..
rm -rf comcat


#for drawing graphs and such
apt install -y graphviz 

#configure git to cache credentials
git config credential.helper 'cache --timeout=3000000'
#set global gitignore, we already have downloaded this repo, it should be in home directory
git config --global core.excludesfile '~/configuration/.gitignore'



#haskell is big and takes long to install especially with hackage and all the packages
#so it is temporarily removed from this install script
#haskell
#apt install -y ghc haskell-stack
#upgrade that
#stack upgrade

#C toolchain, nasm,  etc
apt install -y gcc make nasm  

#typescript toolchain [nodejs,typescript,angular]
#to get the latest nodejs:
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -


apt install -y baobap default-jdk 

#prolog
apt install -y swi-prolog

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
