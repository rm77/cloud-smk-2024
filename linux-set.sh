#!/bin/sh


NAMAUSER="namauser"
AWS_CONFIG_FILE=$(pwd)/conf/config
AWS_SHARED_CREDENTIALS_FILE=$(pwd)/conf/credentials
export NAMAUSER AWS_CONFIG_FILE AWS_SHARED_CREDENTIALS_FILE

ln -s $(pwd)/script /script 2> /dev/null

echo "OK"
echo Nama user = $NAMAUSER
echo Lokasi config = $AWS_CONFIG_FILE
echo Lokasi credentials = $AWS_SHARED_CREDENTIALS_FILE


