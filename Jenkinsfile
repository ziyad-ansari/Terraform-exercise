pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ziyad-ansari/Terraform-exercise.git']]])            

          }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }
        
        stage ("terraform Apply") {
            steps {
                sh ('terraform apply -var-file "dev.tfvars" --auto-approve') 
           }
        }
    }
}