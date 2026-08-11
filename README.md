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

Namespaces created by this module are capped at 100 pods (`max_pods` var, change it if you need a different number). It's just a `ResourceQuota` under the hood, so k8s handles the rejecting once you hit the cap.