#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/dreamxtream/main/installer.sh -O - | /bin/sh
##
###########################################
###########################################
#!/bin/sh
#
wget -O /tmp/dreamxtream_0.3-r2.0_armhf "https://github.com/tarekzoka/68/blob/main/dreamxtream_0.3-r2.0_armhf?raw=true"
wait
apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install
wait
dpkg -i --force-overwrite /tmp/*.deb
wait
sleep 2;
######################################################################################
##
echo ""
# Download and install plugin
cd /tmp
set -e
     wget "$MY_URL/$MY_IPK"
  wait
     wget "$MY_URL/$MY_DEB"

 if which dpkg > /dev/null 2>&1; then
		dpkg -i --force-overwrite $MY_DEB; apt-get install -f -y
	else
		$OPKGINSTALL $MY_IPK
	fi
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK
rm -f /tmp/$MY_DEB
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
