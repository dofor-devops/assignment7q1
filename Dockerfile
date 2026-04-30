# Use a valid Java base image
FROM openjdk:11-jdk-slim

WORKDIR /app

# Copy compiled class file into container
COPY HelloWorld.class /app

CMD ["java", "HelloWorld"]

