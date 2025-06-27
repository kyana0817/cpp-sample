# syntax=docker/dockerfile:1

FROM ubuntu:24.04
ARG UNAME=ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    sudo \
    build-essential \
    cmake \
    ninja-build \
    gdb \
    clang \
    llvm \
    git \
    ca-certificates \
    libssl-dev \
    libcurl4-openssl-dev \
    uuid-dev \
    zlib1g-dev \
    libpulse-dev \
    && rm -rf /var/lib/apt/lists/*

RUN update-ca-certificates

RUN mkdir /workspace && \
    echo "$UNAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers&& \
    chown -R $UNAME:$UNAME /workspace

RUN mkdir /sdk && cd /sdk && \
    git clone --depth 1 --recurse-submodules https://github.com/aws/aws-sdk-cpp && \
    mkdir build && cd build && \
    cmake ../aws-sdk-cpp -DCMAKE_BUILD_TYPE=Debug -DCMAKE_PREFIX_PATH=/usr/local/ -DCMAKE_INSTALL_PREFIX=/usr/local/ \
    make && make install
    
    
USER $UNAME
WORKDIR /workspace

CMD ["bash"]

# References:
# https://github.com/ingomueller-net/docker-aws-sdk-cpp/blob/master/Dockerfile
