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
and runing another scirpt that call tester.sh:
* tester.sh script:
![image](https://user-images.githubusercontent.com/113102456/218679435-2987b905-a3f0-4dfd-90bd-9960ee227116.png)
tester.sh script checks when the URL of the Jenkins server is available
If the Url of the jenkins server is available, the script runs another script called test.sh.
* test.sh script:
![image](https://user-images.githubusercontent.com/113102456/218681595-5e83c730-8482-438e-b9a2-76eeac7bff39.png)
the test.sh downloads from the Jenkins server jenkins-cli.jar file, and builds 2 jobs via XML file 
the first job call "pull request demo1" 
* pull request demo1 - Console output:
![image](https://user-images.githubusercontent.com/113102456/218683222-c0d7b68e-49e1-410c-951c-025efeedc49c.png)

that jobs getting any pull request from github specific repository and build another job that call "pipeline"
the pipeline jobs runing main.py script via Jenkinsfile
script wait to receive status 200 from the Jenkis server Url in order to run the test.sh script

check the jenkins Url and wait for status 200, when the jenkins url is runing, if the jenkins url is in status 200 its runing another script that call test.sh
the test.sh script download jenkins-cli.jar file from jenkins server and build two jobs via xml file .
the first job call "pull request demo1" that jobs getting any pull request from github specific repository and build another job that call "pipeline"
the pipeline jobs runing main.py script via Jenkinsfile
