# ubnt-cloudflared
Install Cloudflare Tunnel on USG

## Hardware
### Tested
* UniFi Security Gateway 3P

### Should work on (but not tested)
* All EdgeRouter models
* All UniFi Security Gateway models

## Guide
### Installing
In a ssh session run the following command :
```sh
bash <(curl -s https://raw.githubusercontent.com/gentleseal/ubnt-cloudflared/master/install.sh) REMOTE_CONFIG_TOKEN
```

### Updating
Just run the install script again ;)

### Uninstall
In a ssh session run the following command :
```sh
bash <(curl -s https://raw.githubusercontent.com/gentleseal/ubnt-cloudflared/master/uninstall.sh)
```

## Contributing
* Please fork and submit PR's if you have any improvements.
* Feel free to submit issues !
* Testing this on hardware I did not test yet would be wonderful !

## Credits
* https://github.com/Twanislas/ubnt-cloudflared
* https://bendews.com/posts/implement-dns-over-https/
* https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/
* https://github.com/yon2004/ubnt_cloudflared
* https://community.ubnt.com/t5/UniFi-Routing-Switching/Scripts-on-USG/td-p/1402210
* https://community.ubnt.com/t5/UniFi-Routing-Switching/Deploying-USG-scripts-through-controller/td-p/2140097
