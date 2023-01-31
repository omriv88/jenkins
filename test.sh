#!/bin/bash
java -jar jenkins-cli.jar -s http://35.175.105.197:8080 -auth admin:password -webSocket create-job "Run Python Script when any pull requests in github" < pipeline.xml
java -jar jenkins-cli.jar -s http://35.175.105.197:8080 -auth admin:password -webSocket create-job "test2" < test2.xml
