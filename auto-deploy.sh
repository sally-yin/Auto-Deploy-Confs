#!/bin/bash

#auto deploy tradespider client
cd ../
echo "delete old file"
sudo rm -rf tradespider/ glassesbag/ tradespider-docker/
echo "pull from github"
git clone git@github.com:Tradesparq/glassesbag.git -b pg
git clone git@github.com:Tradesparq/tradespider.git
git clone git@github.com:hgdharold/tradespider-docker.git

echo "start project"
cd tradespider-docker
docker-compose stop && \
echo y | docker-compose rm && \
docker-compose up -d

echo "success"
~                 
