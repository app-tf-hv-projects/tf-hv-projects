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
            sh 'terraform init -reconfigure'
            sh 'terraform workspace new HGA_DEV'
			sh 'terraform init'
            sh 'terraform validate'
			sh 'terraform plan'
			sh 'terraform apply -auto-approve'
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
