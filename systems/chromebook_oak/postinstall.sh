#!/bin/bash

cp -v etc/X11/xorg.conf.d.samples/11-modesetting.conf etc/X11/xorg.conf.d
cp -v etc/X11/xorg.conf.d.samples/51-touchpad.conf etc/X11/xorg.conf.d

# bullseye
if [ -f etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled ]; then
  cp -v etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
# focal and jammy
elif [ -f etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled ]; then
  cp -v etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml-enabled etc/xdg/xdg-xubuntu/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
fi
