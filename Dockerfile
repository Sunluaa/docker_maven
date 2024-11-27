FROM maven:3.9.4-eclipse-temurin-17

WORKDIR /app

COPY . /app

EXPOSE 3000

CMD ["mvn", "--version"]
