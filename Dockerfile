FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/Test-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
COPY ${JAR_FILE} Test-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app.jar"]
