# Use official Java runtime as base image
FROM openjdk:11

# Set working directory inside container
WORKDIR /app

# Copy compiled class file into container
COPY HelloWorld.class /app

# Command to run the application
CMD ["java", "HelloWorld"]

