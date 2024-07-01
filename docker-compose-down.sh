#!/bin/bash
docker compose -f vda-deploy.yml --env-file .env down
docker compose -f superset-deploy.yml 
