#!/bin/sh

# Get flips source

git clone https://github.com/Alcaro/Flips.git

# Build vba-m

cd Flips

./make.sh && make install DESTDIR=AppDir

# Pack appdir as gzip

tar -cf Flips-x86_64.tar AppDir

gzip -9 Flips-x86_64.tar
