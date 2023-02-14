# Deploy jenkins and jobs 
  setup.sh script build and run docker image for jenkins on container using Dockerfile and docker-compose and deploy 2 jenkins jobs -
  the first job is freestyle job this job getting any pull requests from github specific reposetory and build antoher pipeline job - 
  the pipeline job runing python script called main.py that print "Devops is great" using Jenkinsfile.


* 1 - clone the repository 


* 2 - run the setup.sh script



setup.sh script build and run Jenkins server on container, the jenkins server will initiate a python job on any merge request via one command line



setup.sh script build and runing jenkins on docker via Dockerfile and Docker-compose
* setup.sh script:
![image](https://user-images.githubusercontent.com/113102456/218678901-2e94aa89-44ac-4d4e-9f99-e0666eba381f.png)
* Dockerfile:
![image](https://user-images.githubusercontent.com/113102456/218678967-64cecd7f-1dde-4f82-9ff0-d1611e6d7982.png)
* Docker-compoe file:
![image](https://user-images.githubusercontent.com/113102456/218679219-af3092bb-df99-4d4c-9a64-faef08e5c76a.png)
and runing another scirpt that call tester.sh script, this script check when the jenkins url is runing and runing.
if the jenkins url is in status 200 its runing another script that call test.sh
the test.sh script download jenkins-cli.jar file from jenkins server and build two jobs via xml file .
the first job call "pull request demo1" that jobs getting any pull request from github specific repository and build another job that call "pipeline"
the pipeline jobs runing main.py script via Jenkinsfile
