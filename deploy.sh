
#!/bin/bash
set -e

docker compose run --rm build
docker compose up -d --no-deps --force-recreate zensical

echo "Zensical bol uspesne aktualizovany."
