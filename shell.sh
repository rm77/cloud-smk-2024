#!/bin/sh
namauser=${1:-"NO"}

if [ "$namauser"  = "NO" ]
then
	echo "gunakan namauser yang telah diberikan"
	echo "hanya huruf dan angka, tidak boleh spasi"
	exit 1
fi

docker run -it \
	--rm --name tool \
	-v $(pwd)/conf/config:/tmp/config \
	-v $(pwd)/conf/credentials:/tmp/credentials \
	-v $(pwd)/data:/data \
	-v $(pwd)/script:/script \
	-e NAMAUSER="$namauser" \
	-e AWS_CONFIG_FILE=/tmp/config \
	-e AWS_SHARED_CREDENTIALS_FILE=/tmp/credentials \
	royyana/awstool:2.00-slim /bin/sh
