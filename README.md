# Deploy jenkins and jobs 
  setup.sh script build and run docker image for jenkins on container using Dockerfile and docker-compose and deploy 2 jenkins jobs -
  the first job is freestyle job this job getting any pull requests from github specific reposetory and build antoher pipeline job - 
  the pipeline job runing python script called main.py that print "Devops is great" using Jenkinsfile.


* 1 - clone the repository 


* 2 - run the setup.sh script



setup.sh script build and run Jenkins server on container, the jenkins server will initiate a python job on any merge request via one command line



setup.sh script build and runing jenkins on docker via Dockerfile and Docker-compose
setup.sh script:
![image](https://user-images.githubusercontent.com/113102456/218678548-4cb010f4-02a9-406c-8f33-9c1070e073be.png)
Dockerfile:
![image](https://user-images.githubusercontent.com/113102456/218678627-890bf9de-6b62-4554-9ef2-2a59bae38c9d.png)
Docker-compoe file:
![image](https://user-images.githubusercontent.com/113102456/218678678-bf0d223e-8141-4e4c-b19f-6360a04c544a.png)
and runing another scirpt that call tester.sh script, this script check when the jenkins url is runing and runing.
if the jenkins url is in status 200 its runing another script that call test.sh
the test.sh script download jenkins-cli.jar file from jenkins server and build two jobs via xml file .
the first job call "pull request demo1" that jobs getting any pull request from github specific repository and build another job that call "pipeline"
the pipeline jobs runing main.py script via Jenkinsfile
