# tor-hidden-webserver
An all-in-one docker container to create a tor hidden webserver

![Docker Pulls](https://img.shields.io/docker/pulls/toronsynology/tor-hidden-webserver?style=for-the-badge) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/toronsynology/tor-hidden-webserver/latest?style=for-the-badge) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/toronsynology/tor-hidden-webserver?style=for-the-badge)

## First test

1. 
      docker run --name tor-hidden-webserver --rm -d toronsynology/tor-hidden-webserver
2. "docker ps" and get the container ID
3. Run "docker exec -it ID more /var/lib/tor/hidden_service/hostname" to get the onion adress of the hidden webserver like :
vac6e33nq7x6lppj2ijcu25u3i2hobjuubb4w6zsivkx7tzhmofsa2qd.onion

