# Distribuited Puppet Appliance with Docker

This repository contains all the components required to host a Puppet appliance using Docker. It provides scripts and configurations to set up the environment, manage the application's containers, and access both the application and its database.

---
Prerequisites, before you begin, ensure you have the following packages installed on your system:

- Git version 2.34.1
- Docker version 24.0.6, build ed223bc
- Docker Compose version v2.21.0

---
### Getting Started:

First, copy the line below and paste on your prompt to clone the repository:

```
git clone https://github.com/arthurcadore/capacita-puppet
```
If you don't have installed the package Git yet, do it before try to clone the respository!

Navigate to the project directory:

```
cd ./capacita-puppet
```

If you don't have Docker (and Docker-compose) installed on your system yet, it can be installed by run the following commands (Script for Ubuntu 22.04): 

```
./docker/installDocker.sh
```

**If you had to install docker, please remember to reboot you machine to grant user privileges for docker application.** 

In sequence, configure the environment archives for the application containers, you can do this by edditing the files in `/config/` directory: 

```
auth.conf -> Configure ACL rules to access puppetMaster Node REST API. By default, the configuration is allow any operation by puppet Client. 

pg_hba.conf -> Configure parameters for access PostgreSQL database externally, and permissions to change database data. By default, the configuration is allow any operation by anybody. 
```
In sequence, configure `.env` file to your environment especifications: 

```
POSTGRES_USER -> PostgreSQL user variable. 
POSTGRES_PASSWORD = PostgreSQL password variable. 
POSTGRES_DB = PostgreSQL database variable
SECRET_KEY = Key used to connect PuppetDB backend container into PuppetBoard application container. 
```

### Start Application's Container: 
Run the command below to start docker-compose file: 

```
docker compose up & 
```

The "&" character creates a process id for the command inputed in, with means that the container will not stop when you close the terminal. 

---

### Access Application:

Once the container is up and running, your Puppet Agent Nodes can access the application at Host's `TCP/8140`, as defined in the section `puppetserver` of docker-compose.yml file. For web-gui application access, you can use `TCP/8088`, as defined in the section `puppetBoard` of docker-compose.yml file. 

By default, the CLI access to the container is closed, so nobody can access it externally, only the application web Page.  To access the application command line, first loggin into host device using SSH or another method, then use the command below: 

```
docker exec -it puppetserver bash
```

The command above will start a bash process in the application container, that with the -it (interative) flag will display the prompt to user. 

To exit from container's command line interface, use the command `exit`.  

--- 

### Access Application database:

By default, docker-compose.yml comes with a port mapping to expose the PostgreSQL port from database's container externally. The default port to PostgreSQL DB (which is the same that is mapped externally by default) is `5432`.


So, to access the application database you can use any SQL client software, as [HeidiSQL](https://www.heidisql.com/) for example, the credentials are configured in the section `database` of docker-compose.yaml file. 

--- 
### Stop Container: 
To stop all running containers, you can use the following command:

```
docker-compose down
```

--- 



