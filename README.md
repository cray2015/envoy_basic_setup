# What this Repo covers

## Setup of the following
- HTTP endpoint
- HTTPs endpoint
- gzip requests
- Redirect HTTP to HTTPs
- admin console

## Prerequisites
- Linux VM and OS capable of running docker - Using Ubuntu 20.04 for this demo
- SSH capabilities on the VM (or if you prefer GUI, that is also fine)
- Permission to run scripts and apps on the VM
- SSL certificate for using HTTPs endpoint - 

        $ openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365

## Setup
- Docker setup - follow the below link to install docker on your system, as this is the best guide to install Docker and its dependency in one go in Ubuntu.
https://docs.docker.com/engine/install/ubuntu/
- Install docker-compose package  - we will be running this under a multi-container setup and compose makes it far easy to maintain containers and makes network communication easier.
 - Run the command - 
        
        $ sudo apt install docker-compose -y

## Note

This is more like a sandbox setup. The actual documentation should be refered before using this config in production.
