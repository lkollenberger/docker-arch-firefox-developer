#!/bin/bash
echo "[heftig]" >> /etc/pacman.conf
echo "SigLevel = Never" >> /etc/pacman.conf
echo "Server = https://pkgbuild.com/~heftig/repo/\$arch" >> /etc/pacman.conf
pacman -Sy --noconfirm firefox-developer-edition
pacman -Scc --noconfirm
useradd -m -s /bin/bash firefox
