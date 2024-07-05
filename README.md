# VDA-INSTALLER-REPO

## Prerequisites

1. [Docker](https://www.docker.com/get-started)
2. [Docker Compose](https://docs.docker.com/compose/install/)

# minimum requiremnet of resources for setup
RAM	12 GB \
Hard disk	5 GB \
CPUs	4 
## Deployment steps for VDA application
vda-deploy.yaml uses the environment variable which are present in [`./vda/.env-vda`]

## For deploying the application 
sh docker-compose-up.sh

or

docker compose -f vda-deploy.yaml  --env-file vda/.env-vda up -d    

## Stoping the services
sh docker-compose-down.sh

or

docker compose -f vda-deploy.yaml --env-file vda/.env-vda down

## For persistent volume cleaning
sh docker-volume-prune.sh

or

docker compose -f vda-deploy.yml --env-file vda/.env-vda down
docker volume prune -a




## Some configuration details related to superset app  
## Configuration

The `/app/pythonpath` folder is mounted from [`./vda/pythonpath_dev`](./pythonpath_dev)
which contains a base configuration [`./vda/pythonpath_dev/superset_config.py`](./pythonpath_dev/superset_config.py)
intended for use with local development.

The `/app/pythonpath` folder is mounted from [`./vda/pythonpath_dev`](./pythonpath_dev)
which contains a base configuration [`./vda/pythonpath_dev/superset_config.py`](./pythonpath_dev/superset_config.py)
intended for use with local development.

### Local overrides

In order to override configuration settings locally, simply make a copy of [`./vda/pythonpath_dev/superset_config_local.example`](./pythonpath_dev/superset_config_local.example)
into `./vda/pythonpath_dev/superset_config_docker.py` (git ignored) and fill in your overrides.

## Initializing Database

The database will initialize itself upon startup via the init container ([`superset-init`](./docker-init.sh)). This may take a minute.

