FROM playingjoker/jdk1.8:latest

RUN mkdir -p /data/logs

ADD solo /webapp

ADD entrypoint.sh /webapp

EXPOSE 8800

VOLUME /data

CMD /webapp/entrypoint.sh
