pipeline{
    agent {
        docker {
            image "maven:3-jdk-8"
        }
    }

    stages{
        stage("Build"){
            steps{
                sh "mvn clean package"
            }
        }
        stage("Test"){
            steps{
                echo "======== Testing ========"
            }
        }
        stage("Deploy"){
            steps{
                echo "======== Deploying ========"
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