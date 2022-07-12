#!/bin/bash

sudo apt update
apt list --installed | grep apache2
dpkg -- get--selections | grep apache2
sudo apt -get install apache2
sudo systemctl status service apache2
sudo systemctl enable apache2
systemctl list-unit-files --state=enables | grep apache2
ps -ef | grep apache2
myname=meghana
timestamp=$(date '+%d%m%y-%H%M%S')
cd /var/log/apache2/
ls
tar -cvf $ {myname}-httpd-logs-$ {timestamp}.tar *.log
mv meghana-httpd-logs-12072022-*.tar /tmp
sudo apt update
sudo apt intall awscli -y
s3_bucket=meghana-devops
aws s3 \cp /tmp/$ {myname}-httpd-logs-$ {timestamp}.tar \
s3://$ {s3_bucket}/$ {myname}-httpd-logs-$ {timestamp}.tar
