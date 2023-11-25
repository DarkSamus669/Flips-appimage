#!/bin/sh

DESTDIR="/usr/local"

case "$1" in

   "-p"|"--path")   DESTDIR="$2";;

esac

mkdir -p ${DESTDIR}/bin
mkdir -p ${DESTDIR}/share/applications
mkdir -p ${DESTDIR}/share/icons/hicolor/scalable/apps
mkdir -p ${DESTDIR}/share/icons/hicolor/symbolic/apps
mkdir -p ${DESTDIR}/share/metainfo

install -p -m755 usr/bin/flips ${DESTDIR}/bin
install -p -m755 usr/share/applications/com.github.Alcaro.Flips.desktop ${DESTDIR}/share/applications
install -p -m644 usr/share/icons/hicolor/scalable/apps/com.github.Alcaro.Flips.svg ${DESTDIR}/share/icons/hicolor/scalable/apps
install -p -m644 usr/share/icons/hicolor/symbolic/apps/com.github.Alcaro.Flips-symbolic.svg ${DESTDIR}/share/icons/hicolor/symbolic/apps
install -p -m644 usr/share/metainfo/com.github.Alcaro.Flips.metainfo.xml ${DESTDIR}/share/metainfo
