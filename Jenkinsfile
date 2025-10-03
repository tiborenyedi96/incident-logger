pipeline {
    agent any

    stages {
        stage('Backend build') {
            agent any
            steps {
                echo 'Building backend service'
                sh '''
                cd backend/
                docker build .
                '''
                echo 'Backend build finished'
            }
        }
        stage('Frontend build') {
            agent any
            steps {
                echo 'Building frontend service'
                sh '''
                cd frontend/
                docker build .
                '''
                echo 'Frontend build finished'
            }
        }
    }
}
