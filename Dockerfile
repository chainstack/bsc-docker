FROM golang:1.16-alpine as builder

RUN apk add --no-cache make gcc musl-dev linux-headers git
RUN git clone --depth 1 --branch upgrade_1.10.2 https://github.com/binance-chain/bsc.git /bsc
RUN cd /bsc && make geth

FROM alpine:latest

RUN apk add --no-cache wget curl procps net-tools htop
COPY --from=builder /bsc/build/bin/geth /usr/local/bin/

ENTRYPOINT ["geth"]
