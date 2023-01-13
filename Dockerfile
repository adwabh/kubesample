# Build stage
# ===========
FROM gradle:7.4-jdk11 as builder

WORKDIR /var/tmp
USER root

# make sure the dependencies are cached
ENV GRADLE_USER_HOME /var/tmp/.gradle

# Download dependencies
ADD *.gradle *.gradle.kts *.properties ./
ADD ./gradle/*.gradle ./gradle/
RUN gradle build --stacktrace --no-daemon

FROM openjdk:17-jdk-alpine

WORKDIR /opt/kubesample

#COPY --from=builder /var/tmp/build/libs/comms-service-0.0.1-SNAPSHOT.jar .
ARG JAR_FILE=/var/tmp/build/libs/kubesample-0.0.1-SNAPSHOT.jar
COPY --from=builder ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]


