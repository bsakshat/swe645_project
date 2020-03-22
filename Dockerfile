FROM tomcat
LABEL maintainer="Sakshat"

WORKDIR /var/lib/jenkins/workspace/new/webapp/
COPY target/swe645_spr20.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
