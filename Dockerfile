FROM openjdk:8u151-jdk

RUN apt-get update && \
    apt-get -y install build-essential

COPY src /src
COPY cpp /cpp
COPY build.sh /build.sh
COPY run.sh /run.sh

RUN cd /

RUN sh build.sh