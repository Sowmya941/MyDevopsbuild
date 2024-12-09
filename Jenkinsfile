pipeline {
    agent any
    stages {
        stage('deploy') {
            steps {
                sh 'chmod +x build.sh'
            }
            steps {
                sh './build.sh'
            }
        }
    }
}
