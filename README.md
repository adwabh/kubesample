# Project to demonstrate prometheus metrics, grafana dashboard in a spring boot application

This project is a simple spring boot application that exposes prometheus metrics.

Instructions
----------------------
    1. Clone the project
    2. Run the command `./gradlew clean build`
    3. Run the command `docker build -t prometheus-metrics-demo .`
    4. push the image to docker registry on local machine running on port 5000
    5. run `docker-compose up -d` to start the application and prometheus and grafana
    6. Access the application on `http://localhost:8080`
    7. Access the prometheus on `http://localhost:9090`
    8. Access the grafana on `http://localhost:3000`