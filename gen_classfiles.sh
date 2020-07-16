mkdir -p output/class
CMD="cd /app/scala/src"
CMD="$CMD;/scala-2.13.1/bin/scalac SimpleFolds.scala"
CMD="$CMD;mkdir -p /app/output/class"
CMD="$CMD;cp *.class /app/output/class"
CMD="$CMD;chown -R $(id -u):$(id -g) /app/output"
docker-compose run \
	--rm \
	scala /bin/ash -c "$CMD"
