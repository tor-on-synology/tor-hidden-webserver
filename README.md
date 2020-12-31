# tor-hidden-webserver
An all-in-one docker container to create a tor hidden webserver

![Docker Pulls](https://img.shields.io/docker/pulls/toronsynology/tor-hidden-webserver?style=for-the-badge) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/toronsynology/tor-hidden-webserver/latest?style=for-the-badge) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/toronsynology/tor-hidden-webserver?style=for-the-badge)

## What do this container ?

This container starts a webserver (lighttpd) and create the tor hidden service. Both processes are launched in the same container using supervisor. No need to expose a port on the docker container or to configure router. The webserver is configured to only serve static html pages for security reasons. 

It has been tested on Synology DSM 7 beta.

## Versions

- alpine:latest v.3.12
- tor v.0.4.4.6-r0 
- lighttpd v.1.4.55-r1
- supervisor v.4.2.0-r0

## First test

Connect to your server via ssh and get root privileges. (sudo -i on Synology)

Download image, create the container and launch it

```$ docker run --name tor-hidden-webserver --rm -d toronsynology/tor-hidden-webserver```
      
Get the container ID :

```$ docker ps -aqf "name=tor-hidden-webserver"```

```f882e62ca443```


Get the .onion address of the hidden webserver : remplace the container ID with yours

```$ docker exec -it f882e62ca443 more /var/lib/tor/hidden_service/hostname```

```vac6e33nq7x6lppj2ijcu25u3i2hobjuubb4w6zsivkx7tzhmofsa2qd.onion```

Open the Tor Brwoser and open the .onion address and you should see the test page "It really works !".



