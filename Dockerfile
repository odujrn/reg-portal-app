FROM maven:3.8.6 AS build
COPY ./webapp /usr/src/webapp
WORKDIR /usr/src/webapp
RUN mvn package

FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY --from=build /usr/src/webapp/target/*.war /usr/local/tomcat/webapps/
