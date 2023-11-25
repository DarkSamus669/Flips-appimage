#!/bin/sh

# Get flips source

git clone https://github.com/Alcaro/Flips.git

# Build vba-m

cd Flips

./make.sh && make install DESTDIR=AppDir

# Pack appdir as gzip

cp -r AppDir flips

cp scripts/install.sh flips

cp scripts/uninstall.sh flips

tar -cf Flips-x86_64.tar flips

gzip -9 Flips-x86_64.tar
