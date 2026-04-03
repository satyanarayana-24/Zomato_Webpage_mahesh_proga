FROM node:16-slim

# Remove default apps
RUN rm -rf /usr/local/node/webapps/*

# Copy WAR as ROOT.war
COPY target/zomato-manufacturing.war /usr/local/node/webapps/ROOT.war

EXPOSE 3000

CMD ["catalina.sh", "run"]
