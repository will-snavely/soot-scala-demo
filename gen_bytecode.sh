mkdir -p output/bytecode
CMD="cd /app/output/class"
CMD="$CMD;ls | while read x; do javap -v \$x > /app/output/bytecode/\$x.il; done"
CMD="$CMD;chown -R $(id -u):$(id -g) /app/output"
docker-compose run --rm soot /bin/ash -c "$CMD"
