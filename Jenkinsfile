pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('Build'){
            steps{
                sh script: 'mvn -f webapp/pom.xml clean package'
            }
        }
    }
}