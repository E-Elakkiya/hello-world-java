# Use Java base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Compile Java source
RUN javac HelloWorld.java

# Command to run the Java program
CMD ["java", "HelloWorld"]
