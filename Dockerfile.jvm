FROM maven:3.6-slim as build

COPY . /usr/src/app

WORKDIR usr/src/app

RUN mvn clean package

FROM fabric8/java-jboss-openjdk8-jdk

MAINTAINER pierre-yves.aillet@zenika.com

ENV JAVA_OPTIONS=-Dquarkus.http.host=0.0.0.0

COPY --from=build /usr/src/app/target/lib/* /deployments/lib/
COPY --from=build /usr/src/app/target/*-runner.jar /deployments/app.jar

ENTRYPOINT [ "/deployments/run-java.sh" ]