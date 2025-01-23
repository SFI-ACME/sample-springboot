# FROM openjdk:10.0.2-jre-slim
# FROM amazoncorretto:11-alpine
FROM public.ecr.aws/amazoncorretto/amazoncorretto:11-arm64
COPY target/gs-spring-boot-0.1.0.jar comet-hello-world-0.1.0.jar
CMD /usr/bin/java -Xmx400m -Xms400m -jar comet-hello-world-0.1.0.jar
EXPOSE 8080