#!/bin/bash

# this is a script to debloat 
# my ubuntu 20.04 installation


# to see installed packages: 
# sudo apt list --installed

# remove some account plugins
sudo apt-get remove -y account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo

# remove gnome stuff
sudo apt-get remove -y gnome-contacts \
		gnome-mahjongg \
		gnome-mines \
		gnome-todo \
		gnome-calendar \
		gnome-bluetooth \
		gnome-font-viewer \
		gnome-sudoku

sudo apt-get remove -y remmina

sudo apt-get remove -y shotwell shotwell-common



# finish
sudo apt autoremove -y
