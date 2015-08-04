FROM garland/mesosphere-docker-mesos-master

MAINTAINER David Asabina <david@supr.nu>

RUN date +"%Y/%m/%d %H:%M.%S" >> /tmp/start.time
RUN apt-get update; apt-get upgrade -y
RUN apt-get -y install docker.io
RUN echo "alias docker='docker -H /var/run/docker.sock'" >> ~/.bashrc
RUN docker --version >> /tmp/docker.version

ENTRYPOINT ["mesos-slave"]
