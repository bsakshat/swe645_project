FROM tomcat
LABEL maintainer="Sakshat"

COPY target/swe645_spr20.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
