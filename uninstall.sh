#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

# Stop cloudflared and remove files
sudo pkill -f "/opt/cloudflared/cloudflared"
sudo rm -rf /etc/cloudflared /opt/cloudflared /config/scripts/post-config.d/cloudflared-setup.sh /var/log/cloudflared*
