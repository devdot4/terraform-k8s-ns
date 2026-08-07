variable "name" {
  description = "namespace name in k8s"
  type        = string
  default     = "demo"
}

variable "labels" {
  description = "labels to be used on namespace"
  type        = map(string)
  default = {
    mylabel = "label-value"
  }
}

variable "annotations" {
  description = "annotations to be used on namespace"
  type        = map(string)
  default = {
    mylabel = "label-value"
  }
}