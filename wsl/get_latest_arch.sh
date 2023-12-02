#!/bin/bash

wget https://asia.mirror.pkgbuild.com/iso/latest/archlinux-bootstrap-x86_64.tar.gz
tar -xzf archlinux-bootstrap-x86_64.tar.gz
pushd root.x86_64 || exit
tar -czvf ../archlinux.tar.gz .
popd || exit
exit 0
