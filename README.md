# Deploy jenkins and jobs 
deploy jenkins with 2 jobs. first job is called "Run Python Script when any pull requests in github" its a freestyle job it run every pull request in the github and run antoher pipeline jobs is called "test2" job. that run python script on the server When freestyle job is running


* 1 - run the container 
*     docker run -p 8080:8080 -p 50000:50000 myjenkins

* 2 - set permmision for test.sh
*     chmod +x test.sh



* 3 - run the test.sh script
*     ./test.sh
