
apt install -y xserver-xorg xinit
apt install -y libpangocairo-1.0-0
apt install -y python3-pip python3-xcffib python3-cairocffi

pip install qtile

# compositor
apt install -y picom

ln -s /home/alex/configuration/.xinitrc /home/alex/.xinitrc

# lockscreen (suckless, slock)
apt install -y slock
