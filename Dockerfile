FROM gradle:4.2.1-jdk8-alpine
WORKDIR /opt/
ADD . /opt/
USER root
RUN chown -R gradle /opt/
USER gradle 
RUN ./gradlew build --stacktrace
EXPOSE 3000
CMD ["./gradlew", "npm_start"]