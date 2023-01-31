pipeline {
    agent any

    stages {
        stage('check the repositories git pull') {
            steps {
                sh 'git pull https://github.com/omriv88/Devops-Position.git'
                sh 'ls -l'
            }
        }
                stage('tun Python script') {
            steps {
                sh 'python main.py'
            }
        }
    }
}
