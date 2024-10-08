FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/gym_website-0.0.1-SNAPSHOT.jar /app/gym_website.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "gym_website.jar"]