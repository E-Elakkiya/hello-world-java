FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]
