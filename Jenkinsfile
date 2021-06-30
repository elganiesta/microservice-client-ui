pipeline{
    agent any

    stages{
        stage("Build"){
            steps{
                sh "mvn -version"
                sh "mvn clean install"
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