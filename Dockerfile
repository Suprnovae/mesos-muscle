FROM garland/mesosphere-docker-mesos-master

RUN echo "alias docker='docker -H /var/run/docker.sock'" >> ~/.bashrc
RUN echo date +"%Y/%m/%d %H:%M.%S" >> /tmp/start.time

ENTRYPOINT ["mesos-slave"]
