FROM archlinux:base-devel

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
	&& locale-gen

RUN pacman-key --init \
	&& pacman-key --populate
RUN echo "Server = https://mirror.xtom.com.hk/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist
RUN pacman -Sy --noconfirm archlinux-keyring \
	&& pacman -Su --noconfirm \
	&& pacman -S --needed --noconfirm clang cmake ninja mold lldb \
	&& pacman -Scc --noconfirm

RUN ln -sf /usr/bin/ld.mold /usr/bin/ld
