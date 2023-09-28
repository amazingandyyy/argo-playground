#?/bin/bash

# Usage
# export GIT_TOKEN=ghp_osvb6JgDxxx
# recover.sh

export GIT_REPO=https://github.com/amazingandyyy/argo-playground
argocd-autopilot repo bootstrap --recover
kubectl port-forward -n argocd svc/argocd-server 8080:80 & \
open http://localhost:8080
