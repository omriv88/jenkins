pipeline {
    agent any

    stages {
        stage('check the repositories git pull') {
            steps {
                sh 'rm -r *'
                sh 'git clone https://github.com/omriv88/jenkins.git'
                sh 'ls -l'
            }
        }
                stage('tun Python script') {
            steps {
                sh 'echo "Devops is great"'
            }
        }
    }
}
