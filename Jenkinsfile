pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                sh 'rm -r *'
                sh 'git clone https://github.com/omriv88/jenkins.git'
                sh 'ls -l'
            }
        }
                stage('run Python script') {
            steps {
                sh 'echo "Devops is great"'
            }
        }
    }
}
