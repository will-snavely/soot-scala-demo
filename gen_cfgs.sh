CMD="cd /app/output"
# Java args
CMD="$CMD;java -cp /soot/soot-4.2.0-jar-with-dependencies.jar:/soot Runner"
# Soot args
CMD="$CMD -pp -cp /app/output/class -allow-phantom-refs -dump-cfg ALL"
CMD="$CMD -process-path /app/output/class"
CMD="$CMD;chown -R $(id -u):$(id -g) /app/output"
docker-compose run --rm soot /bin/ash -c "$CMD"
