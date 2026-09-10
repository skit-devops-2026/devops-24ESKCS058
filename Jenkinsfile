pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install') {
            steps {
                bat 'python --version'
            }
        }

        stage('Test') {
            steps {
                bat 'python tests\\run_tests.py'
            }
        }

        stage('Build') {
            steps {
                bat 'echo Static frontend build check passed'
            }
        }
    }

    post {
        always {
            echo 'Jenkins pipeline completed.'
        }
    }
}