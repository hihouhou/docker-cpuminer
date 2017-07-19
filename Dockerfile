#
# minerd Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

# Update & install packages for installing hashcat
RUN apt-get update && \
    apt-get install -y make gcc git automake libcurl4-openssl-dev

#Install and configure hashcat
RUN git clone https://github.com/pooler/cpuminer.git && \
    cd cpuminer && \
    ./autogen.sh && \
    ./configure CFLAGS="-O3" && \
    make && \
    make install

#CMD ["/bin/bash""]
