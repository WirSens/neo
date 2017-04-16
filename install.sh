#!/bin/bash

# DOCKER
curl -sSL https://get.docker.com | sh

# GRANT ACCESS FOR PRIVILEGED
sudo usermod -aG docker pi

# DOCKER COMPOSE
sudo apt-get update
sudo apt-get install -y apt-transport-https
echo "deb https://packagecloud.io/Hypriot/Schatzkiste/debian/ jessie main" | sudo tee /etc/apt/sources.list.d/hypriot.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 37BBEE3F7AD95B3F

sudo apt-get update
sudo apt-get install docker-compose
