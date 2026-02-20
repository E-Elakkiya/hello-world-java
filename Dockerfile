# Use Eclipse Temurin JDK 17
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy Maven project files
COPY pom.xml .
COPY src ./src

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Build the project
RUN mvn clean package

# Run the JAR
CMD ["java", "-cp", "target/hello-world-java-1.0-SNAPSHOT.jar", "com.example.HelloWorld"]
