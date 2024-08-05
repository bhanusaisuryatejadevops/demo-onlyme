resource "rke_cluster" "main" {

  cluster_name          = var.cluster_name
  kubernetes_version    = var.kubernetes_version
  ignore_docker_version = true
  enable_cri_dockerd    = true

  dns {
    provider      = var.dns_provider
    node_selector = var.dns_node_selector
  }

  dynamic "network" {
    for_each = var.network_plugin != null ? [1] : []
    content {
      plugin = var.network_plugin
    }
  }

  dynamic "nodes" {
    for_each = var.nodes
    content {
      address           = nodes.value.ip_address
      user              = nodes.value.user
      role              = nodes.value.role
      ssh_key           = file(nodes.value.ssh_key_path)
      labels            = nodes.value.labels
      hostname_override = nodes.value.hostname_override
    }
  }

  ingress {
    provider = "none"
  }

}
