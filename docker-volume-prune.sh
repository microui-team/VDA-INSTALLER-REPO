#!/bin/bash
docker compose -f vda-deploy.yml down
docker volume prune -a
