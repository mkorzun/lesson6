FROM maven:3.8.4-jdk-8 AS build
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello-war-hello
RUN mvn -f /tmp/boxfuse-sample-java-war-hello-war-hello/pom.xml clean package
FROM tomcat:9.0
COPY --from=build /tmp/boxfuse-sample-java-war-hello-war-hello/target/hello-*.war /usr/local/tomcat/webapps/