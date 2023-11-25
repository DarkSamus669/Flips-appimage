#!/bin/sh

DESTDIR="/usr/local"

case "$1" in

   "-p"|"--path")   DESTDIR="$2";;

esac

rm -f ${DESTDIR}/bin/flips
rm -f ${DESTDIR}/share/applications/com.github.Alcaro.Flips.desktop
rm -f ${DESTDIR}/share/icons/hicolor/scalable/apps/com.github.Alcaro.Flips.svg
rm -f ${DESTDIR}/share/icons/hicolor/symbolic/apps/com.github.Alcaro.Flips-symbolic.svg
rm -f ${DESTDIR}/share/metainfo/com.github.Alcaro.Flips.metainfo.xml