pipeline{

    environment {
        registry = "elganiesta/clientui"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }

    agent {
        docker {
            image: 'maven:3-jdk-8'
        }
    }

    stages{
        stage("Maven build"){
            steps{
                echo "======== Maven build ========"
                sh "mvn package -B"
            }
        }
        stage("Docker build"){
            steps{
                echo "======== Docker build ========"
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage("Docker deploy"){
            steps{
                echo "======== Docker deploy ========"
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
    post{
        success{
            echo "======== pipeline executed successfully ========"
        }
        failure{
            echo "======== pipeline execution failed========"
        }
    }
}