-- Main composition file for PostgreSQL DB
-- Author: Arthur Cadore M. Barcella
-- Github: arthurcadore
-- Capacitação Redes - PV Intelbras


-- Create a new user with the password specified:
CREATE USER puppetdb WITH PASSWORD 'yourpassword';

-- Create database 'puppetdb' with specified collation and owner
CREATE DATABASE puppetdb LC_COLLATE='en_US.UTF8' LC_CTYPE='en_US.UTF8' TEMPLATE=template0;

-- Alter ownership of the 'puppetdb' database to youruser:
ALTER DATABASE puppetdb OWNER TO puppetdb;

-- Allow your user to connect from any host
ALTER USER puppetdb WITH SUPERUSER;