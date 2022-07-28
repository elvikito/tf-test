resource "digitalocean_kubernetes_cluster" "eramirez" {
  name    = "kubernetes"
  region  = "nyc1"
  version = "1.23.9-do.0"

  node_pool {
    name       = "eramirez-nodes"
    size       = "s-1vcpu-2gb"
    node_count = 2
  }
}
