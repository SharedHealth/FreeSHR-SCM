#!/bin/bash

sudo su

#Install the rpms over here
rpm -ivh /vagrant/dist/shr-scm-deps-0.1-1.noarch.rpm
yum install -y /vagrant/dist/shr-scm-install-0.1-1.noarch.rpm
