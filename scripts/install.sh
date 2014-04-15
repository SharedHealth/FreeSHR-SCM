#!/bin/bash

#CWD 
cd /opt/scm/dockerfiles

#install docker
rpm -ivh /opt/scm/lib/xz.rpm
rpm -ivh /opt/scm/lib/bridge-utils.rpm
rpm -ivh /opt/scm/lib/epel.rpm
rpm -ivh /opt/scm/lib/remi.rpm
yum install -y docker-io

#start the docker service
service docker start

#Wait for the service to be started
while [ ! -e /var/run/docker.sock ]
do
  sleep 2
done

echo "Pulling centos"

#install pull the centos base image
docker pull centos

#install ansible
docker build -t ansible .
