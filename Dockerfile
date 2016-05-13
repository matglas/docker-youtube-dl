FROM ubuntu:14.04

RUN apt-get update
RUn apt-get install git curl python -y
RUN sudo curl https://yt-dl.org/downloads/2016.05.01/youtube-dl -o /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:mc3man/trusty-media && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install ffmpeg -y

WORKDIR /media-output
