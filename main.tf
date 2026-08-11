resource "kubernetes_namespace_v1" "this" {
  metadata {
    name = var.name
  }
}

resource "kubernetes_resource_quota_v1" "this" {
  metadata {
    name      = "${var.name}-pod-limit"
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }

  spec {
    hard = {
      pods = var.max_pods
    }
  }
}
