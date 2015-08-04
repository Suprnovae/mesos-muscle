FROM garland/mesosphere-docker-mesos-master

RUN alias docker='docker -H /var/run/docker.sock'
RUN echo date +"%Y/%m/%d %H:%M.%S" >> /tmp/start.time

ENTRYPOINT ["mesos-slave"]
