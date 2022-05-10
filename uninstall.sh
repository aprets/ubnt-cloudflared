#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

# Stop cloudflared and remove files
sudo /etc/init.d/cloudflared stop
sudo /opt/cloudflared/cloudflared service uninstall
sudo rm -rf /etc/cloudflared /opt/cloudflared /config/scripts/post-config.d/cloudflared-setup.sh /var/log/cloudflared*