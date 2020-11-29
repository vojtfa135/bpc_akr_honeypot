#!/bin/bash

sudo ansible-playbook playbooks/install_honeypot.yml

sudo ansible-playbook playbooks/start_honeypot.yml --ask-vault-pass
