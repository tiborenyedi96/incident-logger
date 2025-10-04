pipeline {
    agent any
    environment {
        DOCKERHUB = credentials('dockerhub-credentials')
    }

    stages {
        stage('Dockerhub login') {
            agent any
            steps {
                echo 'Dockerhub login...'
                sh '''
                echo $DOCKERHUB_PSW | docker login -u $DOCKERHUB_USR --password-stdin
                '''
            }
        }
        stage('Backend build & push') {
            agent any
            steps {
                echo 'Building backend service...'
                sh '''
                docker --version
                docker build -t $DOCKERHUB_USR/incident-logger-backend:latest backend
                docker push $DOCKERHUB_USR/incident-logger-backend:latest
                '''
                echo 'Backend build finished...'
            }
        }
        stage('Frontend build & push') {
            agent any
            steps {
                echo 'Building frontend service...'
                sh '''
                docker --version
                docker build -t $DOCKERHUB_USR/incident-logger-frontend:latest frontend
                docker push $DOCKERHUB_USR/incident-logger-frontend:latest
                '''
                echo 'Frontend build finished...'
            }
        }
    }
}