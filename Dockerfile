# Step 1: Use lightweight Java image
FROM openjdk:17-jdk-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy the jar file from your machine to the container
COPY target/spring-boot-hello-world.jar app.jar

# Step 4: Expose port (Spring Boot default)
EXPOSE 8080

# Step 5: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
