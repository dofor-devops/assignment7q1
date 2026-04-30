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
    }
}

