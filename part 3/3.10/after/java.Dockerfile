FROM amazoncorretto:8 AS builder

WORKDIR /usr/src/app

COPY "./spring-example-project" .

RUN ./mvnw package

FROM amazoncorretto:8-alpine-jre

EXPOSE 8080

COPY --from=builder /usr/src/app/target/docker-example-1.1.3.jar .

RUN adduser -S appuser && \
    chown appuser .

USER appuser

CMD ["java", "-jar", "./docker-example-1.1.3.jar"]