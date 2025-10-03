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
                echo 'Building backend service'
                sh '''
                cd backend/
                docker build .
                sh 'docker images'
                '''
                echo 'Backend build finished'
            }
        }
        stage('Frontend build')
            agent {
                docker {
                    image 'node:20-alpine'
                }
            }
            steps {
                echo 'Building frontend service'
                sh '''
                cd frontend/
                docker build .
                sh 'docker images'
                '''
                echo 'Frontend build finished'
            }
    }
}
