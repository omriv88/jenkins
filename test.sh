#!/bin/bash
curl -sO http://lcoalhost:8080/cli/jenkins-cli.jar
curl --insecure http://localhost/jnlpJars/jenkins-cli.jar --output jenkins-cli.jar
chmod +x jenkins-cli.jar
java -jar jenkins-cli.jar -s http://localhost:8080 -auth admin:password -webSocket create-job "Run Python Script when any pull requests in github" < pipeline.xml
java -jar jenkins-cli.jar -s http://localhost:8080 -auth admin:password -webSocket create-job "test2" < test2.xml
