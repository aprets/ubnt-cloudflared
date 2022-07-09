#!/bin/vbash
set -e

if [ -z "$1" ]; then
	echo "No token argument supplied"
	echo "Please enter the cloudflare tunnel token bellow:"
	read TOKEN
else
	TOKEN=$1
fi

echo "Installing cloudflared"
sudo /usr/bin/curl -sf https://raw.githubusercontent.com/gentleseal/ubnt-cloudflared/master/cloudflared-setup.sh --output /config/scripts/post-config.d/cloudflared-setup.sh
sudo /bin/chmod +x /config/scripts/post-config.d/cloudflared-setup.sh
sudo sed -i "s/TOKEN/$1/g" /config/scripts/post-config.d/cloudflared-setup.sh
sudo /config/scripts/post-config.d/cloudflared-setup.sh pull
