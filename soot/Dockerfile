FROM openjdk:8-alpine

RUN mkdir /soot \
    && wget https://repo1.maven.org/maven2/org/soot-oss/soot/4.2.0/soot-4.2.0-jar-with-dependencies.jar \
    && mv soot-4.2.0-jar-with-dependencies.jar soot

COPY Runner.java /soot
RUN cd /soot && javac -cp soot-4.2.0-jar-with-dependencies.jar Runner.java

