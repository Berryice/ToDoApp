FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app
COPY target/ToDoApp-0.0.1-SNAPSHOT.jar /app/ToDoApp-0.0.1-SNAPSHOT.jar
EXPOSE 8080/tcp
CMD ["java", "-XX:+UseG1GC","-jar", "ToDoApp-0.0.1-SNAPSHOT.jar"]