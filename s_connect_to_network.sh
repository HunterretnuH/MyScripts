#!/bin/bash

sudo wpa_supplicant -B -c /etc/wpa_supplicant/$(ls /etc/wpa_supplicant/ | fzf) -i wlp1s0
sudo dhcpcd
