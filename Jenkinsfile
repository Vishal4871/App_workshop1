pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main',
                credentialsId: 'github-key',
                url: 'git@github.com:Vishal4871/ngix-test.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ngix-test .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker rm -f ngix-test || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d -p 8080:80 --name ngix-test ngix-test'
            }
        }
    }
}
