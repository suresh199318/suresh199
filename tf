pipeline {
   agent any
   stages {
    stage('Terraform') {
      steps {
        script {
          sh 'PATH=/bin/terraform'
	
	//  sh 'terraform destroy -auto-approve'
            sh 'terraform init'
	    sh 'terraform apply -auto-approve'
	
	
	//	sh "aws cloudformation deploy --template-file ec2cf.json --stack-name=${stackname} --parameter-overrides InstanceType=${InstanceType} KeyName=${KeyName} TagName=${TagName} --region 'us-east-2'" 
       // sh  "aws cloudformation delete-stack --stack-name teststack2"
           
          }
       }
    }
     stage('clear-workspace') {
            steps {
                // Clean before build
                cleanWs()
                // We need to explicitly checkout from SCM here
              //  checkout scm
              //  echo "Building ${env.JOB_NAME}..."
            }
        }
	}
	}
