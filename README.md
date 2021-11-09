# kubectl combo image

Matrix build with public image for various combinations of `kubectl`, `helm` and `kustomize` releases. Append to the list within [.gitlab-ci.yml](./.gitlab-ci.yml) to add new releases.

## Mirror

Repository upstream URL and builds: https://omi-gitlab.e-technik.uni-ulm.de/sv/kubectl

## Dockerhub

Dockerhub: https://hub.docker.com/r/inomi/kubectl-helm-kustomize

The container tag is structured as follows: `kubectl-version` \_ `kustomize-version` \_ `helm-version`
