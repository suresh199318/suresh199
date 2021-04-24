`node {

checkout(scm)       
    stage ('Templates Deployment'){
        sh """
          PATH=/bin/terraform
          terraform init
	  terraform apply -inupt=false"
    }
}`
