FROM --platform=${TARGETPLATFORM:-linux/amd64} golang:alpine
LABEL maintainer=antoinethebuilder

ARG TARGETPLATFORM
ARG BUILDPLATFORM

ENV SSL_CERT_DIR=/etc/ssl/certs

ARG USER=analyst
RUN apk add --no-cache --update sudo git build-base

RUN adduser -D $USER \
        && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
        && chmod 0440 /etc/sudoers.d/$USER

RUN go get -d github.com/VirusTotal/vt-cli/vt && cd /go/src/github.com/VirusTotal/vt-cli && make install

USER $USER
WORKDIR /opt

ENTRYPOINT [ "vt" ]
