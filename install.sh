#! /bin/bash

function install_kubectl() {
    echo "Installing kubectl $1"
    curl -LOs https://storage.googleapis.com/kubernetes-release/release/${1}/bin/linux/amd64/kubectl
    mv kubectl /usr/bin/kubectl && chmod +x /usr/bin/kubectl
}

function install_helm() {
    echo "Installing helm $1"
    curl -Ls https://get.helm.sh/helm-${1}-linux-amd64.tar.gz | tar --strip-components=1 -zxvf -
    mv helm /usr/bin/helm
    
}

function install_kustomize() {
    echo "Installing kustomize $1"
    curl -Ls https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${1}/kustomize_${1}_linux_amd64.tar.gz | tar -zxvf -
    mv kustomize /usr/bin/kustomize
}

install_helm ${RELEASE_HELM}
install_kustomize ${RELEASE_KUSTOMIZE}
install_kubectl ${RELEASE_KUBECTL}
