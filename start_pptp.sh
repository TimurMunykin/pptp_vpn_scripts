#!/bin/bash

source .env

docker run -d --privileged \
  --name $CONTAINER_NAME \
  -e USERNAME=$USERNAME \
  -e PASSWORD=$PASSWORD \
  -p 1723:1723 \
  dperson/ppptpd

echo "PPTP VPN server started."
