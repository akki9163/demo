pipeline {
    agent any

   environment{
           DOCKERHUB_CREDENTIALS = credentials('docker-hub-akki')
   }
   stages{
		stage('git_clone'){
			steps{
				git 'https://github.com/akki9163/demo.git'
				}
				}

		stage('docker image building'){
			steps{
				sh 'docker build -t akki9163/test:$BUILD_NUMBER .' 
			}
		}
		stage('docker hub'){
			steps{
				sh 'echo $DOCKERHUB_CREDENTIALS_pass | docker login -u $DOCKERHUB_CREDENTIALS_usr --password-stdin'
			}
		}
	   stage('docker push'){
			steps{
				sh 'docker push akki9163/test:$BUILD_NUMBER'
			}
		}
	}
}
