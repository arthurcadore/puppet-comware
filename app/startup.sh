#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Initializing puppetServer
echo "Initializing puppetServer"
/opt/puppetlabs/bin/puppetserver start &

echo "verifing puppetServer status"

# Function to check if the port is open
check_port() {
    nc -z localhost 8140
    return $?
}

# Loop to check if the port is open
while true; do
    check_port
    result=$?
    if [ $result -eq 0 ]; then
        echo "Porta 8140 está aberta!"
        break
    else
        echo "Porta 8140 está fechada. Tentando novamente em 5 segundos..."
        sleep 5
    fi
done

# print the netstat ports: 
netstat -alt

# Keep the script running by tailing /dev/null
tail -f /dev/null