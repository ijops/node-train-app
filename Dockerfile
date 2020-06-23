FROM gradle:jdk8
WORKDIR /opt/
USER root
ADD . /opt/
RUN chown -R gradle /opt/
USER gradle 
RUN ./gradlew build --stacktrace
EXPOSE 3000
CMD ["./gradlew", "npm_start"]