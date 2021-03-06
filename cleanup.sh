#! /usr/bin/env sh

. /build/config.sh

apt-get remove --purge -y ${BUILD_PKGS} $(apt-mark showauto)

apt-get install -y ${RUNTIME_PKGS}

rm -rf /var/lib/apt/lists/*

echo 'extension=phalcon.so' >/etc/php/7.0/fpm/conf.d/30-phalcon.ini
sed -i 's/^listen = .*$/listen = 7777/' /etc/php/7.0/fpm/pool.d/www.conf
mkdir /run/php
