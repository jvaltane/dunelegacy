#!/bin/bash

autoreconf --install

make clean distclean
./configure --host=ppc-morphos --prefix= --with-sdl-prefix=/gg/usr/local --disable-sdltest
make all
ppc-morphos-strip src/dunelegacy

rm -rf morphos-release
mkdir -p morphos-release
cp src/dunelegacy morphos-release/
cp dunelegacy.png morphos-release/dunelegacy.info
cp morphos/readme-mos morphos-release/
cp README morphos-release/
cp COPYING morphos-release/
cp -r data morphos-release/
