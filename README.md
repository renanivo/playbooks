Playbooks
=========

[![Build Status](https://travis-ci.org/renanivo/playbooks.svg)](https://travis-ci.org/renanivo/playbooks)

The ansible playbooks that I use.

Install Ansible
---------------

```bash
pip install ansible
```

Run
---

### workstation
```bash
cp group_vars/workstation.example group_vars/workstation
# fill your preferences in group_vars/workstation
ansible-playbook workstation.yml --ask-sudo-pass
```
