#!/bin/bash

#sudo
sudo su

#install docker
rpm -ivh /vagrant/lib/xz.rpm
rpm -ivh /vagrant/lib/bridge-utils.rpm
rpm -ivh /vagrant/lib/epel.rpm
rpm -ivh /vagrant/lib/remi.rpm
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
cd /vagrant/dockerfiles
docker build -t ansible .
