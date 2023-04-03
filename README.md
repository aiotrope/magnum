# magnum

DevOps using Docker and continuation of learning Containerization from FSO Part 12: Containers.

Date: 02.04.2023 

---

## Common CLI Commands

```bash
# run container (e.g. hello-world)
$ docker container run hello-world

# run container on detached mode (e.g. nginx)
$ docker container run -d nginx

# list all images
$ docker image ls

# list all running containers
$ docker container ls
$ docker ps

# list images
$ docker images

# pull from docker registry
$ docker image pull <image>

# list all running & stop containers
$ docker container ls -a
$ docker ps -as

# filter list of containers
$ docker container ls -a | grep <IMAGE>

# remove container by id
$ docker container rm <CONTAINER ID>

# remove all stop containers
$ docker container prune

# remove dangling images
$ docker image prune

# Remove volumes
$ docker volume prune

# remove containers & images
$ docker system prune -a

# Remove image
$ docker rmi <IMAGE ID>

# Remove container
$ docker rm <CONTAINER ID>

# run individual container
$ docker run <container_id>

# run container from image
$ docker container run <IMAGE>

# check logs
$ docker logs <container_id>

# stop running container
$ docker container stop <CONTAINER ID>
$ docker kill <CONTAINER ID>

# search for images
$ docker serach <IMAGE>

# build images from docker file from current dir with tag
$ docker build . -t <nominated_image_name>:<nominated_tag_or_version_identifier>
$ docker images
$ docker run -it <REPOSITORY>:<TAG> # run in integrated mode

# docker container prune && docker image prune && docker volume prune && docker system prune -a

```

### CLI Commands for exercise 1.3

```bash
# run devopsdockeruh/simple-web-service:ubuntu container
$ docker container run -d devopsdockeruh/simple-web-service:ubuntu
$ docker ps <OR> docker container ls

# enter inside the container
$ docker exec -it <CONTAINER ID> /bin/bash [OR] docker exec -it <CONTAINER ID> /bin/sh
$ ls && tail -f ./text.log
$ exit # to exit in linux shell
```

### CLI Commands for exercise 1.4

```bash
# run ubuntu image with process flags and renaming the process to looper-it
$ docker run -d --rm -it --name looper-it ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
$ docker ps <OR> docker container ls

# enter inside the container to install missing curl dependencies
$ docker exec -it <CONTAINER ID> /bin/bash [OR] docker exec -it <CONTAINER ID> /bin/sh
$ apt-get -y update; apt-get -y install curl
$ exit # to exit in linux shell

# check if the container is running
$ docker container ls

# attach the container and make a request
$ docker attach looper-it
```

### CLI Commands for exercise 1.7

```bash
# build images from docker file from current dir with tag
$ docker build . -t <nominated_image_name>:<nominated_tag_or_version_identifier>
$ docker images
$ docker run -it <REPOSITORY>:<TAG> # run in integrated mode
```

#### Script answers

```bash
$ script <FOLDER_NAME>/<FILE_NAME>
$ cntl C # exit from script command
```

- [Solution for exercise 1.1](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_1.txt)

- [Solution for exercise 1.2](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_2.txt)

- [Solution for exercise 1.3](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_3.txt)

- [Solution for exercise 1.4](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_4.txt)

- [Solution for exercise 1.5](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_5.txt)

- [Solution for exercise 1.6](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_6.txt)

- [Solution for exercise 1.7](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_7.txt)

