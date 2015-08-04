# Mesos Muscle

Mesos makes dealing with the cloud's spaghetti monster a bit easier. In order 
to allow the starting of Docker jobs through Marathon, a _Mesos slave_ image
was needed that uses a socket to relay any docker related commands to the 
upper dream level :wink:

<iframe src="//giphy.com/embed/umtcpyAgXa3aE" width="480" height="312" frameBorder="0" style="max-width: 100%" class="giphy-embed" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

There are posts online describing how to start a 
[Mesos cluster using Docker][mesos-docker]. Use the [garland](https://registry.hub.docker.com/u/garland)
images and use the mesos-muscle image instead of whatever the documentation 
recommends you to use for the slave.

[mesos-docker]: https://medium.com/@gargar454/deploy-a-mesos-cluster-with-7-commands-using-docker-57951e020586
