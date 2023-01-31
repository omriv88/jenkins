# jenkins
deploy jenkins with 2 jobs. 1 freestyle job it run on every pull request in the gitgub and run antoher pipeline jobs that run python script on the server When freestyle job is running


* 1 - run the container 
*     docker run -p 8080:8080 -p 50000:50000 myjenkins

* 2 - set permmision for test.sh
*     chmod +x test.sh



* 3 - run the test.sh script
*     ./test.sh
