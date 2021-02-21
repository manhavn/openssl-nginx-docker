#!/bin/bash
cd "$(dirname "$0")"
docker-compose -f openssl_nginx.yml down
# xdg-open https://shop.db && python3.8 -m http.server 3000
