FROM openjdk:8

RUN apt-get update && apt-get -y install default-jre-headless 

RUN wget https://downloads.lightbend.com/scala/2.13.3/scala-2.13.3.deb \
    && dpkg -i scala-2.13.3.deb \
    && rm scala-2.13.3.deb

RUN mkdir /soot \
    && wget https://repo1.maven.org/maven2/org/soot-oss/soot/4.2.0/soot-4.2.0-jar-with-dependencies.jar \
    && mv soot-4.2.0-jar-with-dependencies.jar soot

COPY src /src

RUN cd src \
    && bash build.sh 

RUN java -cp /soot/soot-4.2.0-jar-with-dependencies.jar:/src/soot/ Runner -pp -cp /src/scala/ -allow-phantom-refs -app SimpleFolds -dump-cfg ALL

