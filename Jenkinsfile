pipeline {
    agent any
    stages {
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

