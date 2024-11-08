# openssl-nginx-docker

Download file openssl_nginx_docker.tar.gz: https://1drv.ms/u/s!AmTBBadWxl4O0UHXCUcYpF1R3nZr?e=QT1z8d
( OR clone code: https://github.com/manhavn/openssl-nginx-docker.git )

### MacOS | Ubuntu | Windows

- Config (PARENT_HOSTNAME):
    + start.sh
    + stop.sh

```bash
 # Windows (Wi-Fi)
 export PARENT_HOSTNAME=$(netsh interface ip show address "Wi-Fi" | grep 'IP Address' | sed -r 's/^.*IP Address:\W*//')

 # MacOS
 export PARENT_HOSTNAME=$(echo $(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}') | awk '{print $1}')

 # Ubuntu
 export PARENT_HOSTNAME=$(hostname -I | cut -d ' ' -f 1)
```

### Run CMD

- Setup (terminal | bash):
    + sh setup.sh
    + chmod +x addToEtcHosts && ./addToEtcHosts
    + Open: https://shop.db

- Windows OS open in Git Bash ( Download & Install: https://git-scm.com/download/win )
    + sh setup.sh
    + Notepad (Run as administrator) edit file: C:\Windows\System32\Drivers\etc\hosts
    + Windows OS (Wi-Fi): https://shop.db:444

```bash
 cd ~/Downloads/
 tar zxf openssl_nginx_docker.tar.gz
 # or
 git clone https://github.com/manhavn/openssl-nginx-docker.git

 cd openssl-nginx-docker
 sh setup.sh

 sudo nano /etc/hosts
 #or
 chmod +x addToEtcHosts && ./addToEtcHosts

 # Ubuntu Install DOCKER
 sudo apt install docker-compose
 sudo groupadd docker
 sudo usermod -aG docker $USER
 sudo reboot
```

Add config (if not exists): /etc/hosts

```
127.0.0.1 golang
127.0.0.1 shop.sdk
127.0.0.1 shop.db
```

CTRL + S ( Save )
CTRL + X ( Exit )

```bash
 cd ~/Downloads/openssl-nginx-docker/
 sh start.sh
 xdg-open https://shop.db && python3 -m http.server 3000
 # Windows OS (Wi-Fi): https://shop.db:444

 # or
 sh ~/Downloads/openssl-nginx-docker/start.sh
 xdg-open https://shop.db && python3 -m http.server 3000
 # Windows OS (Wi-Fi): https://shop.db:444

 # or
 cd ~/Downloads/openssl-nginx-docker/
 # export PARENT_HOSTNAME=$(netsh interface ip show address "Wi-Fi" | grep 'IP Address' | sed -r 's/^.*IP Address:\W*//') # Windows (Wi-Fi)
 # export PARENT_HOSTNAME=$(echo $(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}') | awk '{print $1}') # MacOS
 export PARENT_HOSTNAME=$(hostname -I | cut -d ' ' -f 1) # Ubuntu
 docker-compose -f openssl_nginx.yml up -d && xdg-open https://shop.db && python3 -m http.server 3000
 # Windows OS (Wi-Fi): https://shop.db:444
```

Stop Service

```bash
 cd ~/Downloads/openssl-nginx-docker/
 sh stop.sh

 # or
 sh ~/Downloads/openssl-nginx-docker/stop.sh

 # or
 cd ~/Downloads/openssl-nginx-docker/
 # export PARENT_HOSTNAME=$(netsh interface ip show address "Wi-Fi" | grep 'IP Address' | sed -r 's/^.*IP Address:\W*//') # Windows (Wi-Fi)
 # export PARENT_HOSTNAME=$(echo $(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}') | awk '{print $1}') # MacOS
 export PARENT_HOSTNAME=$(hostname -I | cut -d ' ' -f 1) # Ubuntu
 docker-compose -f openssl_nginx.yml down
```
