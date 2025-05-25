pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                // Jenkins will auto-clone your repo, so this can be left blank or just show a message
                echo 'Cloning from GitHub...'
            }
        }
        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }
        stage('Test') {
            steps {
                bat 'npm test || echo "No tests"'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t nodejs-sample .'
            }
        }
    }
}
