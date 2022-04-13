FROM ubuntu:20.04

ARG shared_workspace=/opt/data

# Turn off interactive mode
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y python3 openjdk-8-jdk 

RUN mkdir -p ${shared_workspace}

ENV SHARED_WORKSPACE=${shared_workspace}

VOLUME ${shared_workspace}
