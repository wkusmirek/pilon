FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && apt-get -y install \
    openjdk-8-jre python3 unzip wget

WORKDIR /NGStools/
RUN wget https://github.com/broadinstitute/pilon/releases/download/v1.22/pilon-1.22.jar

RUN chmod 744 pilon-1.22.jar
