variable "name" {
  description = "namespace name in k8s"
  type        = string
  default     = "demo"
}

variable "max_pods" {
  description = "maximum number of pods allowed in the namespace"
  type        = number
  default     = 100
}