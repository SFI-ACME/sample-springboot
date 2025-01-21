# FROM openjdk:10.0.2-jre-slim
FROM amazoncorretto:11-alpine
COPY target/gs-spring-boot-0.1.0.jar comet-hello-world-0.1.0.jar
CMD /usr/bin/java -Xmx400m -Xms400m -jar comet-hello-world-0.1.0.jar
EXPOSE 8080