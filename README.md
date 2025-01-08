# openssl-nginx-docker

## CLONE CODE
```shell
git clone https://github.com/manhavn/openssl-nginx-docker.git openssl-nginx-docker
```

- MACOS

```shell
sudo nano /private/etc/hosts

127.0.0.1 test.com
```

- UBUNTU

```shell
sudo nano /etc/hosts

127.0.0.1 test.com
```

- WINDOW: "Editor APP" > NotePad (Run Administrator): C:\Windows\System32\drivers\etc\hosts

```shell
127.0.0.1 test.com
```

## CREATE OPENSSL MKCERT
```shell
cd .../openssl-nginx-docker/nginx/mkcert
sudo chmod +x mkcert-*

# MACOS
sudo ./mkcert-v1.4.4-darwin-amd64 -install
sudo ./mkcert-v1.4.4-darwin-arm64 -install

sudo ./mkcert-v1.4.4-darwin-amd64 test.com
sudo ./mkcert-v1.4.4-darwin-arm64 test.com

sudo chown $USER test.com.pem
sudo chown $USER test.com-key.pem

# LINUX
sudo ./mkcert-v1.4.4-linux-amd64 -install
sudo ./mkcert-v1.4.4-linux-arm -install
sudo ./mkcert-v1.4.4-linux-arm64 -install

sudo ./mkcert-v1.4.4-linux-amd64 test.com
sudo ./mkcert-v1.4.4-linux-arm test.com
sudo ./mkcert-v1.4.4-linux-arm64 test.com

sudo chown $USER test.com.pem
sudo chown $USER test.com-key.pem

# WINDOW
.\mkcert-v1.4.4-windows-amd64.exe -install
.\mkcert-v1.4.4-windows-arm64.exe -install

.\mkcert-v1.4.4-windows-amd64.exe test.com
.\mkcert-v1.4.4-windows-arm64.exe test.com
```

## RUN NGINX OPENSSL

```shell
cd .../openssl-nginx-docker

# MACOS
export PARENT_HOSTNAME=$(echo $(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}') | awk '{print $1}')
docker-compose -f openssl_nginx.yml up -d

# WINDOW
export PARENT_HOSTNAME=$(netsh interface ip show address "Wi-Fi" | grep 'IP Address' | sed -r 's/^.*IP Address:\W*//')
docker-compose -f openssl_nginx.yml up -d

# UBUNTU
export PARENT_HOSTNAME=$(hostname -I | cut -d ' ' -f 1)
docker-compose -f openssl_nginx.yml up -d
```

- open browser: https://test.com
```shell
open https://test.com
```
