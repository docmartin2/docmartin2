FROM alpine:3.4

RUN apk --update add openjdk7 \
    && cd / \
    && wget http://apache.mindstudios.com/tomcat/tomcat-8/v8.0.38/bin/apache-tomcat-8.0.38.tar.gz \
    && tar zxf /apache-tomcat-8.0.38.tar.gz \
    && rm -f /apache-tomcat-8.0.38.tar.gz \
    && mkdir /apache-tomcat-8.0.38/webapps/test \
    && echo "formation docker" > /apache-tomcat-8.0.38/webapps/test/index.html

VOLUME "/apache-tomcat-8.0.38/webapps/test"

EXPOSE 8080

CMD ["run"]

ENTRYPOINT ["/apache-tomcat-8.0.38/bin/catalina.sh"]






