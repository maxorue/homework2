pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}
	
	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/maxorue/homework2.git'
			}
		}
		stage('Build') {

			steps {
				sh 'docker build -t myapp .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push myapp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}

