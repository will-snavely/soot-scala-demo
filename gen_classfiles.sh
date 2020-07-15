mkdir -p output/class
CMD="cd /src"
CMD="$CMD;/scala-2.13.1/bin/scalac SimpleFolds.scala"
CMD="$CMD;mkdir -p /mnt/output/class/"
CMD="$CMD;cp *.class /mnt/output/class"
docker-compose run --rm scala /bin/ash -c "$CMD"
