FROM maven:3.8.4-jdk-8
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello-war-hello
RUN mvn -f /tmp/boxfuse-sample-java-war-hello-war-hello/pom.xml package
FROM tomcat:9.0
RUN cp /tmp/boxfuse-sample-java-war-hello-war-hello/target/hello-*.war /usr/share/tomcat9/webapps/