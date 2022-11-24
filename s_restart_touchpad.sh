#!/bin/sh

sudo modprobe -r i2c_hid_acpi i2c_hid
sudo modprobe i2c_hid_acpi i2c_hid
swaymsg reload
