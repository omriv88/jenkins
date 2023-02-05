#!/bin/bash

#git clone ""
# docker build -t myjenkins .

sudo /usr/local/bin/docker-compose -f "/root/project/docker-compose.yaml" up -d

sleep 30s

bash test.sh
