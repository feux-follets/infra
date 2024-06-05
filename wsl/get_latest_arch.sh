#!/bin/bash

wget https://mirror.xtom.com.hk/archlinux/iso/latest/archlinux-bootstrap-x86_64.tar.zst
tar -xf archlinux-bootstrap-x86_64.tar.zst
pushd root.x86_64 || exit
tar -caf ../archlinux.tar.zst .
popd || exit
rm archlinux-bootstrap-x86_64.tar.zst
sudo rm -rf root.x86_64
if [ -f pkglist.x86_64.txt ]; then
	rm pkglist.x86_64.txt
fi
exit 0
