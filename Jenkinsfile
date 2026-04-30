pipeline {
    agent any

    environment {
        GIT_REPOSITORY_URL = 'https://github.com/dofor-devops/assignment7q1.git'
        DOCKER_IMAGE_NAME   = 'dofordevops/hello-world-app'
        IMAGE_TAG           = '1.0'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: "${GIT_REPOSITORY_URL}"
            }
        }

        stage('Compile') {
            steps {
                sh 'javac --release 11 HelloWorld.java'
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
                    sh "docker build -t ${DOCKER_IMAGE_NAME}:${IMAGE_TAG} ."
                }
            }
        }

        stage('Docker Run') {
            steps {
                script {
                    sh "docker run --rm ${DOCKER_IMAGE_NAME}:${IMAGE_TAG}"
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'my-docker-hub-credentials-id',
                                                     usernameVariable: 'DOCKER_USERNAME',
                                                     passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh """
                        echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                        docker push ${DOCKER_IMAGE_NAME}:${IMAGE_TAG}
                        """
                    }
                }
            }
        }
    }
}

