Playbooks
=========

[![Build Status](https://travis-ci.org/renanivo/playbooks.svg)](https://travis-ci.org/renanivo/playbooks)

The ansible playbooks that I use.

Install Ansible
---------------

```bash
pip install ansible
```
Playbook Example
----------------

```
---
- hosts: local
  tasks: 
    - name: Upgrade all packages to the latest version
      apt:  
        update_cache: yes
        upgrade: yes
    - name: Remove useless packages from the cache
      apt:
        autoclean: yes
    - name: Remove dependencies that are no longer required
      apt:
        autoremove: yes
...
```

Run
---

### workstation
```bash
cp group_vars/workstation.example group_vars/workstation
# fill your preferences in group_vars/workstation
ansible-playbook workstation.yml --ask-become-pass
```
