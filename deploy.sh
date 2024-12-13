#!/bin/bash
if [ $GIT_BRANCH = "dev" ]; then
sh 'chmod +x build.sh'
sh './build.sh'
    docker tag mydeployment sowmyadevop/dev
    docker push sowmyadevop/dev:mydeployment
elif [ $GIT_BRANCH = "main" ]; then
sh 'chmod +x build.sh'
sh './build.sh'
    docker tag mydeployment sowmyadevop/prod
    docker push sowmyadevop/prod:mydeployment
fi
