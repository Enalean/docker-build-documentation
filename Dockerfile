FROM ubuntu:20.04

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ca-certificates python3-pip python3-setuptools rpm make file && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

ENV VERSION 1

VOLUME [ "/sources", "/output" ]
WORKDIR /sources
CMD [ "deps/bin/run.sh" ]
