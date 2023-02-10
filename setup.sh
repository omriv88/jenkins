#!/bin/bash

#Checkout
git clone "https://github.com/omriv88/deploy-jenkins-jobs.git"
git clone "https://github.com/omriv88/jobs.git"
cp ./deploy-jenkins-jobs/* ./
cp -r -f ./jobs/* ./

#Build
docker build -t myjenkins .

#Deploy
sudo /usr/local/bin/docker-compose -f "./docker-compose.yaml" up -d

