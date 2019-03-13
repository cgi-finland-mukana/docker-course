# Ansible

## What is Ansible?

Ansible is an open-source software provisioning, configuration management, and application deployment tool.[2] It runs on many Unix-like systems, and can configure both Unix-like systems as well as Microsoft Windows. It includes its own declarative language to describe system configuration.

It was written by Michael DeHaan and acquired by Red Hat in 2015. Unlike competing products, Ansible is agentless - temporarily connecting remotely via SSH or remote PowerShell to do its tasks.

## Install ansible

You can install ansible from linux repositories and use it from your command line.

More on installing Ansible: 


## Running ansible

Set up your host addressess in hosts file of the playbooks/ folder. Then run your playbooks.

hosts file example:

```bash

[swarm]
10.0.0.1 # dockerhost1
10.0.0.2 # dockerhost2
10.0.0.3 # dockerhost3


[dockermanagers]
10.0.0.1 # dockerhost1
10.0.0.2 # dockerhost2

[dockerworkers]
10.0.0.3 # dockerhost3

```


Example Ansible command:

```bash
ansible-playbook -i playbooks/hosts -k -K -u <username> playbooks/<playbook.yml>
```