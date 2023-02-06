#!/bin/bash

#Checkout
git clone "https://github.com/omriv88/deploy-jenkins-jobs.git"
cp ./deploy-jenkins-jobs/* ./

#Build
docker build -t myjenkins .

#Run
sudo /usr/local/bin/docker-compose -f "./docker-compose.yaml" up -d
sleep 45s

#Deploy jobs
bash  test.sh
