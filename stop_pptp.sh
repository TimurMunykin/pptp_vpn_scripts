#!/bin/bash

# Имя контейнера
CONTAINER_NAME="pptp-vpn"

# Остановка и удаление контейнера
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

echo "PPTP VPN server stopped."
