# Ansible Automation For OpenCanary Honeypot Deployment | BPC-AKR project 2020

## Prerequisites
* Kali Linux 2020.3, there's a problem with the new 2020.4 -> broken repos for Ansible
* Ansible

## How to run
### 1) Set up vars and secrets
Before running anything, you have to create your own user.yml and mail_secret.yml config files. Don't worry, you don't have to create anything on your own, in order to generate these files, you can use the script called *set_up_vars.sh* that is located in the root directory of this repository. </br>
#### How to use the *set_up_vars.sh* script
This script requires 3 arguments - the name of your gmail account, password to your gmail account and an email account that the alert mails should be sent to. </br>
This is how you call the script: </br>
```shell
./set_up_vars.sh example@gmail.com example_passwd to@gmail.com
```
After that you are prompted to give a password for Ansible Vault encryption of the mail_secret.yml file. </br>
```shell
New Vault password: 
```
And finally just re-enter your chosen Ansible Vault password. </br>
```shell
Confirm New Vault password: 
```
### 2) Deploy OpenCanary honeypot
To do that simply follow this picture: </br>
```shell
./main.sh
```
