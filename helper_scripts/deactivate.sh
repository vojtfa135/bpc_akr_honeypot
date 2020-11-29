#!/bin/bash

USER=$1

source /home/${USER}/venv/bin/activate
opencanaryd --stop
deactivate
