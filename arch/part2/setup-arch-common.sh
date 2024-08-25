# the idea of this script is to idempotent
# meaning that it can run >= 1 times and
# have the same effect.

set -eux

export INSTALL="pacman --quiet -S --noconfirm --noprogressbar --needed "

# check euid
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

# setup user account
if [! ls /home/alex ];
	then useradd alex
fi

# setup /home/alex
mkdir -p /home/alex/Downloads /home/alex/Pictures /home/alex/Documents /home/alex/.config

# auto-start NetworkManager
systemctl enable NetworkManager
systemctl start NetworkManager

$INSTALL sudo

# steps to setup git
$INSTALL git
git config --global user.email "alexander.hansen@9elements.com"
git config --global user.name "Alexander Hansen"
git config --global core.editor vim
git config --global pull.rebase false

# ssh utilities
$INSTALL openssh sshpass
mkdir -p /home/alex/.ssh/
ln -sf /home/alex/configuration/.ssh/config /home/alex/.ssh/config

# C Language Toolchain
$INSTALL gcc gdb make cmake nasm flex

# work tools
#$INSTALL i2ctools gpiod # seem to be unavailable?
$INSTALL dmidecode hwloc
$INSTALL usbutils

# networking tools (nslookup)
$INSTALL bind

# misc packages
$INSTALL screenfetch tree ranger graphviz zip

# .bashrc
ln -s /home/alex/configuration/.bashrc /home/alex/.bashrc

# xsel to use clipboard in terminal
$INSTALL xsel

# vim setup
$INSTALL vi vim
ln -sf /home/alex/configuration/.vimrc /home/alex/.vimrc
# ctags
$INSTALL ctags
mkdir -p /home/alex/.config/ctags/
ln -sf /home/alex/configuration/.ctags /home/alex/.config/.ctags

$INSTALL htop
mkdir -p /home/alex/.config/htop
cp /home/alex/configuration/htoprc /home/alex/.config/htop/htoprc

# ack which is similar to grep
$INSTALL ack
ln -sf /home/alex/configuration/.ackrc /home/alex/.ackrc
$INSTALL ripgrep

# change ownership of /home/alex
chown -R alex:alex /home/alex

echo "TODO: generate ssh-keys"

echo "TODO: visudo /etc/sudoers"
# add following line:
# alex ALL=(ALL:ALL) ALL"
