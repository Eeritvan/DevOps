FROM golang:1.16 AS build

WORKDIR /usr/src/app

COPY "./example-backend" .

RUN CGO_ENABLED=0 go build -o /server



FROM scratch

EXPOSE 8080

WORKDIR /app

COPY --from=build /server .

CMD ["./server"]