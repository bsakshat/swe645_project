pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('Build WAR file'){
            steps{
                sh script: 'mvn -f webapp/pom.xml clean package'
            }
        }
        stage('make docker image'){
            steps{
                script {
                    webapp = docker.build("bsakshat/swe645-spr20:v${env.BUILD_ID}")
                    webapp.push()
                }
            }
        }
    }
}