# tor-hidden-webserver
An all-in-one docker container to create a tor hidden webserver

![Docker Build Status](https://img.shields.io/docker/build/toronsynology/tor-hidden-webserver)

## First test

1. Install
2. "docker ps" and get the container ID
3. Run "docker exec -it ID more /var/lib/tor/hidden_service/hostname" to get the onion adress of the hidden webserver like :
vac6e33nq7x6lppj2ijcu25u3i2hobjuubb4w6zsivkx7tzhmofsa2qd.onion

