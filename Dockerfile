# Use a specific Tomcat version for stability
FROM tomcat:9.0-jdk17-temurin

# Remove default web applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from the build context to the webapps directory
# Make sure to name the WAR if needed, e.g., ROOT.war for root deployment
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

# Optional: expose port (default Tomcat port)
EXPOSE 8080

# Default CMD is fine from the base image
