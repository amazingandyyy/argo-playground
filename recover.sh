#?/bin/bash

# Usage
# recover.sh

minikube delete
minikube start --memory=16384 --cpus=4 --kubernetes-version=v1.27.3
minikube addons enable ingress
sudo minikube tunnel --cleanup
