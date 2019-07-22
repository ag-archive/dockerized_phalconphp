#! /usr/bin/env sh

git clone --depth=1 -b v3.4.2 https://github.com/phalcon/cphalcon.git /build/cphalcon
cd /build/cphalcon/build/php7/64bits
phpize
./configure CFLAGS='-O2 -g'
make
make install
