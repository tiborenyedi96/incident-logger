pipeline {
    agent any

    stages {
        stage('Backend build') {
            steps {
                echo 'Building backend'
                sh '''
                cd backend/
                docker build .
                '''
            }
        }
        stage ('Frontend build') {
            steps {
                echo 'Building frontend'
                sh '''
                cd frontend/
                docker build .
                '''
            }
        }
    }
    post {
        always {
            sh 'docker images'
        }
    }
}
