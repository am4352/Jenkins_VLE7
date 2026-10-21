
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Verify Go Project') {
            steps {
                sh 'ls -la'
                sh 'test -f go.mod'
                sh 'test -f main.go'
                sh 'test -f Dockerfile'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t vle7-go-app:latest .'
            }
        }

        stage('Verify Docker Image') {
            steps {
                sh 'docker images vle7-go-app'
            }
        }
    }
}
