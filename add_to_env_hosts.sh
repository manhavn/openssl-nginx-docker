#!/bin/bash
echo 'cd '"$(dirname "$0")"
cd "$(dirname "$0")"

echo "echo '127.0.0.1   golang' | sudo tee -a /etc/hosts >/dev/null"
echo '127.0.0.1   golang' | sudo tee -a /etc/hosts >/dev/null

echo "echo '127.0.0.1   shop.sdk' | sudo tee -a /etc/hosts >/dev/null"
echo '127.0.0.1   shop.sdk' | sudo tee -a /etc/hosts >/dev/null

echo "echo '127.0.0.1   shop.db' | sudo tee -a /etc/hosts >/dev/null"
echo '127.0.0.1   shop.db' | sudo tee -a /etc/hosts >/dev/null
