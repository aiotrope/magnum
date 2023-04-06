# runic

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
