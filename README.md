# test-public-chart-repo

```bash
helm repo add --force-update \
    test-public-chart-repo https://raw.githubusercontent.com/kopiczko/test-public-chart-repo/main
```

```bash
helm install test-release test-public-chart-repo/mychart
```
