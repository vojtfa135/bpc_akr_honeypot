#!/bin/bash

ip=$1
ports=(21 22 25 53 80 110 123 143 443 465 631 993 995)

# scan for commonly open ports
for port in ${ports[@]};
  do
    nmap -p $port ${ip}
done
