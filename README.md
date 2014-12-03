Playbooks
=========

The ansible playbooks that I use.

Install the Last Version of Ansible
-----------------------------------

```bash
git clone git://github.com/ansible/ansible.git /usr/local/ansible
sh -c 'source /usr/local/ansible/hacking/env-setup'
```

Run
---

### workstation
```bash
ansible-playbook workstation.yml --ask-sudo-pass
```
