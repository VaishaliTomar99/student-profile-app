pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/VaishaliTomar99/student-profile-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t student-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker rm -f student-container || true'
                sh 'docker run -d -p 5002:5000 --name student-container student-app'
            }
        }
    }
}