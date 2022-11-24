#!/bin/sh

sudo cryptsetup open /dev/sda2 cboot
sudo mount /dev/mapper/cboot /boot
sudo mount /dev/sda1 /boot/efi
sudo pacman -Syu
sudo umount /boot/efi
sudo umount /boot
sudo cryptsetup close cboot
