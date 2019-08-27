#!/bin/bash

apt-get update

#version control
apt install -y git
#configure git to cache credentials
git config credential.helper 'cache --timeout=3000000'
#set global gitignore, we already have downloaded this repo, it should be in home directory
git config --global core.excludesfile '~/configuration/.gitignore'



#haskell
apt install -y ghc haskell-stack
#upgrade that
stack upgrade

#C toolchain etc
apt install -y gcc make 

#typescript toolchain [nodejs,typescript,angular]
apt install -y nodejs node-typescript ng-common
npm install -g angular-cli

apt install -y baobap default-jdk 

#for timing and profiling applications how long they take
apt install -y time

#for looking at system spec
apt install -y screenfetch
#build tools
apt install -y maven gradle



apt install -y net-tools

#don't forget letsencrypt at certbot

#mail server setup
#sudo apt-get install postfix
#sudo apt-get install courier-pop
#sudo apt-get install courier-imap
#sudo apt install courier-authdaemon

#see a tree view of filesystem
snap install -y tree

apt install -y vim
