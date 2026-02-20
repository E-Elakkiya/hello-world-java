FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY pom.xml .
COPY src ./src

# Build with Maven
RUN apt-get update && apt-get install -y maven
RUN mvn clean package

# Run the compiled jar
CMD ["java", "-jar", "target/hello-world-java-1.0-SNAPSHOT.jar"]
