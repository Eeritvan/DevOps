FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY "./example-backend" .

RUN go build && \
    go clean -cache && \
    useradd -m appuser && \
    chown appuser .

USER appuser

CMD ["./server"]