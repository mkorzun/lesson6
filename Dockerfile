FROM maven:3.8.4-jdk-8
WORKDIR /app
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello-war-hello
RUN cd /tmp/boxfuse-sample-java-war-hello
RUN mvn package
FROM tomcat:9.0