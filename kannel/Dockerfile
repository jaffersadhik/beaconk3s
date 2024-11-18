# Use a base image with necessary tools (Debian or Ubuntu)
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package manager and install dependencies
RUN apt-get update && apt-get install -y \
    redis-server \
    wget \
    bison \
    build-essential \
    libxml2-dev \
    libpcre3-dev \
    libssl-dev \
    zlib1g-dev \
    libtool \
    autoconf \
    automake \
    git \
    supervisor && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /opt/redis
WORKDIR /opt/redis
COPY hiredis /opt/redis/hiredis
WORKDIR /opt/redis/hiredis
RUN make
RUN make install

# Install Kannel
RUN mkdir -p /opt/kannel
WORKDIR /opt/kannel
COPY gateway-1.4.4.tar.gz /opt/kannel/gateway-1.4.4.tar.gz
RUN tar -xvf gateway-1.4.4.tar.gz 
WORKDIR /opt/kannel/gateway-1.4.4
#RUN pwd
RUN ./configure --prefix=/opt/kannel --with-redis --with-redis-dir=/opt/redis/hiredis
RUN make
RUN make install

# Configure Kannel and Redis directories
RUN mkdir -p /etc/kannel /var/log/kannel /var/spool/kannel && \
    mkdir -p /data/redis
