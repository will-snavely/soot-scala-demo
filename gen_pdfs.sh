mkdir -p output/cfg
CMD="cd /mnt/output/"
CMD="$CMD;find ./sootOutput -name \"*.dot\" | xargs -I{} dot -Tpdf -o {}.pdf {}"
docker-compose run --rm graphviz /bin/ash -c "$CMD"
