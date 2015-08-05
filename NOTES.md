# Troubleshooting

## No Diskspace
Just started the mech again and noticed that there is no disk space left after
reviewing the output of `dmesg`.

Running `sudo docker ps -a` makes it clear that none of my containers are 
aloft. Running `df -h` confirms the system is out of diskspace and 
`du -Sh | sort -rh | head -n 15` pinpoints `/var/lib/docker/tmp` as the culprit.

[#14506](https://github.com/docker/docker/issues/14506)
[#14389](https://github.com/docker/docker/issues/14389)

The intermediate images produced by docker to get the containers up may take 
quite some disk space. Remove untagged images by running the following:

```bash
docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')
```

Stopped containers

```bash
docker rm $(docker ps -a -q)
```

[Remove Untagged Images From Docker](http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html)
