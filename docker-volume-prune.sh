#!/bin/bash
docker compose -f vda-deploy.yml --env-file vda/.env-vda down
docker volume prune -a
