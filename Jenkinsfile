pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main',
                credentialsId: 'github-key',
                url: 'git@github.com:Vishal4871/App_workshop1.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp:latest .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                    if docker ps -a --format "{{.Names}}" | grep -qw myapp_container; then
                        docker rm -f myapp_container
                    fi
                '''
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d -p 80:80 --name myapp_container myapp:latest'
            }
        }
    }
}
