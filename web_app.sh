#!/bin/bash
#web app shell script
#authore:vinay s s
#date:15-03-2025
##################################


sudo yum  update
sudo yum -y install httpd
sudo echo "hi,welcome to the new world" > /var/www/html/index.html
sudo chmod 777 index.html
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
