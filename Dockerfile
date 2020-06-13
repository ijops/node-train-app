FROM gradle:jdk8
WORKDIR /opt/
USER node
ADD . /opt/
RUN ./gradlew build
EXPOSE 3000
CMD ["./gradlew", "npm_start"]