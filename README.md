# Ansible Automation For OpenCanary Honeypot Deployment | BPC-AKR project 2020

## Prerequisites
* Kali Linux 2020.3, there's problem with the new 2020.4 -> broken repos for Ansible
* Ansible

## How to run
Before running anything, please go to vars/ directory and open the user.yml file. Then change the user variable according to the user you're using on your system.  You should also change the mail_secret.yml file to your specific secrets.  This file in particular contains 3 important variables for this automation to work - mail_usr, mail_passwd and mail_to.  You can use ansible-vault to encrypt your own secret file as well.  To deploy an OpenCanary instance on your Kali Linux machine, simply run ./main.sh.
While running this script you'll be prompted for your sudo password and also for the Vault password.
