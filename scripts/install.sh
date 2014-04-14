#!/bin/bash

#install docker
rpm -ivh /vagrant/lib/xz.rpm
rpm -ivh /vagrant/lib/bridge-utils.rpm
rpm -ivh /vagrant/lib/epel.rpm
rpm -ivh /vagrant/lib/remi.rpm
yum install -y docker-io

#install pull the centos base image
docker pull centos

#install ansible
docker build - < /vagrant/dockerfiles/DockerFile

