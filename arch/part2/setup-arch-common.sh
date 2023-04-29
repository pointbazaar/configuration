# the idea of this script is to idempotent
# meaning that it can run >= 1 times and
# have the same effect.

export INSTALL="pacman --quiet -S --noconfirm --noprogressbar --needed "

# check euid
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

# setup user account
useradd alex

# setup /home/alex
mkdir -p /home/alex/Downloads /home/alex/Pictures /home/alex/Documents /home/alex/.config

# install sudo package
$INSTALL sudo
echo "\nalex ALL=(ALL:ALL) ALL" >> /etc/sudoers

# steps to setup git
$INSTALL git
git config --global user.email "alexander.hansen@9elements.com"
git config --global user.name "Alexander Hansen"
git config --global core.editor vim
git config pull.rebase false

# ssh utilities
$INSTALL ssh sshpass
ln -sf /home/alex/configuration/.ssh/config /home/alex/.ssh/config

# C Language Toolchain
$INSTALL gcc gdb make cmake nasm flex

# work tools
$INSTALL i2ctools gpiod dmidecode hwloc

# misc packages
$INSTALL screenfetch tree ranger graphviz zip

# vim setup
$INSTALL vim ctags
ln -sf /home/alex/configuration/.vimrc /home/alex/.vimrc
ln -sf /home/alex/configuration/.ctags /home/alex/.ctags

$INSTALL htop
mkdir -p /home/alex/.config/htop
cp /home/alex/configuration/htoprc /home/alex/.config/htop/htoprc

# ack which is similar to grep
$INSTALL ack
ln -sf /home/alex/configuration/.ackrc /home/alex/.ackrc

# change ownership of /home/alex
chown -R alex:alex /home/alex