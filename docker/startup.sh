#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Initializing puppetServer
echo "Initializing puppetServer"
service puppetserver start

# Verifying puppetServer status
echo "Verifying puppetServer status"
service puppetserver status

# Keep the script running by tailing /dev/null
tail -f /dev/null