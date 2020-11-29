#!/bin/bash

# scan for FTP open port
nmap -p 21 127.0.0.1

# scan for SSH open port
nmap -p 22 127.0.0.1
