pipeline {
   agent any
   stages {
    stage('Deploy') {
      steps {
        script {
                  
		sh "aws cloudformation deploy --template-file ec2cf.json --stack-name=${stackname} --parameter-overrides InstanceType=${InstanceType} KeyName=${KeyName} TagName=${TagName} --region 'us-east-2'" 
		
	 // sh  "aws cloudformation delete-stack --stack-name teststack2"
           }
       }
    	}
     stage('Build') {
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
	

