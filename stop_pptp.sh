#!/bin/bash

source .env

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

echo "PPTP VPN server stopped."
