pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                dir('directory') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('directory') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('directory') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}