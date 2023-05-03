
#https://aur.archlinux.org/packages/brother-hll2340dw

echo "might need multilib repositories for 32 bit packages"

sudo pacman -S lib32-glibc
sudo pacman -S patch

mkdir /home/alex/Downloads/brother-hll2340dw \
&& git clone https://aur.archlinux.org/brother-hll2340dw.git /home/alex/Downloads/brother-hll2340dw \
&& cd /home/alex/Downloads/brother-hll2340dw/ \
&& makepkg

sudo pacman -U brother-hll2340dw-3.2.0_1-1-x86_64.pkg.tar.zst

echo "visit http://localhost:631/admin/" "  -> Add Printer"
