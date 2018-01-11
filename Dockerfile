FROM        docker.io/fedora:latest
MAINTAINER  vmindru

RUN yum install -y weechat
RUN yum install -y dtach

RUN mkdir -p /.weechat
VOLUME /.weechat
ENV DTACH_FILE /.weechat/weechat.dtach
CMD ["bash","-c","rm -f $DTACH_FILE; dtach -c $DTACH_FILE /usr/bin/weechat"]
