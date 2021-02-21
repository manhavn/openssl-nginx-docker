# openssl-nginx-docker

Download file openssl_nginx_docker.tar.gz: https://1drv.ms/u/s!AmTBBadWxl4O0UHXCUcYpF1R3nZr?e=QT1z8d
( OR clone code: https://github.com/manhavn/openssl-nginx-docker.git )

Run CMD
```bash
 # Install DOCKER
 sudo apt install docker-compose

 cd ~/Downloads/
 tar zxf openssl_nginx_docker.tar.gz
 # or
 git clone https://github.com/manhavn/openssl-nginx-docker.git

 cd openssl-nginx-docker
 sh setup.sh

 sudo nano /etc/hosts #or run: sh add_to_env_hosts.sh
```

Add config to /etc/hosts

```
127.0.0.1   golang
127.0.0.1   shop.sdk
127.0.0.1   shop.db
```

CTRL + S ( Save )
CTRL + X ( Exit )

```bash
 sh ~/Downloads/openssl-nginx-docker/start.sh
 xdg-open https://shop.db && python3.8 -m http.server 3000

 # or
 cd ~/Downloads/openssl-nginx-docker/
 docker-compose -f openssl_nginx.yml up -d && xdg-open https://shop.db && python3.8 -m http.server 3000
```

Stop Service
```bash
 sh ~/Downloads/openssl-nginx-docker/stop.sh
```
