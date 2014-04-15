#!/bin/bash

sudo su

#Create sym links
ln -s /vagrant /opt/scm

#invoke installation
sh /opt/scm/scripts/install.sh
