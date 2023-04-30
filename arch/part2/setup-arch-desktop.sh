# this script is for the installation of a desktop
# system. does not make much sense for server system.

# do the common part first
source /home/alex/configuration/arch/part2/setup-arch-common.sh

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
mkdir /etc/config
cp /home/alex/configuration/zathurarc /etc/config

# terminal emulator
$INSTALL kitty
ln -sf /home/alex/configuration/kitty/kitty.conf /home/alex/.config/kitty/kitty.conf

# web browser
$INSTALL qutebrowser
mkdir -p /home/alex/.config/qutebrowser
ln -sf /home/alex/configuration/qutebrowser/config.py /home/alex/.config/qutebrowser/config.py

# audio system
$INSTALL pulseaudio pulsemixer
systemctl --user restart pulseaudio.service

# CAD
$INSTALL freecad
