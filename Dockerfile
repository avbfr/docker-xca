FROM ubuntu:latest
MAINTAINER Alexandre VIAL-BOUKOBZA

ENV DISPLAY :0
ENV DEBIAN_FRONTEND noninteractive

RUN useradd xca
RUN apt-get -y update
RUN apt-get install -y xca

USER xca
WORKDIR /home/xca
ENTRYPOINT ["/usr/bin/xca"]
