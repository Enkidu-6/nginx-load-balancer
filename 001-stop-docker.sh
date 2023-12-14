#!/usr/bin/env bash
docker compose -f /root/docker-compose.yml stop
echo "stopped docker"

# Place this file in /etc/letsencrypt/renewal-hooks/pre and chmod to 0700
# It will stop your docker containers to free up your port 80 for the renewal attempt by letsencrypt.
