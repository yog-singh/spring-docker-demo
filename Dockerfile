FROM maven:3.9.6-amazoncorretto-17-debian-bookworm AS BUILD_IMAGE
ENV APP_HOME=/root/dev/demo-app/
WORKDIR $APP_HOME
COPY . .
RUN mvn clean install

FROM openjdk:17
WORKDIR /root/
COPY --from=BUILD_IMAGE /root/dev/demo-app/target/demo-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]
