# tor-hidden-webserver
An all-in-one docker container to create a tor hidden webserver

# DO NOT USE - WORK IN PROGRESS

![Docker Pulls](https://img.shields.io/docker/pulls/toronsynology/tor-hidden-webserver?style=for-the-badge) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/toronsynology/tor-hidden-webserver/latest?style=for-the-badge) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/toronsynology/tor-hidden-webserver?style=for-the-badge) ![Docker Stars](https://img.shields.io/docker/stars/toronsynology/tor-hidden-webserver?style=for-the-badge)

Ask questions using the issues page : https://github.com/tor-on-synology/tor-hidden-webserver/issues ...

# What does this container do ?

This container starts a webserver (lighttpd) and create the tor hidden service. Both processes are launched in the same container using supervisor. No need to expose a port on the docker container or to configure router. The webserver is configured to only serve static html pages for security reasons. 

It was tested on Synology DSM 7 beta.

# Versions

- alpine:latest v.3.12
- tor v.0.4.4.6-r0 
- lighttpd v.1.4.55-r1
- supervisor v.4.2.0-r0



# First test using command line

Connect to your server via ssh and get root privileges. (sudo -i on Synology)

Download image, create the container and launch it

```$ docker run --name tor-hidden-webserver -d toronsynology/tor-hidden-webserver```
      
Get the container ID :

```$ docker ps -aqf "name=tor-hidden-webserver"```

```f882e62ca443```


Get the .onion address of the hidden webserver : remplace the container ID with yours

```$ docker exec -it f882e62ca443 more /var/lib/tor/hidden_service/hostname```

```vac6e33nq7x6lppj2ijcu25u3i2hobjuubb4w6zsivkx7tzhmofsa2qd.onion```

Open the Tor Browser and open the .onion address and you should see the test page "It really works !".



# First test using Synology Docker interface

In the Synology NAS admin interface, launch Docker package.

In the registry tab, search for the image (search for "toronsynology") and double click to download.

When the download is finished, in the image tab, select the tor-client image and launch to create the container.

Launch the container without any configuration.

In the container panel, double click the container to open the container window and choose the terminal panel.

Click on "Create" to launch a command and launch the "/bin/sh" command in the window (write without " ")

On the "sh" black command area, enter the command ```more /var/lib/tor/hidden_service/hostname``` to read the .onion adress of your hidden webserver

Open the Tor Browser and open the .onion address and you should see the test page "It really works !".



# Serving your own website

```$ docker run --name tor-hidden-webserver -d -v <home-directory>:/var/www/:ro toronsynology/tor-hidden-webserver```

```$ docker run --name tor-hidden-webserver -d -v /volume1/docker/tor-hidden-webserver/www/:/var/www/:ro toronsynology/tor-hidden-webserver```

# Preserving your .onion address

writing in progress ...

# All-in-one command line

```$ docker run --name tor-hidden-webserver -d -v <home-directory>:/var/www/:ro -v <lib-directory>:/var/lib/ toronsynology/tor-hidden-webserver```

```$ docker run --name tor-hidden-webserver -d -v /volume1/docker/tor-hidden-webserver/www/:/var/www/:ro -v /volume1/docker/tor-hidden-webserver/lib:/var/lib/ toronsynology/tor-hidden-webserver```

# Security



