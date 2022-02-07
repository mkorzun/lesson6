FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN set -x \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt update -y \
    && apt install -y default-jdk tomcat9 maven git \
    && mkdir /usr/share/tomcat9/logs \
    && ln -s /var/lib/tomcat9/webapps /usr/share/tomcat9 \
    && mkdir /usr/share/tomcat9/temp \
    && mkdir /usr/share/tomcat9/conf \
    && cp -R /etc/tomcat9/* /usr/share/tomcat9/conf \
    && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello \
    && mvn -f /tmp/boxfuse-sample-java-war-hello/pom.xml package \
    && cp /tmp/boxfuse-sample-java-war-hello/target/hello-*.war /usr/share/tomcat9/webapps \
    && apt remove --purge --auto-remove -y

