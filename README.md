# Ansible Rancher and Kubernetes cluster setup

## Prerequisites

- `Python` and `ansible` installed on Control Node
- Ansible `remote_user` added to all hosts in `hosts.yml` with its ssh key and ssh authentication enabled

## Example usage

`ansible-playbook -i inventories/production/hosts.yml playbooks/<playbook>.yml`
