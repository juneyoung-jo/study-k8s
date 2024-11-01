FROM openjdk:21-jdk-alpine
LABEL MAINTAINER="young

CMD ["./gradlew", "clean", "build"]

EXPOSE 9091

VOLUME /tmp
ARG JAR_FILE=build/libs/*jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
