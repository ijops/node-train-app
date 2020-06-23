FROM gradle:jdk8
WORKDIR /opt/
ADD . /opt/
USER root
RUN chown -R gradle /opt/
USER gradle 
RUN ./gradlew build --stacktrace
EXPOSE 3000
CMD ["./gradlew", "npm_start"]