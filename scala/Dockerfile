FROM openjdk:8-alpine
RUN apk update && apk add bash
RUN wget https://downloads.lightbend.com/scala/2.13.1/scala-2.13.1.tgz \
    && tar -xzf scala-2.13.1.tgz \
    && rm scala-2.13.1.tgz
COPY src /src
