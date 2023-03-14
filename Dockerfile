FROM debian:stable-slim

RUN apt-get update -y && apt-get install wget curl procps net-tools htop -y && rm -rf /var/lib/apt/lists/*
RUN wget -O /usr/local/bin/geth https://github.com/binance-chain/bsc/releases/download/v1.1.19/geth_linux && chmod 744 /usr/local/bin/geth

ENTRYPOINT ["geth"]
