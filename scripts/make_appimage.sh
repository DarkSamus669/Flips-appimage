#!/bin/sh

cd Flips

# Download linuxdeploy and appimagetool

wget -q "https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage"
wget -q "https://raw.githubusercontent.com/linuxdeploy/linuxdeploy-plugin-gtk/master/linuxdeploy-plugin-gtk.sh"
wget -q "https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage"

chmod +x linuxdeploy-x86_64.AppImage linuxdeploy-plugin-gtk.sh appimagetool-x86_64.AppImage

# Building appimage

export ARCH=x86_64
export OUTPUT="Flips-x86_64.AppImage"

export UPDATE_INFORMATION="gh-releases-zsync|DarkSamus669|Flips-appimage|Flips-x86_64.AppImage"

./linuxdeploy-x86_64.AppImage -i AppDir/usr/share/icons/hicolor/scalable/apps/com.github.Alcaro.Flips.svg \
                              -d AppDir/usr/share/applications/com.github.Alcaro.Flips.desktop \
                              --executable AppDir/usr/bin/flips \
                              --plugin gtk \
                              --appdir AppDir

sed -i "s/export GTK_THEME/#export GTK_THEME/" Flips/apprun-hooks/linuxdeploy-plugin-gtk.sh

./appimagetool-x86_64.AppImage AppDir
