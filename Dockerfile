FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

CMD java \
  -XX:MaxRAMPercentage=60 \
  -jar app.jar