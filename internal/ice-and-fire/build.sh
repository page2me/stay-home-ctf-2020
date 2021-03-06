#!/bin/bash

set -e
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

echo "[*] Building the image"
docker build -t pomomondreganto/ice-and-fire:latest "${DIR}"

echo "[!] Do something with /proc!"

echo "[*] Pushing the image"
docker push pomomondreganto/ice-and-fire:latest

echo "[+] Done!"
