pipeline {
    agent any

    stages {
        stage('Backend build') {
            agent {
                docker {
                    image 'python:3-slim'
                }
            }
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
