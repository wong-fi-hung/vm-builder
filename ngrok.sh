#!/bin/bash

sudo apt install snap snapd
sudo systemctl enable snapd
sudo systemctl start snapd
sudo snap install ngrok
ngrok authtoken 2auVUTjAMbRRhrjClzSKjlyXFhi_y2m3iBFKtfh8si75gbuE
nohup ngrok tcp 2222 >/dev/null &
curl http://localhost:4040/api/tunnels
