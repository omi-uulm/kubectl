FROM alpine:3.14

ARG RELEASE_KUBECTL
ARG RELEASE_HELM
ARG RELEASE_KUSTOMIZE

ADD install.sh /install.sh
RUN apk add -U git curl bash
RUN /install.sh 

# docker build -t kkk --build-arg RELEASE_HELM=v3.7.1 --build-arg RELEASE_KUSTOMIZE=v4.4.0 --build-arg RELEASE_KUBECTL=v1.22.2 .