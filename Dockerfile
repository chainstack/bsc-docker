FROM frolvlad/alpine-glibc
RUN wget --no-check-certificate https://github.com/binance-chain/bsc/releases/download/v1.0.6/geth_linux
RUN chmod 744 geth_linux
RUN mv geth_linux /usr/local/bin/geth
ENTRYPOINT ["/usr/local/bin/geth"]
