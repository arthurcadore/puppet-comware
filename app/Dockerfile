# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use the base image "ubuntu:20.04":
FROM ubuntu:20.04

# Installing wget and nc packages; 
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    curl \
    netcat \
    libgcc-dev \
    libssl-dev \
    make \
    build-essential \ 
    && rm -rf /var/lib/apt/lists/*


# test configuration: 
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu/ focal main"

RUN apt-get update && apt-get install -y libc6-2.31-0ubuntu3 \
    libc6-dev-2.31-0ubuntu3

# Collect repository library from puppetlabs;
RUN wget https://apt.puppetlabs.com/puppet7-release-focal.deb 

# Install puppet7-release-focal.deb;
RUN dpkg -i puppet7-release-focal.deb

# Update repository and install puppet-server;
RUN apt-get update && apt-get install -y \
    puppetserver \
    && rm -rf /var/lib/apt/lists/*

# Copy the "startup.sh" script from the local "./docker/" directory to the container.
COPY app/startup.sh /usr/local/bin/startup.sh

# Give executable permissions to the "startup.sh" script to execute.
RUN chmod +x /usr/local/bin/startup.sh

# Starts the container by running the startup.sh script.
CMD ["/usr/local/bin/startup.sh"]

