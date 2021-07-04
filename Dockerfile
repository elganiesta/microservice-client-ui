FROM openjdk:8-jre-alpine
RUN mkdir -p /home/app
COPY ./target/clientui-*.jar /home/app/app.jar
WORKDIR /home/app
EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "app.jar"]