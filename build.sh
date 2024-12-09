#!/bin/bash
sudo docker build -t sowmyadevop/dev:mydeployment .
sudo docker images
sudo docker-compose up -d --remove-orphans
sudo docker ps -a
