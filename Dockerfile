FROM debian:stable-slim

RUN apt-get update -y && apt-get install wget curl procps net-tools htop -y
RUN wget --no-check-certificate https://github.com/bnb-chain/bsc/releases/download/v1.3.8/geth_linux && chmod 744 geth_linux && mv geth_linux /usr/local/bin/geth

ENTRYPOINT ["geth"]
