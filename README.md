# Renovate Blueprint

---

- [Issue 29613](https://github.com/renovatebot/renovate/issues/23410)
- [Original request](https://github.com/renovatebot/renovate/pull/29613)
- [My pull request](https://github.com/renovatebot/renovate/pull/33272)

---

## Issue

### Current result

### Expected result

## Resources

### Commands

```
> aws eks describe-addon-versions --addon-name vpc-cni
> aws eks describe-addon-versions --addon-name vpc-cni | grep 1.19
> aws eks describe-addon-configuration --addon-name vpc-cni --addon-version 1.19.2
> aws eks describe-addon-versions --kubernetes-version "1.30" --addon-name kube-proxy --query 'addons[].addonVersions[].{AddonVersion:addonVersion, ClusterVersion:compatibilities[0].clusterVersion, DefaultVersion:compatibilities[0].defaultVersion}' --output table

```

### Renovate Docs

- [Example Exercises](./examples)
- [Useful info](./docs/Notes.md)
- [Configuration Options](https://docs.renovatebot.com/configuration-options/)

### Renovate somewhere similar Issues
