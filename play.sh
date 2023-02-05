#!/bin/bash

git clone "https://github.com/omriv88/deploy-jenkins-jobs.git"
pws
docker build -t myjenkins /deploy-jenkins-jobs.git/.

sudo /usr/local/bin/docker-compose -f "/root/project/docker-compose.yaml" up -d

sleep 30s

bash test.sh
