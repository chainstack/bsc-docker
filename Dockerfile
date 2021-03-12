FROM debian:stable-slim

RUN apt-get update -y && apt-get install wget curl -y
RUN wget --no-check-certificate https://github.com/binance-chain/bsc/releases/download/v1.0.6/geth_linux && chmod 744 geth_linux && mv geth_linux /usr/local/bin/geth

ENTRYPOINT ["geth"]
