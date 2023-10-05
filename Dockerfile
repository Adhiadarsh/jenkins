# Use an official OpenJDK as the base image
FROM openjdk:8-jre-alpine

# Set the Jenkins version and URL
ENV JENKINS_VERSION 2.364
ENV JENKINS_URL https://updates.jenkins-ci.org/download/war/2.364/jenkins.war

# Download and copy the Jenkins WAR file
RUN wget -O /opt/jenkins.war $JENKINS_URL

# Expose the default Jenkins port
EXPOSE 8080

# Define the command to run Jenkins
CMD ["java", "-jar", "/opt/jenkins.war"]

