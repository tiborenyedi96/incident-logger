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
                '''
                echo 'Backend build finished'
            }
        }
    }
}
