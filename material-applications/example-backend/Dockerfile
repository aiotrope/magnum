FROM golang:1.16-alpine

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:3000

ENV PORT=8080

COPY go.mod ./

COPY go.sum ./

COPY . .

RUN go build -o /server

EXPOSE 8080

CMD [ "/server" ]