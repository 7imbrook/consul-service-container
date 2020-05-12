![Helm Publish](https://github.com/7imbrook/consul-service-container/workflows/Helm%20Publish/badge.svg)
# Consul Service Container
Deploy a helm chart with a consul agent and side car running inside the container for service mesh

basic example

```
# values.yaml

image:
    repository: nginx
```

Release web service
```
helm install web -f ./values.yaml
```

```
# values-prerelease.yaml

image:
    repository: nginx
serviceNameOverride: web
additionalServiceTags:
    - prerelease
```

Release web service
```
helm install web-prerelease -f ./values-prerelease.yaml
```

you now have a single service web in consul, but a a prereleased tagged version deployed via help.

You can now use traffic splitting and such for testing/release

# TODO

- [] Add acl binding-rules needed to make this work
- [] Add role needed for binding as well as server example
- [] make these things code somewhere else