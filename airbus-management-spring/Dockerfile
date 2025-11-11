## Build stage
FROM maven:3.8.7-eclipse-temurin-8 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q -DskipTests package

## Runtime stage
FROM eclipse-temurin:8-jre
WORKDIR /app
ENV JAVA_OPTS=""
COPY --from=build /app/target/airbus-management-spring-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar /app/app.jar"]


