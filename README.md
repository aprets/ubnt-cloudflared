# ubnt-cloudflared
Run Cloudflare Tunnel on USG hardware.

## Why?

### Cloudflare Tunnel
Cloudflare Tunnel allows secure remote access to the network with no extra configuration and simple remote management from [Cloudflare Zero Trust Dashboard](https://dash.teams.cloudflare.com/).

### ubnt-cloudflared
This repo contains the scripts to install cloudflared (which can create a tunnel to the network) on a USG. This allows you to create a tunnel to the network without any additional hardware. The scripts are meant for low-bandwidth tunnels to small networks allowing you to reuse existing gateway hardware like USG-3P.

## Hardware
### Tested
* UniFi Security Gateway 3P

### Should work on (but not tested)
* All EdgeRouter models
* All UniFi Security Gateway models

## Guide
### Installing
In a ssh session run one of the following commands :

```sh
bash <(curl -s https://raw.githubusercontent.com/aprets/ubnt-cloudflared/master/install.sh)
```

You will then be prompted for a remote configuration token. You can get that from [Cloudflare Zero Trust Dashboard](https://dash.teams.cloudflare.com/) either during tunnel creation or configuration, it will usually be at the end of the example commands. It should look something like this:

`eyJ***********************************************************************************************************************************************************************************J9`

#### **OR**

If you want to specify the token straight away, you can also use :

```sh
bash <(curl -s https://raw.githubusercontent.com/aprets/ubnt-cloudflared/master/install.sh) REMOTE_CONFIG_TOKEN
```


### Updating
Just run the install script again ;)

### Uninstall
In a ssh session run the following command :
```sh
bash <(curl -s https://raw.githubusercontent.com/aprets/ubnt-cloudflared/master/uninstall.sh)
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
