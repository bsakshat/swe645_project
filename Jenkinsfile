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
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub')
                        webapp = docker.build("bsakshat/swe645-spr20:v${env.BUILD_ID}")
                        webapp.push('latest')
                        webapp.push("v${env.BUILD_ID}")
                }
            }
        }
    }
}