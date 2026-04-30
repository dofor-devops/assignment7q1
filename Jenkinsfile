pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/dofor-devops/assignment7q1.git'
            }
        }
        stage('Compile') {
            steps {
                sh 'javac helloworld.java'
            }
        }
        stage('Execute') {
            steps {
                sh 'java helloworld'
            }
        }
    }
}

