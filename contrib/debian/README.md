
Debian
====================
This directory contains files used to package kawrisd/kawris-qt
for Debian-based Linux systems. If you compile kawrisd/kawris-qt yourself, there are some useful files here.

## kawris: URI support ##


kawris-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install kawris-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your kawris-qt binary to `/usr/bin`
and the `../../share/pixmaps/kawris128.png` to `/usr/share/pixmaps`

kawris-qt.protocol (KDE)

