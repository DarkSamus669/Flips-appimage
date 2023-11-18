#!/bin/sh

# Get flips source

git clone https://github.com/Alcaro/Flips.git

# Build vba-m

cd Flips

./make.sh && make install DESTDIR=AppDir
