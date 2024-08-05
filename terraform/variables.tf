variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes Version"
  type        = string
}

variable "dns_provider" {
  description = "DNS Provider"
  type        = string
  default     = "coredns"
}

variable "dns_node_selector" {
  description = "Labels of the node to run the DNS pods on"
  type        = map(string)
  default     = {}
}

variable "network_plugin" {
  description = "Network Plugin to use"
  type        = string
  default     = "none"
}

variable "nodes" {
  description = "Nodes with their configuration"
  type        = any
}
