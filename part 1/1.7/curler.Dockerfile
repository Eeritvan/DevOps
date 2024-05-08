FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY script.sh .

RUN apt-get update && apt-get install -y curl

CMD ./script.sh