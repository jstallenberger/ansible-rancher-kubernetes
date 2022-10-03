# Ansible Rancher and Kubernetes cluster setup

## Prerequisites

- `Python3` and `ansible` installed on Control Node
- Following Ansible Galaxy collections on Control Node:
  - `ansible-galaxy collection install kubernetes.core`
  - `ansible-galaxy collection install community.kubernetes`
  - `ansible-galaxy collection install cloud.common`
- Ansible `remote_user` added to all hosts in `hosts.yml` file, with its ssh key added and ssh authentication enabled

## Example usage

`ansible-playbook -i inventories/production/hosts.yml playbooks/<playbook>.yml`
