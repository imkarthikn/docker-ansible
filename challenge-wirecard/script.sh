#!/bin/bash
yum install ansible git wget -y
yum install ansible elinks vim -y
sudo setenforce 0
yum install -y yum-utils vim telnet git wget
yum install -y yum-utils vim telnet git wget
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install ./epel-release-latest-7.noarch.rpm -y
sudo yum update -y
sudo yum install -y device-mapper-persistent-data lvm2
sudo yum-config-manager --enable rhel-7-server-extras-rpms
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum -y install docker-ce python-pip ansible*
sudo systemctl start docker
sudo systemctl enable docker
sudo /bin/pip install --upgrade pip
sudo /bin/pip install docker-compose
sudo cd /usr/local/src && git clone https://bitbucket.org/imkarthikn_kk/challenge.git
