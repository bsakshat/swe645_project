FROM tomcat
LABEL maintainer="Sakshat"

COPY workspace/new/webapp/target/swe645_spr20.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
