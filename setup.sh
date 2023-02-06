#!/bin/bash
git clone "https://github.com/omriv88/deploy-jenkins-jobs.git"
cp ./deploy-jenkins-jobs/* ./
docker build -t myjenkins .
sudo /usr/local/bin/docker-compose -f "./docker-compose.yaml" up -d
sleep 40s
bash  test.sh
