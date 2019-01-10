# Pull base image
From tomcat:8-jre8

# Maintainer
MAINTAINER "Gauraw Kumar Gupta <gauraw.sterling@gmail.com">

# Copy to images tomcat path
ADD spring-mvc-showcase.war /usr/local/tomcat/webapps/
