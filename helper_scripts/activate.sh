#!/bin/bash

VENV_PATH=$1

source ${VENV_PATH}/bin/activate
opencanaryd --start
