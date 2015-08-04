FROM garland/mesosphere-docker-mesos-master

RUN date +"%Y/%m/%d %H:%M.%S" >> /tmp/start.time
RUN apt-get -y install docker.io
RUN echo "alias docker='docker -H /var/run/docker.sock'" >> ~/.bashrc
RUN docker --version >> /tmp/docker.version

ENTRYPOINT ["mesos-slave"]
