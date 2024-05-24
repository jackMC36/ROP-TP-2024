FROM debian:bullseye-slim

# Update package repositories and install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    clang \
    libc6-dev \
    python3-pip \
    gdb \
    nano \
    vim

COPY src /root/src

# Install Python packages
RUN python3 -m pip install \
    capstone \
    pwntools

WORKDIR /root

ENTRYPOINT ["/bin/bash"]