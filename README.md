# Ansible Configuration files repository
---
## Description
This repo contains the basic file structure for Ansible.

# Folder hierarchy
* bin

  For auxiliary scripts.

  * queryredis.py

  Query the redis backend for information extracted by ansible from managed hosts (must be enabled in /etc/ansible.ansible.cfg).

  * role-skell.sh

  Creates the default folders for an intended new role (under playbooks/roles).

  * mkpass.py
  
  Creates password strings as described in 'http://docs.ansible.com/ansible/faq.html#how-do-i-generate-crypted-passwords-for-the-user-module'.

* environment

  * doc
    
    For testing with docker. You'll need one container of the 'mgood/resolvable' image (for DNS registration on the host to work) plus the images
you'll want to test enumerated and grouped in the 'inventory' file.
  * des

    For machines in 'desenvolvimento'.
  * hml

    For machines in 'homologação'.
  * prd

    For machines in 'produção'.
  * new

    For new machines (ones that are in 'nursery').
