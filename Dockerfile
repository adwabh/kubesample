FROM amazoncorretto:21.0.1-al2-generic
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 80
EXPOSE 11097

CMD java \
  -XX:MaxRAMPercentage=60 \
  -jar app.jar