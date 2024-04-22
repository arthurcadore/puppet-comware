# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use the official PostgreSQL image as base:
FROM voxpupuli/container-puppetserver:8.4.0-latest

# Install dependecies for H3C puppet library 
RUN puppet module install puppetlabs-netdev_stdlib --version 0.10.0
RUN puppet module install puppetlabs-netdev_stdlib --version 0.11.0
RUN puppet module install puppetlabs-netdev_stdlib --version 0.12.0
RUN puppet module install puppetlabs-netdev_stdlib --version 0.13.0
RUN puppet module install puppetlabs-netdev_stdlib --version 0.14.0
RUN puppet module install puppetlabs-netdev_stdlib --version 0.14.1
RUN puppet module install puppetlabs-netdev_stdlib --version 0.15.0

# Install puppet library: 

RUN puppet module install h3c-netdev_stdlib --version 0.1.1 --force