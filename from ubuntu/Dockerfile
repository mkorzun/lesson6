FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN set -x \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt update -y && apt install -y default-jdk tomcat9 maven git && apt remove --purge --auto-remove -y \
    && mkdir /usr/share/tomcat9/{logs,temp,conf} \
    && ln -s /var/lib/tomcat9/webapps /usr/share/tomcat9 \
    && cp -R /etc/tomcat9/* /usr/share/tomcat9/conf
RUN set -x \
    && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello \
    && mvn -f /tmp/boxfuse-sample-java-war-hello/pom.xml clean package \
    && mv /tmp/boxfuse-sample-java-war-hello/target/hello-*.war /usr/share/tomcat9/webapps
EXPOSE 8080
CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]
