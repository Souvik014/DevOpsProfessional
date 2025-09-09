# Dockerfile
FROM openjdk:17-jdk
WORKDIR /app
COPY . /app
RUN ./gradlew build   # or mvn package
EXPOSE 80
CMD ["java", "-jar", "build/libs/DevOpsProfessional.jar"]

