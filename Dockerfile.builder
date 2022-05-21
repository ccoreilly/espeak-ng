FROM debian:bullseye-slim

RUN apt-get update \
    && apt-get install -y \
    make autoconf automake libtool pkg-config \
    gcc g++ \
    libsonic-dev \
    ronn \
    kramdown \
    libpcaudio-dev