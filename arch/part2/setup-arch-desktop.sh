# this script is for the installation of a desktop
# system. does not make much sense for server system.

set -eux

# do the common part first
source setup-arch-common.sh

# email
$INSTALL thunderbird

# tools for images, videos
$INSTALL feh inkscape

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

# audio system
$INSTALL pulseaudio pulsemixer
systemctl --user restart pulseaudio.service
