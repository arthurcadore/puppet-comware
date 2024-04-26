#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Initializing puppetServer
echo "Initializing puppetServer"
/opt/puppetlabs/bin/puppetserver start &

echo "verifing puppetServer status"
# print the netstat ports: 
netstat -alt

# Keep the script running by tailing /dev/null
tail -f /dev/null