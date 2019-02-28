# Setup Ubuntu on Overpowered Laptop

0. Unplug external monitors until after you've installed the nvidia driver.

1. If touchpad is not working, install the updated kernel. 
```bash
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade
```

2. Install emacs, gnome-tweak-tool
```bash
sudo apt install emacs gnome-tweaks
```

3. Map CapsLook to Ctrl

  * super, then tweaks to start gnome tweak tool. 
    
  * Keyboard & Mouse -> Additional Layout Options -> Caps Lock behavior -> Caps Lock is also a Ctrl
    
4. Enable Firewall
```bash
sudo ufw enable
```    

5. Set firefox Preferences to Restore previous session.

6. Install proprietary nvidia drivers. See https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-18-04-bionic-beaver-linux
```bash
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
reboot
```

7. Enable hdmi sound, see https://askubuntu.com/questions/1060061/nvidia-optimus-hdmi-no-sound
```bash
sudo cp fix-hdmi-audio.service
chmod +x fix-hdmi-audio.sh
sudo cp fix-hdmi-audio.sh /usr/local/bin/
systemctl enable fix-hdmi-audio.service
reboot
```

8. Add video format support. https://askubuntu.com/questions/475351/firefox-html5-video-support
```bash
sudo apt-get install ubuntu-restricted-extras
```

9. Enable dark theme. https://help.gulshankumar.net/t/how-to-enable-dark-theme-in-ubuntu-18-04/3411.

  * Make sure that gnome-tweaks in installed. 
```bash
sudo apt install -y gnome-tweaks
```

  * Set dark theme: Tweaks -> Appearance -> Applications -> Adwaita-dark
  
  * Change background: Setting -> Background -> Black color
  
  * Install a dark theme in emacs. https://stackoverflow.com/a/24836870 https://draculatheme.com/emacs/

10. Install pass. https://medium.com/@chasinglogic/the-definitive-guide-to-password-store-c337a8f023a1
