#!/bin/vbash
set -e

echo "Installing cloudflared"
sudo /usr/bin/curl -sf https://raw.githubusercontent.com/gentleseal/ubnt-cloudflared/master/cloudflared-setup.sh --output /config/scripts/post-config.d/cloudflared-setup.sh
sudo /bin/chmod +x /config/scripts/post-config.d/cloudflared-setup.sh
sudo sed -i "s/TOKEN/$1/g" /config/scripts/post-config.d/cloudflared-setup.sh
sudo /config/scripts/post-config.d/cloudflared-setup.sh pull
