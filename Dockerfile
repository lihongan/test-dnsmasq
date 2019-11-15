FROM alpine:latest
LABEL maintainer "hongli@redhat.com"

RUN apk --no-cache add dnsmasq

EXPOSE 53/tcp
EXPOSE 53/udp

COPY dnsmasq.conf /etc/dnsmasq.conf

CMD ["dnsmasq", "--no-daemon"]
