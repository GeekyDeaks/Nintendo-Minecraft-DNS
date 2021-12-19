FROM alpine:latest

RUN apk add --no-cache bash dnsmasq
COPY dnsmasq.conf /etc/
ENTRYPOINT ["dnsmasq", "--no-daemon"]
