#!/bin/bash

WSL_IP=$(hostname -I | awk '{print $1}')
echo "EXTERNAL_KAFKA_IP=$WSL_IP" > .env

echo "[✓] IP WSL: $WSL_IP"
echo "[✓] Ghi vào .env"
echo "[✓] Khởi động Docker Compose..."

docker compose up -d

echo "[✓] Spring Boot bên Windows dùng IP: $WSL_IP"

