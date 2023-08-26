#!/bin/bash

# Get all variables for seamless setup
read -p "Enter your time zone: " TIME_ZONE
read -p "Enter hostname: " HOSTNAME

# Set the time zone
echo "Setting time zone to ${TIME_ZONE}..."
ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
hwclock --systohc

# Set localization
sed -i 's/^#\s*\(en_US.UTF-8\s\+UTF-8\)/\1/' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

# Set hostname
echo "Setting hostname to ${HOSTNAME}..."
echo "${HOSTNAME}" > /etc/hostname

# Generate initramfs
mkinitcpio -P

# Enter root password
passwd

# Enable networking and install microcode
sudo pacman -S intel-ucode && sudo systemctl enable NetworkManager.service

# Install systemd-boot
bootctl install

# Edit loader configuration
cat <<EOF >>/boot/loader/loader.conf
default		arch.conf
timeout		3
console-mode	keep
EOF

# Generate arch.conf
touch /boot/loader/entries/arch.conf
cat <<EOF >>/boot/loader/entries/arch.conf
title    Arch Linux
linux    /vmlinuz-linux-zen
initrd   /intel-ucode.img
initrd   /initramfs-linux-zen.img
options  root=/dev/nvme0n1p2 rw pci=noaer
EOF

# Reboot
echo "Exit the chroot, unmount /mnt, and reboot"
