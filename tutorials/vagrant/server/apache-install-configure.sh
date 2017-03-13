#!/usr/bin/env bash

apt-get install --assume-yes apache2

mkdir -p /var/www/deb/amd64
ln -sf /var/www/deb /var/www/html/deb