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

#### Script answers

```bash
$ script <FOLDER_NAME>/<FILE_NAME>
$ cntl C # exit from script command
```

- [Solution for exercise 1.1](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_1.txt)

- [Solution for exercise 1.2](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_2.txt)

- [Solution for exercise 1.3](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_3.txt)

