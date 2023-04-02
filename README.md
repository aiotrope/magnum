# magnum

DevOps using Docker and continuation of learning Containerization from FSO Part 12: Containers.

Date: 02.04.2023 

---

## CLI Commands

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

# check logs
$ docker logs <container_id>

# stop running container
$ docker container stop <CONTAINER ID>
$ docker kill <CONTAINER ID>

```

### Script answers

- [Solution for exercise 1.1](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_1.txt)

- [Solution for exercise 1.2](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_2.txt)

