FROM node:16-slim

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as ROOT.war
COPY target/zomato-manufacturing.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 3000

CMD ["catalina.sh", "run"]
