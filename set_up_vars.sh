#!/bin/bash

MAIL_USER=$1
MAIL_PASSWD=$2
MAIL_TO=$3
VAULT_PASSWD=$4

USER=$(python3 -c "import getpass; print(getpass.getuser())")

cat > vars/user.yml <<EOF
user: ${USER}
venv_path: "/home/{{ user }}/venv"
EOF

cat > secrets/mail_secret.yml <<EOF
mail_usr: ${MAIL_USER}
mail_passwd: ${MAIL_PASSWD}
mail_to: ${MAIL_TO}
EOF

ansible-vault encrypt secrets/mail_secret.yml
