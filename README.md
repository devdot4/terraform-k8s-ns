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
}
```

### Run
```
terraform init
terraform apply
```