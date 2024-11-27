FROM maven:3.9.4-eclipse-temurin-17

USER root
RUN apt-get update && apt-get install -y docker.io && rm -rf /var/lib/apt/lists/*

USER maven

WORKDIR /app

COPY . /app

EXPOSE 3000

CMD ["mvn", "--version"]
