# Build a Kubernetes cluster using K3s via Ansible

Easily bring up a cluster on machines running:

- [X] Ubuntu

on processor architectures:

- [X] x64
- [X] arm64
- [X] armhf

## System requirements

The control node **must** have Ansible 8.0+ (ansible-core 2.15+)

All managed nodes in inventory must have:
- Passwordless SSH access
- Root access (or a user with equivalent permissions) 

It is also recommended that all managed nodes disable firewalls and swap. See [K3s Requirements](https://docs.k3s.io/installation/requirements) for more information.

## Usage

Second edit the inventory file to match your cluster setup. For example:
```bash
k3s_cluster:
  children:
    server:
      hosts:
        192.16.35.11:
    agent:
      hosts:
        192.16.35.12:
        192.16.35.13:
```

If multiple hosts are in the server group the playbook will automatically setup k3s in HA mode with embedded etcd.
An odd number of server nodes is required (3,5,7). Read the [official documentation](https://docs.k3s.io/datastore/ha-embedded) for more information.

Start provisioning of the cluster using the following command:

```bash
ansible-playbook deploy.yml -i inventory.yml
```

## Kubeconfig

After successful bringup, the kubeconfig of the cluster is copied to the control node  and merged with `~/.kube/config` under the `k3s-ansible` context.
Assuming you have [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl) installed, you can confirm access to your **Kubernetes** cluster with the following:

```bash
kubectl config use-context k3s-ansible
kubectl get nodes
```

If you wish for your kubeconfig to be copied elsewhere and not merged, you can set the `kubeconfig` variable in `inventory.yml` to the desired path.


## Need More Features?

This project is intended to provide a "vanilla" K3s install. If you need more features, such as:
- Private Registry
- Advanced Storage (Longhorn, Ceph, etc)
- External Database
- External Load Balancer or VIP
- Alternative CNIs

See these other projects:
- https://github.com/PyratLabs/ansible-role-k3s
- https://github.com/techno-tim/k3s-ansible
- https://github.com/jon-stumpf/k3s-ansible
- https://github.com/alexellis/k3sup
- https://github.com/axivo/k3s-cluster
- https://github.com/k3s-io/k3s-ansible