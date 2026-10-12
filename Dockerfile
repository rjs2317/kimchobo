FROM amazoncorretto:11

WORKDIR /home/webgoat

COPY webgoat-server/target/webgoat-server-v8.2.0-SNAPSHOT.jar webgoat.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "webgoat.jar", "--server.address=0.0.0.0", "--server.port=8080"]