FROM alpine:3.14

ARG RELEASE

RUN apk add -U git curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$RELEASE/bin/linux/amd64/kubectl
RUN mv kubectl /usr/bin/kubectl && chmod +x /usr/bin/kubectl

