# Use a valid Java base image
FROM eclipse-temurin:11

WORKDIR /app

# Copy compiled class file into container
COPY HelloWorld.class /app

CMD ["java", "HelloWorld"]

