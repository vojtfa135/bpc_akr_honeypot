#!/bin/bash

USER="honey"

source /home/${USER}/venv/bin/activate
opencanaryd --stop
deactivate
