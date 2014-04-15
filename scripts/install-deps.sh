#!/bin/bash
createrepo /opt/scm/lib
ln -s /opt/scm/etc/dockerdeps.repo /etc/yum.repos.d/dockerdeps.repo
