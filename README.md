# Setup Ubuntu on Overpowered Laptop

1. If touchpad is not working, install the updated kernel. 
```bash
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade
```

2. Install emacs, gnome-tweak-tool
```bash
sudo apt install emacs gnome-tweak-tool
```

3. Map CapsLook to Ctr

    a. super, then tweaks to start gnome tweak tool. 
    
    b. Keyboard & Mouse -> Additional Layout Options -> Caps Lock behavior -> Caps Lock is also a Ctrl
    
4. Enable Firewall
```bash
sudo ufw enable
```    
    
5. Install proprietary nvidia drivers. See https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-18-04-bionic-beaver-linux
```bash
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
reboot
```

6. Enable hdmi sound, see https://askubuntu.com/questions/1060061/nvidia-optimus-hdmi-no-sound

7. Add video support. https://askubuntu.com/questions/475351/firefox-html5-video-support
```bash
sudo apt-get install ubuntu-restricted-extras
```
