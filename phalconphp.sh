#! /usr/bin/env sh

git clone --depth=1 git://github.com/phalcon/cphalcon.git /build/cphalcon
cd /build/cphalcon/build/64bits
phpize
export CFLAGS="-O2 -g"
./configure
make
make install
