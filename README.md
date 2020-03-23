# SWE645 Spring 2020
Web App Project

Student Survey Webapp:
   http://swe645.bsakshat.com

Files:
1. This folder contains all the files for the webapp, pipeline and deployment.
   It consists of: src files for the webapp, Dockerfile, Jenkinsfile, deployment.yaml.

2. The folder webapp contains the src files, pom.xml file and the war file. 
   The pom.xml file is in webapp.
   The source files for the webapp is are in webapp/src/main/webapp
   The war file is in webapp/target and named swe645_spr20.war

3. Dockerfile provides the configuration of the image to be run on the cluster.
   deployment.yaml provides the configuration of the cluster where the image is to be run.
   Jenkinsfile gives the configuration of the CI/CD pipeline and the different stages in the build process.


GitHub Repository:
https://github.com/bsakshat/swe645_project.git

Docker Hub:
https://hub.docker.com/repository/docker/bsakshat/swe645-spr20

The pipeline orchestration is done in Jenkins installed with Maven, Docker, kubectl, GitHub plugin. It is then deployed on a Kubernetes cluster in the Google Kubernetes Engine.

Instructions:
1. To replicate, install Jenkins on an instance. Install Maven, Docker, kubectl, GitHub plugin in the Jenkins. Add credentials for your GitHub and Docker Hub.

2. Clone the repo. Then, modify the deployment.yaml and Jenkinsfile according to your cluster configuration, credentials and Docker Hub repo and image.

3. Configure the webhook for the repo in GitHub.

4. Create a new Pipeline project in Jenkins. Configure the GitHub trigger and specify the Jenkinsfile as Pipeline Script from SCM.

5. Commit a change on the webapp and push it to GitHub. The pipeline should automatically build and deploy the new version of the webapp to the cluster.
