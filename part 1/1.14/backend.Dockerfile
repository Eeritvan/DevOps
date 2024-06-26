FROM golang:1.16

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /usr/src/app

COPY "./example-backend" .

RUN go build

CMD ["./server"]