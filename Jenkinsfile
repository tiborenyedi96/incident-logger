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
                ls -la
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
