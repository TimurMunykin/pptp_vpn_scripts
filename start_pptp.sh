#!/bin/bash

# Переменные для настройки PPTP сервера
USERNAME="your_username"
PASSWORD="your_password"
CONTAINER_NAME="pptp-vpn"

# Запуск PPTP VPN сервера в контейнере Docker
docker run -d --privileged \
  --name $CONTAINER_NAME \
  -e USERNAME=$USERNAME \
  -e PASSWORD=$PASSWORD \
  -p 1723:1723 \
  dperson/ppptpd

echo "PPTP VPN server started."
