# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use the base image "ubuntu:20.04":
FROM ubuntu:20.04

# Installing wget; 
RUN apt-get update && apt-get install -y \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Collect repository library from puppetlabs;
RUN wget https://apt.puppetlabs.com/puppet7-release-focal.deb 

# Install puppet7-release-focal.deb;
RUN dpkg -i puppet7-release-focal.deb

# Update repository and install puppet-server;
RUN apt-get update && apt-get install -y \
    puppetserver \
    && rm -rf /var/lib/apt/lists/*
    
# Starts the container by running the startup.sh script.
CMD ["/usr/local/bin/startup.sh"]

