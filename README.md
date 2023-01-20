# test-public-chart-repo

## General usage

```bash
helm repo add --force-update \
    test-public-chart-repo https://raw.githubusercontent.com/kopiczko/test-public-chart-repo/main/
```

```bash
helm install test-release test-public-chart-repo/mychart
```

## With @giantswarm App Platform

```yaml
apiVersion: application.giantswarm.io/v1alpha1
kind: Catalog
metadata:
  name: kopiczko-test-public-chart-repo
  namespace: default
spec:
  description: "Test public catalog."
  logoURL: /does/not/exist.png
  repositories:
    - URL: "https://raw.githubusercontent.com/kopiczko/test-public-chart-repo/main/"
      type: "helm"
  storage:
    URL: "https://raw.githubusercontent.com/kopiczko/test-public-chart-repo/main/"
    type: "helm"
  title: "Test kopiczko/test-public-chart-repo repository"
```

```yaml
apiVersion: application.giantswarm.io/v1alpha1
kind: App
metadata:
  name: kopiczko-test
  namespace: default
  labels:
      app-operator.giantswarm.io/version: 0.0.0
spec:
  name: mychart
  namespace: org-multi-project
  catalog: kopiczko-test-public-chart-repo
  version: 0.1.0
  kubeConfig:
    inCluster: true
  #userConfig:
  #  configMap:
  #    name: pawe1-user-values
  #    namespace: org-multi-project
```
