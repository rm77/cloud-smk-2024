docker run -it \
	--rm --name tool \
	-v $(pwd)/conf/config:/tmp/config \
	-v $(pwd)/conf/credentials:/tmp/credentials \
	-v $(pwd)/data:/data \
	-v $(pwd)/script:/script \
	-e AWS_CONFIG_FILE=/tmp/config \
	-e AWS_SHARED_CREDENTIALS_FILE=/tmp/credentials \
	royyana/awstool:2.00-slim /bin/sh
