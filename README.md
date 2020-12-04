# Ansible Automation For OpenCanary Honeypot Deployment | BPC-AKR project 2020

## Prerequisites
* Kali Linux 2020.3, there's a problem with the new 2020.4 -> broken repos for Ansible
* Ansible

## How to run
### 1) Set up vars and secrets
Before running anything, you have to create your own user.yml and mail_secret.yml config files. Don't worry, you don't have to create anything on your own, in order to generate these files, you can use the script called *set_up_vars.sh* that is located in the root directory of this repository. </br>
#### How to use the *set_up_vars.sh* script
This script requires 3 arguments - the name of your gmail account, password to your gmail account and an email account that the alert mails should be sent to. </br>
Please keep in mind, that it is crucial to enter those variables in the exact order as they were stated in the previous sentence. </br>
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
### 2) Service vars
By default these services are enabled and supported by this repository: ssh, ftp, http, telnet. If you desire to deploy different services, edit the vars/services.yml file to your liking. Just pay attenttion to the OpenCanary documentation because some of the services require a special setup which this repository isn't supporting yet. </br>
```yaml
enable_ftp: "true"
enable_ssh: "true"
enable_http: "true"
enable_telnet: "true"
enable_httpproxy: "false"
enable_portscan: "false"
enable_mysql: "false"
enable_redis: "false"
enable_rdp: "false"
enable_sip: "false"
enable_snmp: "false"
enable_ntp: "false"
enable_tftp: "false"
enable_mssql: "false"
enable_vnc: "false"
enable_git: "false"
```
### 3) Deploy OpenCanary honeypot
To do that make sure to be in the root directory of this repository and simply run the following command: </br>
```shell
./main.sh
```
