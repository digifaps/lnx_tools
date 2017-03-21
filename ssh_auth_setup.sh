#!/bin/bash
mkdir .ssh
chmod 700 .ssh
cd .ssh
touch authorized_keys2 &&
chmod 600 authorized_keys2 
cat ../id_rsa.pub >> authorized_keys2 &&
rm ../id_rsa.pub
