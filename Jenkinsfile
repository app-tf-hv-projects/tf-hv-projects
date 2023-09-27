pipeline{
    
    agent any
    
    stages(){
	
        stage('git_clone'){
            steps{
                
                git branch: 'main', credentialsId: 'Adhi2019', url: 'https://github.com/app-tf-hv-projects/tf-hv-projects.git'
            }
        } 

        stage('tf_workspace_dev'){
            steps{

            sh 'terraform workspace select HGA_DEV'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}

   

        stage('tf_workspace_sit'){
            steps{

            sh 'terraform workspace select HGA_SIT'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
           stage('tf_workspace_qa'){
            steps{

            sh 'terraform workspace select HGA_QA'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
        stage('tf_workspace_uat'){
            steps{

            sh 'terraform workspace select HGA_UAT'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
        stage('tf_workspace_prod'){
            steps{

            sh 'terraform workspace select HGA_PROD'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
}

}
}
}
