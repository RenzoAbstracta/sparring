pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build & Deploy') {
            steps {
                script {
                    sh 'docker-compose up --build -d'
                }
            }
        }

        stage('Clean Up') {
            steps {
                script {
                    sh 'docker-compose down'
                }
            }
        }
    }

    post {
        always {
            echo 'Este es un mensaje que siempre se ejecutará al finalizar el pipeline.'
        }

        success {
            echo 'Despliegue completado con éxito.'
        }

        failure {
            echo 'El despliegue ha fallado.'
        }
    }
}