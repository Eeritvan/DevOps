FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY "./example-backend" .

RUN go build

RUN adduser -S appuser
RUN chown appuser .
USER appuser

CMD ["./server"]