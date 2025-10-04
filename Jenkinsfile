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
        stage('Backend build') {
            agent any
            steps {
                echo 'Building backend service...'
                sh '''
                docker --version
                docker build -t $DOCKERHUB_USR/backend-service:latest backend
                docker push $DOCKERHUB_USR/backend-service:latest
                '''
                echo 'Backend build finished...'
            }
        }
        stage('Frontend build') {
            agent any
            steps {
                echo 'Building frontend service...'
                sh '''
                docker --version
                docker build -t $DOCKERHUB_USR/frontend-service:latest frontend
                docker push $DOCKERHUB_USR/frontend-service:latest
                '''
                echo 'Frontend build finished...'
            }
        }
    }
}
