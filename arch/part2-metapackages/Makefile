all: build install

install:
	sudo pacman -U alexander_common*x86_64.pkg.tar.zst

build:
	rm -f *x86_64.pkg.tar.zst
	makepkg --printsrcinfo > .SRCINFO
	#makepkg -f --sign --nodeps PKGBUILD
	makepkg -f --nodeps PKGBUILD

remove-orphans:
	echo "printing the orphans"
	#pacman -Qtdq | pacman -Rns -
	pacman -Qtdq
