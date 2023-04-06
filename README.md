# magnum

DevOps using Docker and continuation of learning Containerization from FSO Part 12: Containers.

Date: 02.04.2023 - 06.04.2023

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
$ docker image rm <REPOSITORY>:<TAG>
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

#### Answer links

- Answers to the exercises can be found in this [directory](https://github.com/aiotrope/magnum/tree/main/script-answers) and labelled corresponds to the module exercise number.

```bash
$ script <FOLDER_NAME>/<FILE_NAME>
$ cntl C # exit from script command
```

- [Solution for exercise 1.1](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_1.txt) — script

- [Solution for exercise 1.2](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_2.txt) — script

- [Solution for exercise 1.3](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_3.txt) — script

- [Solution for exercise 1.4](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_4.txt) — script

- [Solution for exercise 1.5](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_5.txt) — script

- [Solution for exercise 1.6](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_6.txt) — script

##### Solution for exercise 1.7

- [Branch 1.7](https://github.com/aiotrope/magnum/blob/1.7/Dockerfile) — Dockerfile

- [Solution for exercise 1.7](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_7.txt) — script

##### Solution for exercise 1.8

- [Branch 1.8](https://github.com/aiotrope/magnum/blob/1.8/Dockerfile) — Dockerfile

- [Solution for exercise 1.8](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_8.txt) — script

##### Solution for exercise 1.9

- [Branch 1.9](https://github.com/aiotrope/magnum/blob/1.9/text.log) — text.log

- [Solution for exercise 1.9](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_9.txt) — script

##### Solution for exercise 1.10

- [Branch 1.10](https://github.com/aiotrope/magnum/blob/1.10/Dockerfile) — Dockerfile

- [Solution for exercise 1.10](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_10.txt) — script

##### Solution for exercise 1.11

- [Branch 1.11](https://github.com/aiotrope/magnum/tree/1.11/material-applications/spring-example-project/Dockerfile) — Dockerfile

- [Solution for exercise 1.11](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_11.txt) — script (View raw)

##### Solution for exercise 1.12

- [Branch 1.12](https://github.com/aiotrope/magnum/tree/1.12/material-applications/example-frontend/Dockerfile) — Dockerfile

- [Solution for exercise 1.12](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_12.txt) — script (View raw)

##### Solution for exercise 1.13

- [Branch 1.13](https://github.com/aiotrope/magnum/tree/1.13/material-applications/example-backend/Dockerfile) — Dockerfile

- [Solution for exercise 1.13](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_13.txt) — script

##### Solution for exercise 1.14

- [Branch 1.14](https://github.com/aiotrope/magnum/tree/1.14/material-applications/example-frontend/Dockerfile) — Dockerfile

- [Solution for exercise 1.14](https://github.com/aiotrope/magnum/blob/main/script-answers/exercise1_14.txt) — script

##### Solution for exercise 1.15

Project directory: [https://github.com/aiotrope/magnum/tree/main/runic](https://github.com/aiotrope/magnum/tree/main/runic)

Project built using [this code repository](https://github.com/aiotrope/passlist) Phonebook exercise project created for the course in [Full Stack Open Part 5: Testing React Apps](https://fullstackopen.com/en/part5).

###### CLI Commands used for this project

```bash
# Backend & Frontend App

# generate express app using express-generator
$ express --view=ejs backend

# generate react app
$ yarn create react-app frontend .

# run backend dev server at port:8000
$ yarn dev

# run production build at port:8000
$ yarn start

# run frontend dev server at port:3000
$ cd frontend && yarn run start

# build static assets
$ yarn build

# format code
$ yarn prettier

# lint code
$ yarn eslint

# run in test environment
$ yarn start:test

# run backend unit test
$ yarn test

# run e2e test
$ yarn test:e2e

# Docker

# build image with version tag
$ docker build -t aiotrope/runic:v1.0.0 .

# list images
$ docker images

# run the containerized app at port 8000
$ docker run --publish 8000:8000 aiotrope/runic:v1.0.0

# execute inside the container
$ docker ps
$ docker exec -it <CONTAINER ID> /bin/sh

# stop running container
$ docker container stop <CONTAINER ID>

# push tag to docker hub
$ docker push aiotrope/runic:v1.0.0

```

- Docker hub repository: [https://hub.docker.com/r/aiotrope/runic](https://hub.docker.com/r/aiotrope/runic)

- [Branch 1.15](https://github.com/aiotrope/magnum/tree/1.15/runic/Dockerfile) — Dockerfile
