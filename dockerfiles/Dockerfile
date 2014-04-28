FROM ubuntu

MAINTAINER Balaji Narain <balajin@thoughtworks.com>

#install ansible
RUN apt-get install -y ansible
#Configure hosts
ADD hosts /etc/ansible/hosts
#Install git
RUN apt-get install -y git
#checkout playbooks repo
RUN /usr/bin/git clone https://github.com/SharedHealth/FreeSHR-Playbooks.git /playbooks
