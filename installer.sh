#!/bin/sh
#
wget -O /tmp/dreamxtream_0.3-r2.0_armhf.deb "https://raw.githubusercontent.com/tarekzoka/dreamxtream/main/dreamxtream_0.3-r2.0_armhf.deb"

wait

apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install

wait

dpkg -i --force-overwrite /tmp/*.deb

wait

rm -r /tmp/dreamxtream_0.3-r2.0_armhf.deb

wait

sleep 2;

exit 0


