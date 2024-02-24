# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use the base image "ubuntu:20.04":
FROM ubuntu:20.04

# Set the environment variable "DEBIAN_FRONTEND" to "noninteractive" to avoid any prompts during the installation of packages.
ENV DEBIAN_FRONTEND=noninteractive

# Installing wget and nc packages; 
RUN apt-get update && apt-get install -y --no-install-recommends \
    software-properties-common \
    wget \
    curl \
    netcat \
    make \
    build-essential \ 
    && rm -rf /var/lib/apt/lists/*

# Add repository for libc6;
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu/ focal main"
RUN apt-get update && apt-get install -y \
    libc6 \
    libc6-dev

# Collect repository library from puppetlabs;
RUN wget https://apt.puppetlabs.com/puppet8-release-focal.deb 

# Install puppet8-release-focal.deb;
RUN dpkg -i puppet8-release-jammy.deb

# Update repository and install puppet-server;
RUN apt-get update && apt-get install -y \
    puppet-agent \
    && rm -rf /var/lib/apt/lists/*

# Copy the "startupAgent.sh" script from the local "./docker/" directory to the container.
COPY puppetAgent/startup.sh /usr/local/bin/startup.sh

# Give executable permissions to the "startupAgent.sh" script to execute.
RUN chmod +x /usr/local/bin/startup.sh

# Starts the container by running the startupAgent.sh script.
CMD ["/usr/local/bin/startup.sh"]