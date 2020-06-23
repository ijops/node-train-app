FROM gradle:jdk8
WORKDIR /opt/
USER root
ADD . /opt/
RUN sudo ./gradlew build 
EXPOSE 3000
CMD ["./gradlew", "npm_start"]