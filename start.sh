cd "$(dirname "$0")"
docker-compose -f openssl_nginx.yml up -d
# xdg-open https://shop.db && python3.8 -m http.server 3000