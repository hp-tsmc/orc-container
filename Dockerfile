FROM ubuntu:20.04
WORKDIR /usr/local/orchestrator
COPY orchestrator ./
WORKDIR /etc/systemd/system
COPY orchestrator.service ./
WORKDIR /conf
COPY orchestrator.conf.json ./
EXPOSE 3000