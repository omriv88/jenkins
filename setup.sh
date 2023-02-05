#!/bin/bash
git clone "https://github.com/omriv88/deploy-jenkins-jobs.git"
cp ./deploy-jenkins-jobs/* ./
docker build -t myjenkins .
sudo /usr/local/bin/docker-compose -f "/root/project/docker-compose.yaml" up -d
sleep 30s
bash  test.sh
