output "cluster_kubeconfig" {
  value     = rke_cluster.main.kube_config_yaml
  sensitive = true
}
