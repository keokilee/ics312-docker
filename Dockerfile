FROM ubuntu:xenial

RUN apt-get update && apt-get install -y nasm gcc-multilib make

