FROM tomcat:9.0

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as ROOT
COPY target/webapp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
