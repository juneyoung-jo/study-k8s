# OpenJDK 21 이미지 사용
FROM bellsoft/liberica-openjdk-alpine:21

# 이미지 작성자
LABEL MAINTAINER="young"

# 명령어
CMD ["./gradlew", "clean", "build"]

# 9091 포트 오픈
EXPOSE 9091

# 임시파일 저장소
VOLUME /tmp

# JAR 파일 빌드 후 생성된 파일을 이미지에 복사
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 컨테이너 시작 시 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "/app.jar"]
