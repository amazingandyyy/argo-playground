# Argo Playground

This repository is using [argo-autopilot](https://argocd-autopilot.readthedocs.io/en/stable/Getting-Started/) to boostrap/operate ArgoCD on a Kubernetes cluster.

## SDLC

### Boostrap

```bash
export GIT_TOKEN=ghp_PcZ...IP0
export GIT_REPO=https://github.com/amazingandyyy/argo-playground
argocd-autopilot repo bootstrap --recover
```

### Create

```bash
argocd-autopilot project create <project-name>
argocd-autopilot app create <app-name> --app github.com/argoproj-labs/argocd-autopilot/examples/demo-app/ -p <project-name> --wait-timeout 2m
```


## Clean up

```bash
argocd-autopilot repo uninstall
```
