#!/bin/bash
docker compose -f docker-compose-superset.yaml up -d 
docker compose -f docker-amundsen-ssm.yml --env-file .env up -d
