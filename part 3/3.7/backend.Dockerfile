FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY "./example-backend" .

RUN go build && \
    go clean -cache && \
    adduser -S appuser && \
    chown appuser .

USER appuser

CMD ["./server"]