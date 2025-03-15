#!/bin/bash

#####################
# authore:vinay S S
# date : 15-03-2025
#
# jenkins install package for redhat base
#
# ###########################


sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum -y install java-17
sudo yum -y install jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
hostname jenkins-server
