FROM amazoncorretto:17.0.7-al2-generic
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 80

CMD java \
  -XX:MaxRAMPercentage=60 \
  -jar app.jar