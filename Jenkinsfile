<<<<<<< HEAD
pipeline {
  agent any
   stages {
        stage('clone Repo')
		steps {
		Sh "export AWS_DEFAULT_REGION=us-east-1"
		sh "aws cloudformation deploy --template-file s3simpletest.json --stack-name my-new-stack --parameter-overrides RootDomainName=jvkcdvbbfk --capabilities CAPABILITY_IAM --parameter-overrides RootDomainName=jvkcdvbbfk --capabilities CAPABILIT"
		}
		}
		}
		}
=======
pipeline {
   agent any
   stages {
    stage('Checkout') {
      steps {
        script {
           // The below will clone your repo and will be checked out to master branch by default.
         // git branch: 'suresh2', credentialsId: 'd4105a5d-04ba-42a2-ae10-217ba2f3c5c4', url: 'https://github.com/suresh199318/suresh.git'
           // Do a ls -lart to view all the files are cloned. It will be clonned. This is just for you to be sure about it.
	   sh "export AWS_DEFAULT_REGION=us-east-1"	
           sh "aws cloudformation deploy --template-file ec2fin.json --stack-name teststack1 --parameter-overrides InstanceType=t2.micro KeyName=ohio --region 'us-east-2'" 
           // List all branches in your repo. 
          // sh "git branch -a"
           // Checkout to a specific branch in your repo.
            // sh "git checkout branchname"
          }
       }
    }
	}
	}
>>>>>>> a086002fca8d1f1328e811b32d8dfa7e93548d7e
