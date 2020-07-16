mkdir -p output/cfg
CMD="find /app/output/sootOutput -name \"*.dot\" | xargs -I{} dot -Tpdf -o {}.pdf {}"
CMD="$CMD;chown -R $(id -u):$(id -g) /app/output"
docker-compose run --rm graphviz /bin/ash -c "$CMD"
