#!/bin/bash

# Имя контейнера
CONTAINER_NAME="pptp-vpn"

# Остановка, удаление и запуск контейнера заново
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

# Переменные для настройки PPTP сервера
USERNAME="your_username"
PASSWORD="your_password"

docker run -d --privileged \
  --name $CONTAINER_NAME \
  -e USERNAME=$USERNAME \
  -e PASSWORD=$PASSWORD \
  -p 1723:1723 \
  dperson/ppptpd

echo "PPTP VPN server restarted."
