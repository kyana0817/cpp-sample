# syntax=docker/dockerfile:1

FROM ubuntu:24.04
ARG UNAME=ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    sudo \
    build-essential \
    cmake \
    ninja-build \
    gdb \
    && rm -rf /var/lib/apt/lists/*

RUN echo "$UNAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers && \
    mkdir /workspace && \
    chown -R $UNAME:$UNAME /workspace


USER $UNAME
WORKDIR /workspace

CMD ["bash"]
