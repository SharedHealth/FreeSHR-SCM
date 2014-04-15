FROM centos

MAINTAINER Balaji Narain <balajin@thoughtworks.com>

# setup network
# reference from https://github.com/dotcloud/docker/issues/1240#issuecomment-21807183
RUN echo "NETWORKING=yes" > /etc/sysconfig/network

# setup yum repository for epel.
RUN yum -y install http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y clean all
RUN yum -y check
RUN yum -y erase apf
RUN yum -y upgrade

#Install ssh
RUN yum -y install openssh-server openssh-clients
#Install pip
RUN yum -y install python-pip
#install ansible
RUN yum install -y ansible
#Configure hosts
ADD hosts /etc/ansible/hosts
#Install git
RUN yum install -y git
#checkout playbooks repo
RUN /usr/bin/git clone https://github.com/SharedHealth/FreeSHR-Playbooks.git /playbooks
