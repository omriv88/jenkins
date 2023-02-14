
# Jenkins

# Summary
* provide a running Jenkins server, that will initiate a python job on any github merge request


# Description

the setup.sh script build and runing jenkins on docker via Dockerfile and Docker-compose
* setup.sh script:
![image](https://user-images.githubusercontent.com/113102456/218678901-2e94aa89-44ac-4d4e-9f99-e0666eba381f.png)
* Dockerfile:
![image](https://user-images.githubusercontent.com/113102456/218678967-64cecd7f-1dde-4f82-9ff0-d1611e6d7982.png)
* Docker-compoe file:
![image](https://user-images.githubusercontent.com/113102456/218679219-af3092bb-df99-4d4c-9a64-faef08e5c76a.png)

and runing another scirpt that call tester.sh:

* tester.sh script:
![image](https://user-images.githubusercontent.com/113102456/218679435-2987b905-a3f0-4dfd-90bd-9960ee227116.png)

the tester.sh script checks when the URL of the Jenkins server is available
and runs another script called test.sh.

* test.sh script:

![image](https://user-images.githubusercontent.com/113102456/218681595-5e83c730-8482-438e-b9a2-76eeac7bff39.png)

the test.sh downloads from the Jenkins server jenkins-cli.jar file, and builds 2 jobs via XML file, 
the first job call "pull request demo1" 

* pull request demo1 job - Console output:
![image](https://user-images.githubusercontent.com/113102456/218683222-c0d7b68e-49e1-410c-951c-025efeedc49c.png)

that jobs getting any pull request from github specific repository and build another job that call "pipeline"

* pipeline job - Console output:

![image](https://user-images.githubusercontent.com/113102456/218683846-f273b4b3-c326-4a03-b3ab-9186d548d634.png)
![image](https://user-images.githubusercontent.com/113102456/218683950-2ca7f3d5-2b85-4793-ba8c-33ecd42b3865.png)


the pipeline jobs runing main.py script via Jenkinsfile

* main.py

![image](https://user-images.githubusercontent.com/113102456/218684193-3f582a42-1da4-4652-a50d-7574c7cebed5.png)

* Jenkinsfile

![image](https://user-images.githubusercontent.com/113102456/218684356-d78a4aab-736e-4f57-82d0-15494b1c831d.png)




# Run the Jenkins

* 1 - git clone https://github.com/omriv88/jenkins.git


* 2 - run the setup.sh script
