#!/bin/sh
# Make this file executable (chmod +x fix-hdmi-audio.sh) 
# and put this file in /usr/local/bin/
# See https://askubuntu.com/a/1061125
setpci -s 01:00.0 0x488.l=0x2000000:0x2000000
rmmod nvidia-uvm nvidia-drm nvidia-modeset nvidia
sh -c 'echo 1 > /sys/bus/pci/devices/0000:01:00.0/remove'
sh -c 'echo 1 > /sys/bus/pci/devices/0000:00:01.0/rescan'
modprobe nvidia nvidia-modeset nvidia-drm nvidia-uvm
