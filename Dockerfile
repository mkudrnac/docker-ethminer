FROM nvidia/cuda:8.0-devel-ubuntu16.04

MAINTAINER Miroslav Kudrnac

WORKDIR /

RUN apt-get update \
    && apt-get update \
    && apt-get install -y git \
     cmake \
     build-essential

RUN git clone https://github.com/mkudrnac/ethminer \
    && cd ethminer \
    && mkdir build \
    && cd build \
    && cmake -DETHASHCL=OFF -DETHASHCUDA=ON -DETHSTRATUM=OFF -DCOMPUTE=61 .. \
    && cmake --build .

ENTRYPOINT ["/ethminer/build/ethminer/ethminer", "--farm-recheck", "200", "-U"]
