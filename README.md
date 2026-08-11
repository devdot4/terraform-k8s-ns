## Usage
### Please copy/paste code below:

```
module ns-demo {
    source      = "devdot4/ns/k8s"
    name.       = "demo-ns"
    annotations = {
        mylabel = "label-value"
    }
    labels      = {
        mylabel = "label-value"
    }
    name        = {
        mylabel = "label-value"
    }
    max_pods    = 100
}
```

### Run
```
terraform init
terraform apply
```

## Pod limit

Every namespace created by this module gets a `ResourceQuota` capping the number of pods that can run in it. The limit defaults to **100 pods** via the `max_pods` variable — override it per-namespace if a different limit is needed.

Once a namespace hits its pod limit, Kubernetes itself rejects any further pod creation attempts (via kubectl, a Deployment, a CI pipeline, etc.) with a quota-exceeded error — no extra tooling required.