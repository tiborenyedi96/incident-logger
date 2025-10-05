pipeline {
    agent any
    environment {
        DOCKERHUB = credentials('dockerhub-credentials')
    }

    stages {
        stage('Dockerhub login') {
            steps {
                echo 'Dockerhub login...'
                sh '''
                echo $DOCKERHUB_PSW | docker login -u $DOCKERHUB_USR --password-stdin
                '''
            }
        }
        stage('Backend: build & push') {
            steps {
                echo 'Building backend service...'
                sh '''
                docker --version
                docker build -t $DOCKERHUB_USR/incident-logger-backend:latest backend
                docker push $DOCKERHUB_USR/incident-logger-backend:latest
                '''
                echo 'Backend build and push finished...'
            }
        }
        stage('Frontend: build & push') {
            steps {
                echo 'Building frontend service...'
                sh '''
                docker --version
                docker build -t $DOCKERHUB_USR/incident-logger-frontend:latest frontend
                docker push $DOCKERHUB_USR/incident-logger-frontend:latest
                '''
                echo 'Frontend build and push finished...'
            }
        }
    }
}