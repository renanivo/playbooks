Playbooks
=========

The ansible playbooks that I use.

Install
-------

```bash
sudo easy_install ansible
```

Configuration
-------------

Create your [ansible hosts file](http://www.ansibleworks.com/docs/intro_inventory.html) with the groups you want to manage -- Each playbook in the main folder has the name of a group. So, if you want to make your local computer a workstation, execute:

```bash
mkdir /etc/ansible
echo -e "[workstation]\nlocalhost ansible_connection=local" > /etc/ansible/hosts
```


Run
---

### workstation
```bash
ansible-playbook workstation.yml --ask-sudo-pass
```
