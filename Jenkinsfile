pipeline {
   agent any
   stages {
    stage('Deploy') {
      steps {
        script {
                  
		sh "aws cloudformation deploy --template-file ec2fin.json --stack-name=${stackname} --parameter-overrides InstanceType=${InstanceType} KeyName=${KeyName} TagName=${TagName} --region 'us-east-2'" 
		
	 // sh  "aws cloudformation delete-stack --stack-name teststack2"
           
          }
       }
    }
	}
	}

