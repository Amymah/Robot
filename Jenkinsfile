//Declerative pipiline syntax
pipeline {
    agent any

    stages {
        stage('Check Python') {
            steps {
                bat 'python --version'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'pip install robotframework robotframework-seleniumlibrary'
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat 'robot checkbox.robot'
                bat 'robot checkout.robot'
                bat 'robot Cmethods.robot'
            }
        }
    }

    post {
        always {
            // Archive Robot test reports
            archiveArtifacts artifacts: '**/log.html, **/report.html, **/output.xml', allowEmptyArchive: true
        }
    }
}
