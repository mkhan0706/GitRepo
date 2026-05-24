pipeline {
    agent any

    stages {

        // stage('Checkout Code') {
        //     steps {
        //         git branch: 'main',
        //         url: 'https://github.com/mkhan0706/GitRepo.git'
        //     }
        // }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-creds'
                ]]) {

                    bat 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-creds'
                ]]) {

                    bat 'terraform apply --auto-approve'
                }
            }
        }
    }
}
