#!/bin/sh

cd visualboyadvance-m-2.1.7

# Download linuxdeploy

wget -q "https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage"
wget -q "https://raw.githubusercontent.com/linuxdeploy/linuxdeploy-plugin-gtk/master/linuxdeploy-plugin-gtk.sh"

chmod +x linuxdeploy-x86_64.AppImage linuxdeploy-plugin-gtk.sh

# Building appimage

export ARCH=x86_64
export OUTPUT="Flips-x86_64.AppImage"

./linuxdeploy-x86_64.AppImage -i AppDir/usr/icons/hicolor/scalable/apps/com.github.Alcaro.Flips.svg \
                              -d AppDir/usr/share/applications/com.github.Alcaro.Flips.desktop \
                              --executable AppDir/usr/bin/flips \
                              --plugin gtk \
                              --appdir AppDir
