#!/bin/bash

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen

pacman-key --init
pacman-key --populate
echo "Server = https://geo.mirror.pkgbuild.com/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist
pacman -Sy --noconfirm archlinux-keyring
pacman -Su --noconfirm
pacman -S --needed --noconfirm base-devel
pacman -S --needed --noconfirm clang libc++ cmake fmt ninja mold gdb lldb python python-pipenv
pacman -S --needed --noconfirm git git-lfs git-delta pre-commit
# pacman -S --needed --noconfirm docker
pacman -S --needed --noconfirm openssh openssl
pacman -S --needed --noconfirm bash-completion less stow vim wget unzip zip zoxide zsh
pacman -Scc --noconfirm

ln -sf /usr/bin/ld.mold /usr/bin/ld

groupadd sudo
useradd -m -g sudo evan
