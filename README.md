## Usage

Add this code to your tf file to start making this namespace module.

```tf
module ns-demo {
    source      = "devdot4/ns/k8s"
    name        = "demo-ns"
    max_pods    = 100
}
```

## Run
Make sure to run these commands to initialize and create the module.

```bash
terraform init
terraform apply
```

## Pod limit
Namespaces created by this module are capped at 100 pods (`max_pods` var, change it if you need a different number). It's just a `ResourceQuota` under the hood, so k8s handles the rejecting once you hit the cap.

## Outputs
| Name | Description |
|------|-------------|
| name | name of the created namespace |
| max_pods | pod limit enforced on the namespace |
