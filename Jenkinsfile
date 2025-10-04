pipeline {
    agent any

    stages {
        stage('Backend build') {
            agent any
            steps {
                echo 'Building backend service'
                sh '''
                docker --version
                cd backend/
                docker build -t backend-service:latest .
                '''
                echo 'Backend build finished'
            }
        }
        stage('Frontend build') {
            agent any
            steps {
                echo 'Building frontend service'
                sh '''
                docker --version
                cd frontend/
                docker build -t frontend-service:latest .
                '''
                echo 'Frontend build finished'
            }
        }
    }
}
