#!/bin/bash
cd "$(dirname "$0")"

# export PARENT_HOSTNAME=$(netsh interface ip show address "Wi-Fi" | grep 'IP Address' | sed -r 's/^.*IP Address:\W*//') # Windows (Wi-Fi)
# export PARENT_HOSTNAME=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}') # MacOS
export PARENT_HOSTNAME=$(hostname -I | cut -d ' ' -f 1) # Ubuntu
docker-compose -f openssl_nginx.yml up -d

# xdg-open https://shop.db && python3 -m http.server 3000
# Windows OS (Wi-Fi): https://shop.db:444
