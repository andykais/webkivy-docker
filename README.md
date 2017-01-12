# Webkivy docker container
this is a docker image to build webkivy according to whatever specifications you put in
buildozer.spec

# Requirements
- install [docker](https://www.docker.com/products/overview)

# Building webkivy
```bash
host-machine$ ./install.sh
# now plug in your android phone w/ USB debugging on 
host-machine$ ./start
# you are now inside the docker container
# run any buildozer commands

docker-container$ buildozer android_new debug deploy run
```
