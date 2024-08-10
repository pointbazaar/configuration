# this script is for the installation of a desktop
# system. does not make much sense for server system.

set -eux

# do the common part first
source setup-arch-common.sh

# TODO steps to setup x server, qtile, slock
$INSTALL xorg xorg-xinit qtile
cp /home/alex/configuration/.xinitrc /home/alex/
mkdir -p /home/alex/.config/qtile
cp /home/alex/configuration/qtile/config.py /home/alex/.config/qtile
$INSTALL slock

# email
$INSTALL thunderbird

# tools for images, videos
$INSTALL feh vlc inkscape gimp

# pdf viewer
$INSTALL zathura zathura-pdf-poppler
mkdir -p /home/alex/.config/zathura
cp /home/alex/configuration/zathurarc /home/alex/.config/zathura/

# terminal emulator
$INSTALL kitty
mkdir -p /home/alex/.config/kitty
ln -sf /home/alex/configuration/kitty/kitty.conf /home/alex/.config/kitty/kitty.conf

# web browser
$INSTALL firefox
$INSTALL qutebrowser
mkdir -p /home/alex/.config/qutebrowser
ln -sf /home/alex/configuration/qutebrowser/config.py /home/alex/.config/qutebrowser/config.py

# audio system
$INSTALL pulseaudio pulsemixer
systemctl --user restart pulseaudio.service

# CAD
$INSTALL freecad

# Printing, CUPS, Printers
$INSTALL cups cups-pdf
systemctl enable cups.service
