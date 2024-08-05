cluster_name = "cluster-1"

kubernetes_version = "v1.26.9-rancher1-1"

dns_provider = "coredns"

dns_node_selector = {}

nodes = [{
  ip_address        = "10.2.1.180"
  user              = "infracloud"
  role              = ["controlplane", "etcd"]
  ssh_key_path      = "/home/infracloud/testkey/vm0/vm0key"
  hostname_override = "master-1"
  labels            = {}
  },
  {
    ip_address        = "10.2.1.181"
    user              = "infracloud"
    role              = ["controlplane", "etcd"]
    ssh_key_path      = "/home/infracloud/testkey/vm1/vm1key"
    hostname_override = "master-2"
    labels            = {}
  },
  {
    ip_address        = "10.2.1.182"
    user              = "infracloud"
    role              = ["controlplane", "etcd"]
    ssh_key_path      = "/home/infracloud/testkey/vm2/vm2key"
    hostname_override = "master-3"
    labels            = {}
  },
  {
    ip_address        = "10.2.1.183"
    user              = "infracloud"
    role              = ["worker"]
    ssh_key_path      = "/home/infracloud/testkey/vm3/vm3key"
    hostname_override = "worker-1"
    labels            = {}
  },
  {
    ip_address        = "10.2.1.184"
    user              = "infracloud"
    role              = ["worker"]
    ssh_key_path      = "/home/infracloud/testkey/vm4/vm4key"
    hostname_override = "worker-2"
    labels            = {}
  },
  {
    ip_address        = "10.2.1.185"
    user              = "infracloud"
    role              = ["worker"]
    ssh_key_path      = "/home/infracloud/testkey/vm5/vm5key"
    hostname_override = "worker-3"
    labels            = {}
  },
  {
    ip_address        = "10.2.1.186"
    user              = "infracloud"
    role              = ["worker"]
    ssh_key_path      = "/home/infracloud/testkey/vm6/vm6key"
    hostname_override = "worker-4"
    labels            = {}
  }
]

