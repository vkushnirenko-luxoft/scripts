#!/bin/bash
#Script changes docker environment to be able work with docker registry

sudo echo '172.30.23.4 sdl.docker' | sudo tee -a /etc/hosts
sudo echo 'DOCKER_OPTS="--insecure-registry sdl.docker:5000"' | sudo tee -a /etc/default/docker
sudo service docker restart
