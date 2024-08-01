pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/sraj9506/Day-14.git', branch: env.BRANCH_NAME
            }
        }

        stage('Build') {
            steps {
                script {
                    echo "Building Docker Image : "
                    sh 'docker build -t myapp:latest .'
		    sh 'docker login --username suryrajsinh9506 --password Suryrajsinh@9506'
	            sh 'docker push suryrajsinh9506/myapp:latest'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo "Deploy Docker Container :"
                    sh 'docker run -d --name myapp myapp:latest'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
