#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo '::fixing locales ... '

export LANGUAGE="en_US.UTF-8"
sleep 1
export LANG="en_US.UTF-8"
sleep 1
export LC_ALL="en_US.UTF-8"
sleep 1

echo '::almost there ... '
locale-gen en_US.UTF-8 && dpkg-reconfigure locales

locale

echo ':: done !'
echo 'peace, love and Linux !'
