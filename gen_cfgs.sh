CMD="cd /mnt/output/"
# Java args
CMD="$CMD;java -cp /soot/soot-4.2.0-jar-with-dependencies.jar:/soot Runner"
# Soot args
CMD="$CMD -pp -cp /mnt/output/class -allow-phantom-refs -dump-cfg ALL"
CMD="$CMD -process-path /mnt/output/class"
docker-compose run --rm soot /bin/ash -c "$CMD"
