# small linux image distro
FROM ubuntu:20.04

# workdir
WORKDIR /usr/src/app

COPY request.sh .

RUN apt-get update && apt-get -y install curl

RUN chmod +x request.sh

CMD ./request.sh