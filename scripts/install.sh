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

#install pull the centos base image
docker pull centos

#install ansible
cd /vagrant/dockerfiles
docker build -t ansible .
