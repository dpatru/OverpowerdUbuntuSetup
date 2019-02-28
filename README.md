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
    
5. Enable hdmi sound, see https://askubuntu.com/questions/1060061/nvidia-optimus-hdmi-no-sound
