FROM docker.elastic.co/apm/apm-server:7.15.1
COPY apm-server.yml /usr/share/apm-server/apm-server.yml
USER root
RUN chown apm-server:apm-server /usr/share/apm-server/apm-server.yml
USER apm-server
