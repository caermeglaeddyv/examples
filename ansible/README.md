Ansible inventory and playbook examples
=========

Used to store example inventories and playbooks for different roles and projects


Requirements
------------

- provision virtual or physical hosts manually or using any provisioning tool by yourself or from some example from this repository
- change group_vars, host_vars with variables to satisfy your environment
- change ansible.cfg appropriate to your environment
- fill hosts.ini file with your own host names and IP addresses
- change example vault password to your own if needed
- run example of your own playbook

Already provided out values are optional to replace, but missing ones are required.


Kubernetes project
------------

For now, roles used in example playbook for kubernetes project, are tested with:
- Kubernetes versions ~ 1.14.10-1.15.10
- Ansible version >= 2.8.6
- CentOS version >= 7.6 (1803) (not 8)
- 3 separate hosts for etcd, 3 for control plane and 1 for node

After all requirements are satisfied, example playbook for Kubernetes project can be executed like this (from the same directory as this README):
```bash
ANSIBLE_CONFIG=inventories/kubernetes/ ansible-playbook playbooks/kubernetes/test-development.yml --tags all,never
```
add ```--ask-pass``` and ```--ask-become-pass``` if ansible and/or become user passwords are not provided inside variables.
First execution must be always done with adding ```--tags all,never```, which activates dangerous tasks like updating all packages to latest (```yum update```) or creating lvm devices etc. Beware or using ```never``` tag once again as it can break things in many cases.


Future plans
------------

- Add support for Ubuntu OS to Kubernetes project-related roles
- Add support for non-kubeadm deployments types of Kubernetes and Etcd roles
- Add support for more container runtimes
- Add support for more network addons
- Create role for Kubernetes CIS hardening
- Create roles for CentOS/Ubuntu CIS hardening
- Create examples for packer and terraform to deploy instances for Kubernetes project
- Create Terraform modules and example configurations for deploying instanses and provision roles related to Kubernetes project


License
-------

[Apache 2.0](https://github.com/caermeglaeddyv/ansible-role-rear/blob/dev/LICENSE)


Author Information
------------------

Copyright 2020 [caermeglaeddyv](https://github.com/caermeglaeddyv)
