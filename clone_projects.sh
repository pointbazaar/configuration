#!/bin/bash

#this script clones the projects i am
#currently working on.
#It makes wiping my computers
#and setting up my dev environment again easier.

#I like to wipe my computers about every 6 months
#to install new versions of ubuntu
#and get rid of any configuration mistakes
#and files that might have accumulated

#it clones via ssh, so it assumes
#a ssh key in the github account.
#also, git should be installed

git clone git@github.com:pointbazaar/codewars-solutions.git
git clone git@github.com:pointbazaar/octofinsights.git
git clone git@github.com:pointbazaar/taiman-onway.git
git clone git@github.com:pointbazaar/BFD.git
git clone git@github.com:pointbazaar/cs_hhu.git
git clone git@github.com:pointbazaar/alexander-hansen.dev.git
git clone git@github.com:pointbazaar/old_stuff.git

#smalldragon
git clone git@github.com:pointbazaar/smalldragon.git
git clone git@github.com:pointbazaar/dragon-lexer.git
