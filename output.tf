output "name" {
  value = kubernetes_namespace_v1.this.metadata[0].name
}

output "max_pods" {
  value = kubernetes_resource_quota_v1.pod_limit.spec[0].hard.pods
}