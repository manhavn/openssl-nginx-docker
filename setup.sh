cd "$(dirname "$0")"
mkdir -p ssl/certs
mkdir -p ssl/private
mkdir -p nginx/parameters
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ssl/private/nginx-selfsigned.key -out ssl/certs/nginx-selfsigned.crt
openssl dhparam -out nginx/parameters/dhparam.pem 4096
# docker-compose -f openssl_nginx.yml up -d
# xdg-open https://shop.db && python3.8 -m http.server 3000