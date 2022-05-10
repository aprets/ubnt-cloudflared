#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

# Pull files
mkdir -p /opt/cloudflared

if [ ! -f /opt/cloudflared/cloudflared ] || [ "$1" = "pull" ]; then
	sudo /usr/bin/curl -sf https://raw.githubusercontent.com/gentleseal/ubnt-cloudflared/master/cloudflared --output /opt/cloudflared/cloudflared

	/bin/chmod +x /opt/cloudflared/cloudflared
	/opt/cloudflared/cloudflared service install TOKEN
	/etc/init.d/cloudflared restart
fi