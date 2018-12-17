FROM ubuntu:16.04

RUN echo "==> Update"  && \
    apt-get update && \
	apt-get install -y bsdmainutils && \
	apt-get install -y nasm && \
	apt-get install -y vim

ENV MOUNT_POINT /app

RUN echo "==> Creating the mount point" && \
    mkdir -p $MOUNT_POINT
