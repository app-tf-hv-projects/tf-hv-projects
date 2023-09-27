pipeline{
    
    agent any
    
    stages(){
        
    stage('tf_workspace_clean-up'){
            steps{
			sh 'terraform workspace select HGA_DEV'
			sh 'terraform destroy -auto-approve'
			
            sh 'terraform workspace select HGA_SIT'
			sh 'terraform destroy -auto-approve'
			
			sh 'terraform workspace select HGA_QA'
			sh 'terraform destroy -auto-approve'
			
			sh 'terraform workspace select HGA_UAT'
			sh 'terraform destroy -auto-approve'
			
			sh 'terraform workspace select HGA_PROD'
			sh 'terraform destroy -auto-approve'
			
			sh 'terraform workspace select HGA_SIT'
			sh 'terraform workspace delete HGA_DEV'
			
			sh 'terraform workspace select HGA_QA'
			sh 'terraform workspace delete HGA_SIT'
			

			
			sh 'terraform workspace select HGA_UAT'
			sh 'terraform workspace delete HGA_QA'
			
			sh 'terraform workspace select HGA_PROD'
			sh 'terraform workspace delete HGA_UAT'
			
			sh 'terraform workspace select default'
			sh 'terraform workspace delete HGA_PROD'
			
}

}

        stage('tf_workspace_dev'){
            steps{

            sh 'terraform workspace new HGA_DEV'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}

stage('git_clone'){
            steps{
                
                git branch: 'main', credentialsId: 'Adhi2019', url: 'https://github.com/app-terraform-training/terraform-jenkins.git'
            }
        }    

        stage('tf_workspace_sit'){
            steps{

            sh 'terraform workspace new HGA_SIT'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
           stage('tf_workspace_qa'){
            steps{

            sh 'terraform workspace new HGA_QA'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
        stage('tf_workspace_uat'){
            steps{

            sh 'terraform workspace new HGA_UAT'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
        stage('tf_workspace_prod'){
            steps{

            sh 'terraform workspace new HGA_PROD'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
}
}
