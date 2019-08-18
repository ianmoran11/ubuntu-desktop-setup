#!/bin/bash

sudo apt-get update

# Set root password -----------------------------

sudo passwd root

# Make clipboard of host available ---------------

sudo apt-get -y install xorg-video-abi-20
sudo apt-get -y install  xserver-xorg-core
sudo apt-get -y install virtualbox-guest-x11
sudo VBoxClient --clipboard

# Install Open SSH ------------------------------- 

sudo apt-get update
sudo apt-get -y install openssh-server

# Install git ----------------------------------- 

sudo apt -y install git

# Install Docker ---------------------------------

sudo apt-get remove docker docker-engine docker.io

sudo apt-get update

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"

sudo apt-get update

sudo apt-get -y install docker-ce

sudo docker run hello-world

# Install Docker compose -------------------------

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
