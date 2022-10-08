# Ansible Rancher and Kubernetes cluster setup

## K8s home lab environment

![image info](./diagrams/k8s-home-lab.svg)

## Prerequisites

- Ansible `remote_user` added to all hosts in `hosts.yml` file, with its ssh key added and ssh authentication enabled
- `Python3` and `ansible` installed on Control Node
- Following Ansible Galaxy collections on Control Node:
  - `ansible-galaxy collection install kubernetes.core`
  - `ansible-galaxy collection install community.kubernetes`
  - `ansible-galaxy collection install cloud.common`
- `terraform` installed on Control Node
- Once Rancher is installed, create an initial API key on the UI
- _Optional_: VSCode with Ansible and Terraform plugins

## Example usage

`ansible-playbook -i inventories/production/hosts.yml playbooks/<playbook>.yml`
