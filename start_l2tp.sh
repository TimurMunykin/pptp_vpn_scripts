#!/bin/bash

docker run -d --privileged -p 1701:1701/udp -p 500:500/udp -p 4500:4500/udp --name vpnmac --restart=always --env-file /root/repo/pptp_vpn_scripts/.env -v /lib/modules:/lib/modules:ro sysadmln/l2tp_without_ipsec:latest
