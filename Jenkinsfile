pipeline {
agent  any
    environment {
        AWS_ACCESS_KEY_ID     = credentials( 'AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    
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

        stage('Apply') {
            steps {
                sh "pwd; terraform apply -auto-approve"
            }
        }
                stage('Deploy Tomcat with Ansible') {
            steps {
                ansiblePlaybook playbook: 'deploy_tomcat.yml', inventory: 'path/to/your/inventory_file', user: '<username>', become: true
            }
        }
    }

}
