terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "{{ tf_rancher_provider_version }}"
    }
  }
}

provider "rancher2" {
  api_url    = "{{ tf_rancher_api }}"
  access_key = var.rancher2_access_key
  secret_key = var.rancher2_secret_key
}

resource "rancher2_cluster_v2" "{{ tf_rke2_cluster_name }}" {
  name = "{{ tf_rke2_cluster_name }}"
  fleet_namespace = "fleet-ns"
  kubernetes_version = "{{ tf_rke2_version }}"
  enable_network_policy = false
  default_cluster_role_for_project_members = "user"
}

output "cluster_registration_token" {
  value       = rancher2_cluster_v2.{{ tf_rke2_cluster_name }}.cluster_registration_token
  description = "Cluster registration token"
  sensitive   = true
}
