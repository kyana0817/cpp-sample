# syntax=docker/dockerfile:1

FROM ubuntu:24.04
ARG UNAME=ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    ninja-build \
    gdb \
    clang \
    git \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN update-ca-certificates

RUN mkdir /workspace && \
    chown -R $UNAME:$UNAME /workspace


USER $UNAME
WORKDIR /workspace

CMD ["bash"]
