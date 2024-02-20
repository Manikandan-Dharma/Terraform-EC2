pipeline {

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    } 
    environment {
        AWS_ACCESS_KEY_ID     = credentials( 'AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
    
    stages {
        
        stage("Git Checkout"){
            steps{
                git branch: 'main', url: 'https://github.com/Manikandan-Dharma/Terraform-EC2.git'
            }
 }
    

            
        stage('Plan') {
            steps {
                sh 'pwd; terraform init'
                sh 'pwd; terraform plan'
            }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

       }

        stage('Apply') {
            steps {
                sh "pwd; terraform apply -auto-approve"
            }
        }
    }

}
