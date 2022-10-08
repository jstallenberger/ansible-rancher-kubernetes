provider "rancher2" {
  api_url    = "https://192.168.1.98.sslip.io/v3"
  access_key = var.rancher2_access_key
  secret_key = var.rancher2_secret_key
}

resource "rancher2_cluster_v2" "foo" {
  name = "foo"
  fleet_namespace = "fleet-ns"
  kubernetes_version = "v1.21.4+rke2r2"
  enable_network_policy = false
  default_cluster_role_for_project_members = "user"
}
