pipeline {
    agent any

   environment{
       Docker_image='Node-app'
       Docker_user=credentials('docker-hub')
   }
   stages{
		stage('git_clone'){
			steps{
				git 'https://github.com/akki9163/demo.git'
				}
				}

		stage('docker image building'){
			steps{
				sh 'docker build -t $Docker_image:latest' 
			}
		}
		stage('docker hub'){
			steps{
				sh 'echo $Docker_user_pass | docker login -u $Docker_user_usr --password-stdin'
			}
		}
	   stage('docker push'){
			steps{
				sh 'docker push akki9163/$Docker_image:latest'
			}
		}
	}
}
