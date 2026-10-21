
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Verify Environment') {
            steps {
                sh 'echo "GitHub checkout successful"'
                sh 'java -version'
                sh 'docker --version'
            }
        }
    }
}
