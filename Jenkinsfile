pipeline {
    agent any
    stages {
        stage('deploy') {
            steps {
                sh 'chmod +x deploy.sh'
            }
            steps {
                sh './deploy.sh'
            }
        }
    }
}
