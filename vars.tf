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

variable "max_pods" {
  description = "maximum number of pods allowed in the namespace"
  type        = number
  default     = 100
}