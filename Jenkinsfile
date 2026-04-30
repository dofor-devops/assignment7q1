pipeline {
    agent any
    stages {
        stage('Compile') {
            steps {
                sh 'javac HelloWorld.java'
            }
        }
        stage('Execute') {
            steps {
                sh 'java HelloWorld'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    // Build Docker image using Dockerfile in repo
                    sh 'docker build -t hello-world-app .'
                }
            }
        }
        stage('Docker Run') {
            steps {
                script {
                    // Run container and print output
                    sh 'docker run --rm hello-world-app'
                }
            }
        }
    }
}

