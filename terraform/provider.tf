terraform {
  required_providers {
    rke = {
      source  = "rancher/rke"
      version = "1.4.3"
    }
  }
}

provider "rke" {
  # Configuration options
}
