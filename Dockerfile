FROM openjdk:21-jdk-alpine
LABEL MAINTAINER="young

CMD ["./gradlew", "clean", "build"]

EXPOSE 9091

VOLUME /tmp
ARG JAR_FILE=build/libs/*jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["/bin/bash", "-c", "java $JAVA_OPTS -jar /app.jar"]
