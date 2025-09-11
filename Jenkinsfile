//Declerative pipiline syntax
// pipeline {
//     agent any

//     stages {
//         stage('Check Python') {
//             steps {
//                 bat 'python --version'
//             }
//         }
//            stage('Print Statement'){
//                steps{
//                    echo ">>> running declarative pipeline syntax..."
//                }
//            }
//         stage('Install Dependencies') {
//             steps {
//                 bat 'pip install robotframework robotframework-seleniumlibrary'
//             }
//         }

//         stage('Run Robot Tests') {
//             steps {
//                 bat 'robot checkbox.robot'
//                 bat 'robot checkout.robot'
//                 bat 'robot Cmethods.robot'
//             }
//         }
//     }

//     post {
//         always {
//             // Archive Robot test reports
//             archiveArtifacts artifacts: '**/log.html, **/report.html, **/output.xml', allowEmptyArchive: true
//         }
//     }
// }

//Scripted pipeline syntax
node {
    stage('Print Statment')
    {
        echo ">>> Running pipeline sicripted syntax..."
    }
    stage('Check Python') {
        bat 'python --version'
    }

    stage('Install Dependencies') {
        bat 'pip install robotframework robotframework-seleniumlibrary'
    }

    stage('Run Robot Tests') {
        bat 'robot checkbox.robot'
        bat 'robot checkout.robot'
        bat 'robot Cmethods.robot'
    }

    // Post actions (always run)
    stage('Archive Reports') {
        // Archive Robot test reports
        archiveArtifacts artifacts: '**/log.html, **/report.html, **/output.xml', allowEmptyArchive: true
    }
}

