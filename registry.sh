#!/bin/bash

#install docker
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker && sudo usermod -aG docker $USER

#Making changes for registry
wget  https://raw.githubusercontent.com/vkushnirenko-luxoft/scripts/master/modify_docker_for_registry.sh
chmod +x modify_docker_for_registry.sh
./modify_docker_for_registry.sh
