pipeline {
	agent {label 'first'}
   stages {
    stage('Cloudforation') {
      steps {
        script {
                  
		sh '''
		echo hello
		
		python3 --version
		
		python3 a.py
		
		'''
		
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
	

