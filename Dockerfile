# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy any .war file from the current directory into the image
COPY *.war app.war

# Expose the port your application listens on (change to your application's port)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.war"]
