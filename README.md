Playbooks
=========

[![Build Status](https://travis-ci.org/renanivo/playbooks.svg)](https://travis-ci.org/renanivo/playbooks)

The ansible playbooks that I use.

Install
-------

1. Install XCode Command Line Tools
    ```bash
    xcode-select --install
    ```
2. [Install Homebrew](https://brew.sh/)
3. Install ansible in a virtualenv
    ```bash
    python3 -m venv ansible
    source ansible/bin/activate
    pip install ansible
    ```

Run
---

### workstation
```bash
cp group_vars/workstation.example group_vars/workstation
# fill your preferences in group_vars/workstation
ansible-playbook workstation.yml --ask-become-pass -i hosts
```
