#!/usr/bin/env bash

echo "SSL certificates renewed"

/bin/cp -Lrf /etc/letsencrypt/live/DOMAIN.TLD/fullchain.pem /root/certs/fullchain.pem
/bin/cp -Lrf /etc/letsencrypt/live/DOMAIN.TLD/privkey.pem /root/certs/privkey.pem
docker compose -f /root/docker-compose.yml start

echo "SSL certificates copied"
echo "docker started"

# Place this file in /etc/letsencrypt/renewal-hooks/post/ and chmod to 0700
# It will copy the new certificates to /root/certs/  automatically after each renewal
# and restarts your docker containers
