# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use the base image "capacita-puppet":
FROM arthurcadore/capacita-puppet:8.6.0

# Copy the "startup.sh" script from the local "./docker/" directory to the container.
COPY app/startup.sh /usr/local/bin/startup.sh

RUN mkdir -p /etc/puppet/modules/custom/manifests/

# Give executable permissions to the "startup.sh" script to execute.
RUN chmod +x /usr/local/bin/startup.sh

# Starts the container by running the startup.sh script.
CMD ["/usr/local/bin/startup.sh"]

