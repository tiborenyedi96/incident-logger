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
    }
}
