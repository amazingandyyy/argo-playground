# Argo Playground

This repository is using [argo-autopilot](https://argocd-autopilot.readthedocs.io/en/stable/Getting-Started/) to boostrap/operate ArgoCD on a Kubernetes cluster.

## Prerequisites

- [minikube](https://minikube.sigs.k8s.io/docs/start/)

## SDLC

### Boostrap

```bash
export GIT_TOKEN=ghp_PcZ...IP0
export GIT_REPO=https://github.com/amazingandyyy/argo-playground
./recover.sh
```

### Create New Apps

```bash
argocd-autopilot project create <project-name>
argocd-autopilot app create <app-name> --app github.com/argoproj-labs/argocd-autopilot/examples/demo-app/ -p <project-name> --wait-timeout 2m
```

## Start ArgoCD
  
  ```bash
  ./start-argo.sh
  ```

## Clean up

```bash
argocd-autopilot repo uninstall
```
