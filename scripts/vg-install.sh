#!/bin/bash

sudo su

#Install the rpms over here
yum install -y /vagrant/dist/shr-scm-repo-0.1-1.noarch.rpm
yum install -y /vagrant/dist/shr-scm-deps-0.1-1.noarch.rpm
yum install -y /vagrant/dist/shr-scm-install-0.1-1.noarch.rpm
