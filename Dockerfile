FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

# If it's a Spring Boot app
RUN ./gradlew build -x test

EXPOSE 8000
CMD ["java", "-jar", "build/libs/yourapp.jar"]
