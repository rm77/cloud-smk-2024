apk update && apk add redis
echo "daemonize yes" | redis-server --port 7777 -
