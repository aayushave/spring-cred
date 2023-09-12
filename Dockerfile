FROM eclipse-temurin:17-jdk-alpine as runtime
RUN mkdir -p /files/t1
COPY target/postgres-demo-0.0.1-SNAPSHOT.jar /files/t1/target.jar
WORKDIR /files/t1
# CMD ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000", "-javaagent:opentelemetry-javaagent.jar", "-Dotel.javaagent.debug=true" ,"-jar", "target.jar"]
CMD ["java", "-jar", "target.jar"]
